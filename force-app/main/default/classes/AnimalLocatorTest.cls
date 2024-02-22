@isTest
public with sharing class AnimalLocatorTest {
   
/*
public class  AnimalLocatorMock implements HttpCalloutMock{

  public  HttpResponse respond (HttpRequest req){


    HttpResponse res = new HttpResponse();

    res.setHeader('Content-Type', 'application/json');
    res.setStatusCode(200);
    res.setBody('{"animal":"Bear" , "id":"1"},{"animal":"Didnt work" , "id":"5"}');
    //res.setBody('{"animal":"Didnt work" , "id":"5"}');
    return res ;


  }
}   
*/
@isTest
static void test(){

    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());

    String res = AnimalLocator.getAnimalNameById(1);

    System.debug(res);
    System.assertEquals('Bear', res);

}
/*@isTest
static void negativeTest(){

    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    
    String res1 = AnimalLocator.getAnimalNameById(5);

    System.debug(res1);
    System.assertEquals('Didnt work', res1);

}  */

}