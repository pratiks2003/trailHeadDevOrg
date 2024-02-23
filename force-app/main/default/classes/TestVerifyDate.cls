@isTest
public class TestVerifyDate {

 @isTest
 static void TestDate(){
        
        date date1 = date.newInstance(2022, 9, 30);
        
        date date2 = date.newInstance(2022, 10, 2);
        
    Date verify =   VerifyDate.CheckDates( date1,  date2);
        
        System.assertEquals(date2 , verify);
     
        
    }
 
 @isTest
 static void TestDate1(){
        
        date date1 = date.newInstance(2022, 9, 30);
        
        date date2 = date.newInstance(2022, 10, 31);
        
    Date verify =   VerifyDate.CheckDates( date1,  date2);
        
        System.assertEquals(date1 , verify);
     
        
    }
}