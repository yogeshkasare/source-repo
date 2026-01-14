@isTest
private class ContactUtilityTest {
    @isTest
    static void testGetContactsByAccountId() {
        Account acc = new Account(Name='Test Account');
        insert acc;

        Contact c1 = new Contact(FirstName='John', LastName='Doe', AccountId=acc.Id);
        Contact c2 = new Contact(FirstName='Jane', LastName='Smith', AccountId=acc.Id);
        insert new List<Contact>{c1, c2};

        List<Contact> contacts = ContactUtility.getContactsByAccountId(acc.Id);
        System.assertEquals(2, contacts.size());
    }
}