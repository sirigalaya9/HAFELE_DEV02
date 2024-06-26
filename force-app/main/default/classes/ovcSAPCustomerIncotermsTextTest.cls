/* 
 * Generated by Overcast UTC 2024-03-27 03:59:02Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class ovcSAPCustomerIncotermsTextTest {
    @istest
    private static void testovcSAPCustomerIncotermsText() {
        ovcSAPCustomerIncotermsText actual = new ovcSAPCustomerIncotermsText();
        system.assertNotEquals(null, actual.TINCT);
    }

    @istest
    private static void testTINCT() {
        ovcSAPCustomerIncotermsText.TINCT actual = new ovcSAPCustomerIncotermsText.TINCT();

        actual.MANDT = 'a';
        actual.SPRAS = 'a';
        actual.INCO1 = 'a';
        actual.BEZEI = 'a';
        system.assertEquals('a', actual.MANDT);
        system.assertEquals('a', actual.SPRAS);
        system.assertEquals('a', actual.INCO1);
        system.assertEquals('a', actual.BEZEI);
    }
    @istest
    private static void testrunQuery() {
        ovcSAPCustomerIncotermsText request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        ovcSAPCustomerIncotermsText response = request.runQuery(query1);
        system.assertEquals('a', response.TINCT[0].MANDT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static ovcSAPCustomerIncotermsText testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('ovcSAPCustomerIncotermsText');
        ovcSAPCustomerIncotermsText request = new ovcSAPCustomerIncotermsText();
        ovcSAPCustomerIncotermsText.TINCT value1 = new ovcSAPCustomerIncotermsText.TINCT();
        value1.MANDT = 'a';
        request.TINCT.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        ovcSAPCustomerIncotermsText input = new ovcSAPCustomerIncotermsText();
        ovcSAPCustomerIncotermsText.TINCT value1 = new ovcSAPCustomerIncotermsText.TINCT();
        value1.MANDT = 'a';
        input.TINCT.add(value1);
        ovcSAPCustomerIncotermsText actual = (ovcSAPCustomerIncotermsText)JSON.deserialize(input.serialize(), ovcSAPCustomerIncotermsText.class);
        system.assertEquals('a', actual.TINCT[0].MANDT);
    }

    @istest
    private static void testDeserialize() {
        ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
        ovcSAPCustomerIncotermsText.TINCT value1 = new ovcSAPCustomerIncotermsText.TINCT();
        value1.MANDT = 'a';
        output.TINCT.add(value1);

        string s = output.serialize();
        ovcSAPCustomerIncotermsText actual = ovcSAPCustomerIncotermsText.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.TINCT[0].MANDT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            ovcSAPCustomerIncotermsText actual = ovcSAPCustomerIncotermsText.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPCustomerIncotermsText actual = ovcSAPCustomerIncotermsText.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
        output.set('SAMPLE1', new map<string, object>{
            'FIELD1' => 'VALUE1'
        });
        
        system.assertEquals(null, output.get('NOVAL'));
        
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));		
    }
    
    @istest
    private static void testLoadAsyncResponse() {
        ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        ovcSAPCustomerIncotermsText output2 = new ovcSAPCustomerIncotermsText();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('TINCT'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('TINCT', first.name);
    }

    @istest
    private static void testException() {
        ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e = new ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            ovcSAPCustomerIncotermsText.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assert(true);
        }

        try {
            ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            ovcSAPCustomerIncotermsText.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPCustomerIncotermsText.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPCustomerIncotermsText.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPCustomerIncotermsText.ovcSAPCustomerIncotermsTextException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetBackendMessage() {
        ovcSAPCustomerIncotermsText output = new ovcSAPCustomerIncotermsText();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}