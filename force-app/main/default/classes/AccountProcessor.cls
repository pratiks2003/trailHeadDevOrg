public class AccountProcessor {

  @future
    public static void countContacts(List<id> Accountid ){
        
     List<Account> acc =[SELECT id , Number_Of_Contacts__c ,(SELECT id FROM Contacts)FROM Account WHERE id IN :Accountid];
        integer i = 0 ;
        for (Account a : acc){
		
         a.Number_Of_Contacts__c = a.Contacts.size();
           i++;
            system.debug( i );
        }
        
        update acc ; 
        
    }
   @future
    public static void insertUser (){
         Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='COO'];
        User futureUser = new User(firstname = 'Future', lastname = 'User',
            alias = 'future', defaultgroupnotificationfrequency = 'N',
            digestfrequency = 'N', email = 'test@test.org',
            emailencodingkey = 'UTF-8', languagelocalekey='en_US', 
            localesidkey='en_IN', profileid = p.Id, 
            timezonesidkey = 'Asia/Kolkata',
            username = 'futureuser@test.org',
            userpermissionsmarketinguser = false,
            userpermissionsofflineuser = false, userroleid = r.Id);
        insert(futureUser);
    }
}