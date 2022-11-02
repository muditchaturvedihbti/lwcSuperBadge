public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
            integer i =1/0;
            return [
                SELECT 
                    FirstName, LastName, Email
                FROM 
                    Contact 
                WITH SECURITY_ENFORCED
            ]; 
            
        } catch(Exception e) {
            System.debug('ContactController Exceptio thrown.');
            throw new AuraHandledException(e.getMessage());
        }
    }
}
