public with sharing class Q6ReverseString {
   

    public static String reverseString(String a){
    String rev ='';
    
    for(integer i = a.length()-1 ; i>=0 ;i--){


    rev +=   a.substring(i,i+1);

    }

    return rev ;

    }
}