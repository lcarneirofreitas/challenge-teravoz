const request = require('request');
const events = require('./events');

module.exports = function emitEvent(webhook, i=0) {
  console.info(`Emitting event `, events[i]);
  request.post({
    url: webhook,
    json: events[i]
  })
  .on('response', (response) => {
    if (response.statusCode == 200) {
      console.log(`INFO: POST status code response is ${response.statusCode}`);
    } else {
      console.warn(`WARN: POST status code response is ${response.statusCode}`);
    }
  })
  .on('error', (err) => {
    console.error('ERROR:', err.message);
  });

  // Sends another burst of events every 5 seconds
  setTimeout(() => {
      let i = 0;
      emitEvent(webhook, i);
      while(i < 1000) {
        console.log("INFO: EmitEvent OK");
        i++
      }    
  }, 10);
}
