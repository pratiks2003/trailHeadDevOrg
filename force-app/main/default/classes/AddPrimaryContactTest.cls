@isTest
public with sharing class AddPrimaryContactTest {
   

    @TestSetup
    static void makeData(){
        
   List<Account> ny = new List<Account >();
   List<Account> ca = new List<Account >();
 Contact cny =new Contact ( LastName = 'ContactOfNy') ;
 Contact cca = new Contact ( LastName = 'ContactOfCa') ;

for (Integer i = 0 ; i<50 ; i++) {
    
    Account acc = new Account (Name = 'AccountOfNy'+i,BillingState = 'NY');
    ny.add(acc);
}
for (Integer i = 0 ; i<50 ; i++) {
    
    Account acc = new Account (Name = 'AccountOfCa'+i,BillingState = 'CA');
    ca.add(acc);
}


insert ca ;
insert ny ;
insert cny ;
insert cca ;

    }

    @isTest
    public static void test(){

        Contact cont = [SELECT id , LastName FROM Contact WHERE LastName= 'ContactOfCa'];
        Test.startTest();

        System.enqueueJob(new AddPrimaryContact(cont,'CA'));

        Test.stopTest();

        List<Account> acc = [SELECT id ,  (SELECT id FROM Contacts ) FROM Account WHERE BillingState = 'CA'  ] ;
    
        System.assertEquals(50, acc.size());

       
}

}