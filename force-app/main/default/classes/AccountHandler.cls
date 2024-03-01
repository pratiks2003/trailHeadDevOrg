public with sharing class AccountHandler {
    



        public static void isBeforeUpdate(List<Account> newValue ){
        
        
        }
        
        
        
        public static void isBeforeInsert(List<Account> newValue){
        
           
        
        }
        
        public static void isAfterupdate(List<Account> newValue){
        
            AccountActions.modifyRelatedContact(newValue);
        
        }
        
        
}