/* 
 * Generated by Overcast UTC 2024-03-12 08:30:33Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class ovcSAPBillingBlockReasonTest {
    @istest
    private static void testovcSAPBillingBlockReason() {
        ovcSAPBillingBlockReason actual = new ovcSAPBillingBlockReason();
        system.assertNotEquals(null, actual.TVFST);
    }

    @istest
    private static void testTVFST() {
        ovcSAPBillingBlockReason.TVFST actual = new ovcSAPBillingBlockReason.TVFST();

        actual.MANDT = 'a';
        actual.SPRAS = 'a';
        actual.FAKSP = 'a';
        actual.VTEXT = 'a';
        system.assertEquals('a', actual.MANDT);
        system.assertEquals('a', actual.SPRAS);
        system.assertEquals('a', actual.FAKSP);
        system.assertEquals('a', actual.VTEXT);
    }
    @istest
    private static void testrunQuery() {
        ovcSAPBillingBlockReason request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        ovcSAPBillingBlockReason response = request.runQuery(query1);
        system.assertEquals('a', response.TVFST[0].MANDT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static ovcSAPBillingBlockReason testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('ovcSAPBillingBlockReason');
        ovcSAPBillingBlockReason request = new ovcSAPBillingBlockReason();
        ovcSAPBillingBlockReason.TVFST value1 = new ovcSAPBillingBlockReason.TVFST();
        value1.MANDT = 'a';
        request.TVFST.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        ovcSAPBillingBlockReason input = new ovcSAPBillingBlockReason();
        ovcSAPBillingBlockReason.TVFST value1 = new ovcSAPBillingBlockReason.TVFST();
        value1.MANDT = 'a';
        input.TVFST.add(value1);
        ovcSAPBillingBlockReason actual = (ovcSAPBillingBlockReason)JSON.deserialize(input.serialize(), ovcSAPBillingBlockReason.class);
        system.assertEquals('a', actual.TVFST[0].MANDT);
    }

    @istest
    private static void testDeserialize() {
        ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
        ovcSAPBillingBlockReason.TVFST value1 = new ovcSAPBillingBlockReason.TVFST();
        value1.MANDT = 'a';
        output.TVFST.add(value1);

        string s = output.serialize();
        ovcSAPBillingBlockReason actual = ovcSAPBillingBlockReason.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.TVFST[0].MANDT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            ovcSAPBillingBlockReason actual = ovcSAPBillingBlockReason.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPBillingBlockReason actual = ovcSAPBillingBlockReason.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
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
        ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        ovcSAPBillingBlockReason output2 = new ovcSAPBillingBlockReason();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('TVFST'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('TVFST', first.name);
    }

    @istest
    private static void testException() {
        ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e = new ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            ovcSAPBillingBlockReason.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assert(true);
        }

        try {
            ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            ovcSAPBillingBlockReason.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPBillingBlockReason.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPBillingBlockReason.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPBillingBlockReason.ovcSAPBillingBlockReasonException e) {
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
        ovcSAPBillingBlockReason output = new ovcSAPBillingBlockReason();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}