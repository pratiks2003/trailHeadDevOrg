public with sharing class opportunityAction {
   
    Public Static void UpdateStageOnPrice(List<Opportunity> newValue){


        for(Opportunity o : newValue){

        if(o.Amount > 100000){


     o.StageName = 'Closed Won';

    }


        }




    }
}