public class QueueableJob  implements Queueable {

    
    
    public static void execute ( System.QueueableContext qc){
        
        Account acc = new Account ( Name = 'QueueableMan');
        insert acc ;
        
        
    }
}