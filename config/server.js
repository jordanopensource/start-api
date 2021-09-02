module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env('BASE_URL'),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '8befe19536e68ad005903db1bb66acdc'),
    },
  },
});
