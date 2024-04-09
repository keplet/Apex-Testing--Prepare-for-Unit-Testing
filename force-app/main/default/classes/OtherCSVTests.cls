@IsTest
public with sharing class OtherCSVTests {
    @TestSetup
    private static void setupTestData(){
        Test.startTest();
        List<SObject> accounts = Test.loadData(Account.SObjectType, 'otherAccountData');
        Test.stopTest();
    }
    
    @IsTest
    static void testLoadOtherAccountsFromStaticResource(){
        // Query for accounts
        Integer expectedCount = 15; // Expected count of accounts
        Integer actualCount = [SELECT COUNT() FROM Account];
        
        // Assert that the count of accounts matches the expected count
        System.assertEquals(expectedCount, actualCount, 'Number of accounts should match');
    }
}
