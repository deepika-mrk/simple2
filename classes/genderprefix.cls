public class genderprefix {
    public static void genderMethod(List<Doctor__c> Doclist){
        for(Doctor__c doc :Doclist){
            if(doc.Gender__c == 'Male'){
                doc.Name = 'Mr. '+ doc.name;
                
            }
            else if(doc.Gender__c == 'Female'){
                doc.Name = 'Mrs. '+ doc.name;
                
            }
        }
    }

}