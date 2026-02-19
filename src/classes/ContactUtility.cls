public with sharing class ContactUtility {
    
    // Method to fetch contacts by Account Id
    // Returns a list of Contact records with Id, FirstName, and LastName
    public static List<Contact> getContactsByAccountId(Id accountId) {
        return [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId = :accountId ORDER BY LastName];
    }
}
