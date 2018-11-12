const R = require('request-promise');

const H = require('./output/HandleResponse');

R.get('https://jsonplaceholder.typicode.com/posts/1')
 .then(JSON.parse)
 .then(H.handleResponse)
 .then(console.log);
