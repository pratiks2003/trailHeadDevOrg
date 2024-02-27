public with sharing class Q4ContactEmailUpdate {
    


    Public Static  void updateEmail(List<Contact> lc){

List<Contact> con = new List <Contact>();
        for(Contact c : lc ){

            c.Email = 'update@gamil.com';
            con.add(c);
        }
update con ;


    }
}