public with sharing class OpportunityHandler {



public static void isBeforeUpdate(List<Opportunity> newValue ){

    opportunityAction.UpdateStageOnPrice(newValue);
    
}



public static void isBeforeInsert(List<Opportunity> newValue){

    opportunityAction.UpdateStageOnPrice(newValue);

}

}