@isTest 
public class LeadProcessorTest {

   @testSetup
    static void setup(){
        
        list<Lead> li = new List<Lead>();
        
        for(integer i = 0 ; i<200;i++){
            
            
            
            
            li.add(new Lead( LastName = 'testing'+i, Company = 'trailhead'));
        }
         insert li ;
        
          
    }
    
    @isTest static void testing(){
        
        Test.startTest();
        
        Database.executeBatch( new LeadProcessor());
        
        Test.stopTest();
        
        List<Lead> lii = [SELECT id ,LeadSource FROM Lead WHERE LastName LIKE '%testing%' ];
        
        for(Lead l : lii){
            
            System.assertEquals('Dreamforce',l.LeadSource);
            
        }
        
     
        
    }
    
    
    
    
    
}