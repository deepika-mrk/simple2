@isTest
public class genderprefix_test {
   @isTest
    public static void genderprefix_testmethod(){
    Doctor__c doc = new Doctor__c();
        Doc.Name ='Mrs.diksha';
        doc.Gender__c ='female';
        
        list<Doctor__c> doclist = new list<Doctor__c>();
        doclist.add(doc);
        
        
        insert doc;
        genderprefix.genderMethod(doclist);
        
        
        list<doctor__c> doct =[select id, name, gender__c from doctor__c];
        system.assertEquals('Mrs. Mrs.diksha',doct[0].Name);
        system.assertEquals('Female',doct[0].Gender__c);
    }
        
     @isTest   
     public static void genderprefix_testmethod1(){ 
        Doctor__c doc = new Doctor__c(); 
        doc.Name = 'Mr.raj';
        doc.Gender__c='male';
         
        list<Doctor__c> doclist = new list<Doctor__c>();
        doclist.add(doc);
        
        
       
        insert doc;
        genderprefix.genderMethod(doclist);
        
        
        list<doctor__c> doct =[select id, name, gender__c from doctor__c];
        System.assertEquals('Mr. Mr.raj',doct[0].Name);
        System.assertEquals('Male',doct[0].Gender__c);
        
         }
    
    }