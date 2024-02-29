public with sharing class Q15OpportunityReminder implements Schedulable {
 

  public void execute(System.SchedulableContext sc){

    Date today = Date.today().addDays(7);

    List<Opportunity> opp = [SELECT id ,Name ,CloseDate ,Account.Name ,AccountId FROM Opportunity WHERE (StageName != 'Closed Won' OR StageName !='Closed Lost') AND (CloseDate <= :today AND CloseDate >= today)];


  

    List<Messaging.SingleEmailMessage> mailsToSend = new list <Messaging.SingleEmailMessage>();

For(Opportunity o : opp){
    
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    mail.setToAddresses(new String[]{'pratikshinde1239@gmail.com'});
    mail.setSubject('Less than 7 Days Remain For Opportunity ('+o.Name+') getting close');
    mail.setPlainTextBody('Account name :' +o.Name + ' , Account Name :' +o.Account.Name+ ' , Close Date is :'+o.CloseDate);
    mailsToSend.add(mail);
}


    Messaging.SendEmailResult[] results = Messaging.sendEmail(mailsToSend);
    System.debug(mailsToSend);
    System.debug(results);

    }
}


// -------------------- to run ----------------------


// String SchTime =  = ' 0 0 16 * * ? ';

// System.schhedule('dailyOppReminder',SchTime, new Q15OpportunityReminder());
