public with sharing class DynamicApex {
  
    public DynamicApex() {



Map<String,Schema.SObjectType> s = Schema.getGlobalDescribe();

System.debug(s);

for( Schema.SObjectType a : s.values()) {
    

    System.debug(a.getDescribe());


}
 


    }
}