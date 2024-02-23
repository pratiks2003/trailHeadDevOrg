global with sharing class AnimalLocator {

    global static String getAnimalNameById(Integer i) {

        Http ht = new Http();

        HttpRequest req = new HttpRequest();

        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
        req.setMethod('GET');

        HttpResponse res = ht.send(req);
        
       
       
        


        Map<String,Object> result =  (Map<String,Object>) JSON.deserializeUntyped(res.getBody());
        system.debug('result ----- > ' +result );
        
        Map<String,Object> animal = (Map<String,Object>) result.get('animal') ;
        System.debug('animal -----> '+animal);
        
        String Name = (String )(animal.get('name')) ;
        System.debug('Name ------> '+Name);
      
        return Name;
        
//String.valueof
   


      

    }
}