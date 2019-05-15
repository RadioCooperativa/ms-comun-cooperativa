// Versión 1.0.0
require('dotenv').config({ path: 'env.env' });

const corsMiddleware = require('restify-cors-middleware')

const moment = require('moment');

const joi = require('joi');

const validator = require('./common/validator');
const handler = require('./common/errorHandler');

const API_MIN_VERSION = '1.0.0';
const API_CURRENT_VERSION = process.env.APPLICATION_ENV;

const restify = require('restify');
const versioning = require('restify-url-semver');

const server = restify.createServer({
  name : `Automotriz Api v:${API_CURRENT_VERSION}`,
  acceptable: 'application/json',
  versions: [API_MIN_VERSION, API_CURRENT_VERSION],
  version: API_CURRENT_VERSION,
  rejectUnauthorized: true,
  ignoreTrailingSlash: true,
  handleUncaughtExceptions: true,
  formatters: { 'application/json': require('./common/jsend') }
});

server.pre(restify.pre.sanitizePath());
server.pre(versioning({ prefix: '/' }));

server.use(restify.plugins.gzipResponse());
server.use(restify.plugins.acceptParser(server.acceptable));
server.use(restify.plugins.queryParser({ mapParams: true }));
server.use(restify.plugins.bodyParser({ mapParams: true }));

server.use(restify.plugins.throttle({
  burst: 100,
  rate: 50,
  ip: true
}));


// Setup validators
server.use(validator.paramValidation(joi));
handler.register(server);

// Setup route Handling
const concesionariaRouters = require('./routers/v1/concesionaria-routers');
const sucursalRouters = require('./routers/v1/sucursal-routers');
const marcaRouters = require('./routers/v1/marca-routers');
const as_cma_coRouters = require('./routers/v1/asc-marca-concesionaria-routers');

concesionariaRouters.register(server);
sucursalRouters.register(server);
marcaRouters.register(server);
as_cma_coRouters.register(server);



const cors = corsMiddleware({
  preflightMaxAge: 5,
  origins: ['http://localhost:5001'],
  allowHeaders: ['Authorization'],
  allowMethods: ['*'],
  exposeHeaders: ['API-Token-Expiry']
});

server.pre(cors.preflight);
server.use(cors.actual);

const port = process.env.API_PORT || 3002;

server.listen(port, () => {
  console.log({ name: "Server startup", properties: { version: API_CURRENT_VERSION, date: moment.utc().format() } });
});
