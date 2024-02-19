public class LeadProcessor implements Database.Batchable<sObject> , Database.Stateful {
    
    Public Database.QueryLocator start( Database.BatchableContext bc ){
        
        
        return Database.getQueryLocator('SELECT id , LeadSource  FROM Lead ');
    }
    
    Public void execute (Database.BatchableContext bc , List <Lead> l){
        
        List<Lead> leli = new List <Lead>();
        
        for ( Lead lead : l){
            
            lead.LeadSource = 'Dreamforce';
            leli.add(lead);
        }
        update leli ;
    }
    
    public void finish (Database.BatchableContext bc){
        System.debug('success');
    }
    
}