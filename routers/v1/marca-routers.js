'use strict';
var methods = require('../../src/controllers/marca-methods');

module.exports.register = (server) => {
    server.get({
        path: '/marca/',
        version: '1.0.0'
    },
        methods.get
    );

    server.get({
        path: '/marca/:id',
        version: '1.0.0'
    },
    methods.getId
    );

    server.post({
        path: '/marca/',
        version: '1.0.0',
        validation: {
            params: require('../../src/validators/marca/insert')
        },
    },
    methods.insertMarca
    );

    server.put({
        path: '/marca/:id',
        version: '1.0.0',
        validation: {
            params: require('../../src/validators/marca/insert')
        },
    },
    methods.updateMarca
    );

    server.del({
        path: '/marca/:id',
        version: '1.0.0'
    },
    methods.deleteMarca
    );
}