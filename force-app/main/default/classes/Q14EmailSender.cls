public with sharing class Q14EmailSender {
   
public static void sendEmail(String[] Toadd,String sub,String body){


    Messaging.SingleEmailMessage mail = new  Messaging.SingleEmailMessage();

    mail.setToAddresses(Toadd);
    mail.setPlainTextBody(body);
    mail.setSubject(sub);


    Messaging.SendEmailResult[] mailresult = Messaging.sendEmail( new   Messaging.SingleEmailMessage[]{mail});
    System.debug(mailresult);

    
}
//----------- to run ------------------------------------------------- 
// String[] mailAdd = new String[]{'pratikshinde1239@gmail.com'};
// String subj = 'nothingSub';
// String body = 'body';
// Q14EmailSender.sendEmail(mailAdd,subj,body);

}