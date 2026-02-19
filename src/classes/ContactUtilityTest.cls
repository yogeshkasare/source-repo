@isTest
public class ContactUtilityTest {
    
    @isTest
    static void testGetContactsByAccountId() {
        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        // Create test Contacts linked to the Account
        Contact contact1 = new Contact(FirstName = 'Alice', LastName = 'Smith', AccountId = testAccount.Id);
        Contact contact2 = new Contact(FirstName = 'Bob', LastName = 'Johnson', AccountId = testAccount.Id);
        insert new List<Contact>{contact1, contact2};
        
        // Call the utility method
        List<Contact> contacts = ContactUtility.getContactsByAccountId(testAccount.Id);
        
        // Assertions
        System.assertEquals(2, contacts.size(), 'There should be 2 contacts returned');
        System.assertEquals('Johnson', contacts[0].LastName, 'Contacts should be ordered by LastName');
        System.assertEquals('Smith', contacts[1].LastName, 'Contacts should be ordered by LastName');
    }
    
    @isTest
    static void testNoContactsForAccount() {
        // Create a test Account with no contacts
        Account emptyAccount = new Account(Name = 'Empty Account');
        insert emptyAccount;
        
        // Call the utility method
        List<Contact> contacts = ContactUtility.getContactsByAccountId(emptyAccount.Id);
        
        // Assertions
        System.assertEquals(0, contacts.size(), 'No contacts should be returned for an account without contacts');
    }
}
