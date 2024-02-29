public with sharing class Q36EarlyTestDate {
   

public static String findEarliestProject(){

    List<AggregateResult> pr = [SELECT MIN(Start_Date__c)min , Name FROM Project__c  group by Name limit 1];
    System.debug(pr);

    return (String) pr[0].get('Name');
}
   




}