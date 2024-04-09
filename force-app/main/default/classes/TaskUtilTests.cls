/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class TaskUtilTests {

    @isTest
    static void testGetTaskPriorityNormal(){
        String state1 = 'NY';
        Test.startTest();
        String  test = TaskUtil.getTaskPriority(state1);
        //Test.stopTest();
        System.assertEquals('Normal', test, 'Correct result');
        System.assertNotEquals('FL', test, 'Bad value');
    }
    
    @isTest // This annotation was missing in your original code
    static void testGetTaskPriorityHigh(){
        String state2 = 'CA';
        Test.startTest();
        String  test2 = TaskUtil.getTaskPriority(state2);
        Test.stopTest();
        System.assertEquals('High', test2, 'Correct result');
    }

    @isTest
    static void testGetTaskPriorityEmpty(){
         String state3 = 'NLP';
         Test.startTest();
         String  test3 = TaskUtil.getTaskPriority(state3);
          Test.stopTest();
         System.assertEquals(null, test3, 'Correct Result');
    }
}
