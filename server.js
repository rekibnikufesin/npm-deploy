var http = require('http');

var PORT=3000; 

function handleRequest(request, response){
    response.end('Hello World!');
}

var server = http.createServer(function(request, response){
    if(request.url === '/'){
        console.log("Request received. Greeting user!");
        response.writeHead(200, {"Content-Type": "text/html"});
        response.end("Hello <strong>World</strong>");
  }
});

server.listen(PORT, function(){
    console.log("Server listening on: http://localhost:%s", PORT);
});