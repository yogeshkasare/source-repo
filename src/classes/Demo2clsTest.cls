@isTest
private class Demo2clsTest {
    @isTest
    static void testGetGreeting() {
        String result = Democls.getGreeting();
        System.assertEquals('Hello from Opsera demo!', result);
    }

    @isTest
    static void testSecondGreeting() {
        String result = Democls.getSecondGreeting();
        System.assertEquals('Second greeting.', result);
    }

    @isTest
    static void testThirdGreeting() {
        String result = Democls.getThirdGreeting();
        System.assertEquals('Third greeting.', result);
    }
}