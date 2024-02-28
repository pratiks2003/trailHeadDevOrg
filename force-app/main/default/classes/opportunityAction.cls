public with sharing class OpportunityAction {

//-------------------------------------------------------------------------------------------------------------------
   
    Public Static void UpdateStageOnPrice(List<Opportunity> newValue){


        for(Opportunity o : newValue){

        if(o.Amount > 100000){


        o.StageName = 'Closed Won';

        }


        }

    }
//------------------------------------------------Q9-------------------------------------------------------------------
public Static void updateCloseDate(List<Opportunity> newValue){


for( opportunity o : newValue){

if( o.StageName == 'Closed Won'){

o.CloseDate = o.CloseDate.addMonths(1); 

}


}



}
//-------------------------------------------------------------------------------------------------------------------





}