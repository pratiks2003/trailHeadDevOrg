@isTest
public with sharing class DailyLeadProcessorTest {
   
@TestSetup
static void makeData(){
    
List <lead > l = new list<lead > ();


for ( integer i = 0 ; i <200 ; i++){

    lead le = new Lead ( LastName = 'TrailHeadLead'+i , Company='trailMaster');

    l.add(le);
}

insert l ;
}


@isTest
public static void testing(){

List <Lead> lea = [SELECT id , LeadSource FROM Lead WHERE LastName = null ] ;
String crx = ' 0 0 16 * * ? ';

Test.startTest();

System.schedule('lead source changer', crx , new DailyLeadProcessor());

Test.stopTest();

for (Lead l : lea){

    System.assertEquals('Dreamforce', l.LeadSource);

}
}
}