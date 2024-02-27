@isTest
public with sharing class Q4ContactEmailUpdateTest {
   


@TestSetup
static void makeData(){
    
List<Contact> con = new List<contact>();

    for ( integer i = 0 ; i <100 ; i++){

    con.add(new Contact ( LastName = 'apexquestion'+i));

    }

    insert con ;
}

@istest
static void testing (){
  
    List<Contact> con = [ SELECT id ,Email FROM Contact WHERE LastName LIKE '%apexquestion%' ];

    Q4ContactEmailUpdate.updateEmail(con);

    for(Contact c : con){

        system.assertEquals('update@gamil.com', c.Email);

    }


}
    
}