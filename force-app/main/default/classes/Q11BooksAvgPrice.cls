public with sharing class Q11BooksAvgPrice {


public static Decimal getAvgBookPrice(){

// List<book__c> allBooks = [ SELECT Price__c FROM book__c];
// integer sum = 0 ;
// integer count = 0 ;

// for (book__c b : allBooks){

// sum += b.Price__c;
// count++;
    
// } 

// return sum/count ;
list<AggregateResult> l = [ SELECT AVG(Price__c)avg FROM book__c ];  //12:14:01:026 USER_DEBUG [1]|DEBUG|(AggregateResult:{expr0=3446.0})

Decimal aveg =(Decimal)  l[0].get('avg');

return aveg;

}


}