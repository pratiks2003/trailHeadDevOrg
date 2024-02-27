public with sharing class Q5LeadConveter {
  


public static void convertLead (List<Lead> l){
    
List<Account> acc = new List<account>();
List<Contact> con = new List<Contact>();
List<Opportunity> opp = new List<Opportunity>();
Date cDate = Date.newInstance(2024,3,22);

for (Lead li : l){

if (li.Status == 'Closed - Converted'){


acc.add(new Account(Name = li.Name));
con.add(new Contact(LastName = li.Name));
opp.add(new Opportunity(Name= li.Name,StageName='Prospecting',CloseDate=cDate));

}


}

insert acc ;
insert con ;
insert opp ;

}


}