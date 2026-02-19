public with sharing class ContactUtility {
    // Utility method to fetch contacts by Account Id
    public static List<Contact> getContactsByAccountId(Id accountId) {
        return [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId = :accountId];
    }
}
