public with sharing class Q41CaseCommentCount {

   public static Map<Id,Integer> countCaseComments(){


// List<Case> caseList = [ SELECT id , Comments FROM Case ];

// List<FeedItem> feed = [ SELECT id FROM FeedItem WHERE ParentId  IN :caseList.id ];

// Map<Id,Integer> res = new Map<Id,Integer>();

// for ( Case c : caseList){


   
//     List<FeedItem> feedCount =  [ SELECT id FROM FeedItem WHERE ParentId  = :c.id ];
    

//     res.put(c.Id, feedCount.size());


   
// }
// return res ;

//--------------------------------------------------------------------------------------------------------------------------
// Map<Id, Integer> res = new Map<Id, Integer>();


// for (AggregateResult ar : [
//     SELECT ParentId, COUNT(Id) cnt
//     FROM FeedItem
//     WHERE ParentId IN (SELECT Id FROM Case)
//     GROUP BY ParentId
// ]) {
//     Id caseId = (Id)ar.get('ParentId');
//     Integer count = (Integer)ar.get('cnt');
//     res.put(caseId, count);
// }

// return res;

//----------------------------------------------------------------------------------------------------------------------------



Map<id,Case> caseList1 = new Map<id,Case> ([SELECT id , Comments FROM Case] );

List<FeedItem> feed1 = [ SELECT id ,ParentId FROM FeedItem WHERE ParentId  IN :caseList1.keySet() ];

Map <id, integer > result = new Map <id, integer >();

for(  Case c : [SELECT id , Comments FROM Case] ){

integer count = 0 ;
for ( FeedItem f : feed1){


    if(c.Id == f.ParentId){

        count++;
    }
}

result.put(c.Id, count);



}


return result ;


















    }
}