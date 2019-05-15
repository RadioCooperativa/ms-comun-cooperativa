'use strict';
var methods = require('../../src/controllers/asc-marca-concesionaria-methods');

module.exports.register = (server) => {
    server.post({
        path: '/asc-marca-concesionaria/',
        version: '1.0.0',
        // validation: {
        //     params: require('../../src/validators/concesionarias/insert')
        // },
    },
    methods.insertAscMaCo
    );

    server.del({
        path: '/asc-marca-concesionaria/?id_marca&id_concesionaria',
        version: '1.0.0'
    },
    methods.deleteAscMaCo
    );
}