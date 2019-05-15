'use strict';
const joi = require('joi');

module.exports = joi.object().keys({
	id_marca: joi.number().integer().required(),
    nombre_marca:joi.string().max(50).required(),
	descripcion_marca:joi.string().max(100).default(null).allow(null)
});