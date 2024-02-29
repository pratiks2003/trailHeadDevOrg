public with sharing class Q37StausSpecificContact {



public static List<List<Contact>> specificContactByStatus(List <Contact> con){

    List<Contact> web = new List<Contact>(); 
    List<Contact> purList = new List<Contact>(); 
    List<Contact> ref = new List<Contact>(); 
    List<Contact> phone = new List<Contact>(); 
    List<Contact> other = new List<Contact>(); 

    List<List<Contact>> filter = new List<List<Contact>>();

for ( Contact c : con){

switch on c.LeadSource {

    when 'Web' {
        
        web.add(c);

    }
    when 'Phone Inquiry' {

        phone.add(c);

    }
    when 'Partner Referral' {

        ref.add(c);

    }
    when 'Purchased List' {

        purList.add(c);

    }
    when else {

        other.add(c);

    }
}
    
}

filter.add(web);
filter.add(purList);
filter.add(ref);
filter.add(phone);
filter.add(other);

return filter ;

}



}