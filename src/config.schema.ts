import * as Joi from '@hapi/joi';

export const configValidationSchema = Joi.object({
  DB_URI: Joi.string().required(),
  JWT_SECRET: Joi.string().required(),
});
