public with sharing class AnimalLocator {

    public static String getAnimalNameById(Integer i ) {

        Http ht = new Http();

        HttpRequest req = new HttpRequest();

        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
        req.setMethod('GET');

        HttpResponse res = ht.send(req);
        String returnName ;
        if( res.getStatusCode()!=200){

        system.debug(' Didnt work');

        }
        else{


        Map<String,Object> result =  (Map<String,Object>) JSON.deserializeUntyped(res.getBody());

        String Name = (String) result.get('animal') ;

        returnName = Name;

        }


        return returnName;

    }
}