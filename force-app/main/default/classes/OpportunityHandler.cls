public with sharing class OpportunityHandler {



public static void isBeforeUpdate(List<Opportunity> newValue ){

    OpportunityAction.UpdateStageOnPrice(newValue);

    OpportunityAction.updateCloseDate(newValue);
}



public static void isBeforeInsert(List<Opportunity> newValue){

    OpportunityAction.UpdateStageOnPrice(newValue);

}

}