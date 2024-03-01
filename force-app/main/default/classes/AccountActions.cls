public with sharing class AccountActions {

public static void modifyRelatedContact(List<Account> Acc){

List<Id> accId = new List<id>();
for( Account a : acc){


accId.add(a.Id);

}


List <Contact> con = [ SELECT id FROM Contact WHERE AccountId IN :accId];


update con ;

}




}