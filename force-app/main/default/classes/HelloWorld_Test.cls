@isTest
public class HelloWorld_Test {
    static testMethod void callConstructorUnitTest(){
        HelloWorld hw = new HelloWorld();
        Test.startTest();
        System.debug('Added Components');
        Test.stopTest();
    }
}
