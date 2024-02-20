public with sharing class DailyLeadProcessor implements Schedulable {
 
public void execute (System.SchedulableContext sc){


    List <Lead> l = [SELECT id  , LeadSource FROM Lead WHERE LeadSource = NULL ];

    List <Lead> lup = new List<Lead>();

    for (lead le : l ){

        le.LeadSource = 'Dreamforce';
        lup.add(le);
    }


    Update lup ;

}




}