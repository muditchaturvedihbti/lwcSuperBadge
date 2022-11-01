public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
            return [
                SELECT 
                    FirstName, LastName, Email
                FROM 
                    Contact 
                LIMIT 10
            ]; 
        } catch(Exception e) {
            System.debug('ContactController Exceptio thrown.');
            throw new AuraHandledException(e.getMessage());
        }
    }
}
