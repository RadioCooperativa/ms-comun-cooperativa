'use strict';
var methods = require('../../src/controllers/modelo-methods');

module.exports.register = (server) => {
    server.get({
        path: '/modelo/',
        version: '1.0.0'
    },
        methods.get
    );

    server.get({
        path: '/modelo/:id',
        version: '1.0.0'
    },
    methods.getId
    );

    server.post({
        path: '/modelo/',
        version: '1.0.0',
        // validation: {
        //     params: require('../../src/validators/modelos/insert')
        // },
    },
    methods.insertModelo
    );

    server.put({
        path: '/modelo/:id',
        version: '1.0.0',
        // validation: {
        //     params: require('../../src/validators/modelos/insert')
        // },
    },
    methods.updateModelo
    );

    server.del({
        path: '/modelo/:id',
        version: '1.0.0'
    },
    methods.deleteModelo
    );
}