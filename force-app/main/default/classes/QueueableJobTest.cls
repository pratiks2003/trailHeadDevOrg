@isTest
public class QueueableJobTest {

  
    @isTest
    public static void test(){
        
         Test.startTest();
    
   		 Id jobid =  System.enqueueJob(new QueueableJob());
        
   		 Test.stopTest();
        
        AsyncApexJOb a = [SELECT id , Status , JobitemsProcessed , TotalJobItems , NumberofErrors  FROM AsyncApexJob WHERE id = :jobid];
        
        System.debug(a);
        
    }
   
    
    
    
    
    
}