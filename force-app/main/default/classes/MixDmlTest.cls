@isTest
public class MixDmlTest {

    
    
    @testSetup
    static void setupACC (){
        
        
        List <Account> acc =  new List<Account >();
     	List<Contact> cc = new List <Contact>();
        
        for (Integer i = 0 ; i <200 ; i++){
            
            acc.add(new Account (Name = 'testing'+i));
           
        }
        insert acc ; 
        
        
   
        for ( Account a : acc){
            
            cc.add(new Contact (LastName = 'testing',accountId = a.Id));
            
        }
        insert cc;
        
   
}
    @isTest
   public  static void Test(){
        
      List<Account> acc = [SELECT id FROM Account];
      List <id> accid = New List<id>();
      for (Account a : acc ){
          
            accid.add(a.Id);
        }
        
        Test.startTest();
        
        MixDml.countContacts(accid);
        MixDml.insertUser ();
        
        Test.stopTest();
        
        
     	List<Account>  a = [SELECT id ,Number_Of_Contacts__c FROM Account WHERE Name LIKE '%Testing%' ];
        
        for (Account aa : a){
            
      	 System.assertEquals(1 ,aa.Number_Of_Contacts__c);

        }
        
       
    }
}