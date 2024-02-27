public with sharing class Q8CountofContactOnAccount {
   

    Public static Integer CounOfContact(id accid){

integer count = [SELECT COUNT() FROM Contact WHERE AccountId = :accid];

return count;

    }
}