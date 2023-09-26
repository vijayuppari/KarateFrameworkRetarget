function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
   //karate.configure('retry', { count: 4, interval: 2000 });
  var config = {
    env: env,
    createAirlineurl: 'https://api.instantwebtools.net/v1/airlines',
    myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}