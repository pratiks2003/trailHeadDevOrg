public with sharing class FutureCallout {
    
//11:20:24:018 EXCEPTION_THROWN [13]|System.CalloutException: Callout not allowed from this future method. 
//Please enable callout by annotating the future method. eg: @Future(callout=true)  

@future(callout=true)
public static void FutureC(){

http http = new http();
httpRequest request = new httprequest();

request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
request.setHeader('Content-Type', 'application/json;charset=UTF-8');
request.setMethod('GET');

HttpResponse res = http.send(request);

System.debug(res.getBody());
    
}



}