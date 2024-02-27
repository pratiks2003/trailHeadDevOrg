trigger OpportunityTrigger on Opportunity (before insert , after insert , before update , after update) {


if(trigger.isBefore){

if (trigger.isInsert){

    OpportunityHandler.isBeforeInsert(trigger.new );

   
}

if(trigger.isUpdate){

    OpportunityHandler.isBeforeUpdate(trigger.new );

}


}
else{



}




}