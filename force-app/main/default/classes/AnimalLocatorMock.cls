public virtual class  AnimalLocatorMock implements HttpCalloutMock{

  public  HttpResponse respond (HttpRequest req){


    HttpResponse res = new HttpResponse();

    res.setHeader('Content-Type', 'application/json');
    res.setStatusCode(200);
    res.setBody('{"animal":{"name" : "Bull" , "id": 1}}');
    //res.setBody('{"animal":"Didnt work" , "id":"5"}');
    return res ;


  }
}