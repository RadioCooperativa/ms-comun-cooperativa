'use strict';
var methods = require('../../src/controllers/asc-modelo-sucursal-methods');

module.exports.register = (server) => {
    server.post({
        path: '/asc-modelo-concesionaria/',
        version: '1.0.0',
        // validation: {
        //     params: require('../../src/validators/concesionarias/insert')
        // },
    },
    methods.insertAscModSuc
    );

    server.del({
        path: '/asc-modelo-concesionaria/?id_modelo&id_sucursal',
        version: '1.0.0'
    },
    methods.deleteAscModSuc
    );
}