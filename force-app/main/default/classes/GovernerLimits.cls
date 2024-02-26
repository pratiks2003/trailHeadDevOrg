public with sharing class GovernerLimits {
    
    public GovernerLimits() {

for (integer i = 0 ; i <100 ; i++){

    // insert new Account (Name = 'gv'+i);

 list <Account> acc = [SELECT ID FROM Account];
 
// delete [SELECT id FROM Account WHERE NAME LIKE '%gv%'];

}

System.debug('getQueries ----> '+Limits.getQueries());
System.debug('getLimitQueries ----> '+Limits.getLimitQueries());
System.debug('getDmlStatements ---> '+Limits.getDmlStatements() );
System.debug('getDmlRows ---> '+Limits.getDmlRows() );
System.debug('getCpuTime ---> '+Limits.getCpuTime() );
System.debug('getLimitCpuTime ---> '+Limits.getLimitCpuTime() );
System.debug('getLimitDmlStatements ----> '+Limits.getLimitDmlStatements() );
System.debug('getLimitDmlRows -----> '+Limits.getLimitDmlRows() );
System.debug('getLimitCallouts----> '+Limits.getLimitCallouts() );
System.debug('getLimitSoslQueries ----> '+Limits.getLimitSoslQueries() );
System.debug('getEmailInvocations-----> '+Limits.getEmailInvocations() );



    }
}