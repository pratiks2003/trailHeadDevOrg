@isTest
public class TestRestrictContactByName {
    

    
    @isTest
    static void Test (){
        
	
   String msg ;
      Test.startTest();
        
         Contact c = new Contact (LastName = 'INVALIDNAME');
        try{
             insert c ;
        }
        catch(DmlException e){
            
             msg = e.getMessage();
            
        }
        
        
        
        
      Test.stopTest();
        
        
   
    System.assertEquals('Insert failed. First exception on row 0; first error: FIELD_CUSTOM_VALIDATION_EXCEPTION, The Last Name "INVALIDNAME" is not allowed for DML: []' , msg);
    
    }
}