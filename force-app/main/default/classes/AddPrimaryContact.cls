public with sharing class AddPrimaryContact implements Queueable{
 
   private Contact con ;
    private String state ;
 
    public AddPrimaryContact(Contact c  , String s) {

    this.con = c ;
    this.state = s ;

    }


public void execute(System.QueueableContext qc ){

   

    List <Account> acc = [SELECT id , BillingState ,Name ,(SELECT ID FROM Contacts)  FROM Account WHERE BillingState = :this.state LIMIT 200 ];
    List <Contact> conAdd = new List<Contact> ();

    
    for (Account a : acc){

        Contact cont = con.clone();
        cont.AccountId = a.Id ; 
        
        conAdd.add(cont);
        
    }

    insert conAdd;  


    }
}