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
  
}