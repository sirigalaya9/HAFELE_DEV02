/* 
 * Generated by Overcast UTC 2024-03-12 09:24:35Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class ovcSAPRegionsTest {
    @istest
    private static void testovcSAPRegions() {
        ovcSAPRegions actual = new ovcSAPRegions();
        system.assertNotEquals(null, actual.T005U);
    }

    @istest
    private static void testT005U() {
        ovcSAPRegions.T005U actual = new ovcSAPRegions.T005U();

        actual.MANDT = 'a';
        actual.SPRAS = 'a';
        actual.LAND1 = 'a';
        actual.BLAND = 'a';
        actual.BEZEI = 'a';
        system.assertEquals('a', actual.MANDT);
        system.assertEquals('a', actual.SPRAS);
        system.assertEquals('a', actual.LAND1);
        system.assertEquals('a', actual.BLAND);
        system.assertEquals('a', actual.BEZEI);
    }
    @istest
    private static void testrunQuery() {
        ovcSAPRegions request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        ovcSAPRegions response = request.runQuery(query1);
        system.assertEquals('a', response.T005U[0].MANDT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static ovcSAPRegions testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('ovcSAPRegions');
        ovcSAPRegions request = new ovcSAPRegions();
        ovcSAPRegions.T005U value1 = new ovcSAPRegions.T005U();
        value1.MANDT = 'a';
        request.T005U.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        ovcSAPRegions input = new ovcSAPRegions();
        ovcSAPRegions.T005U value1 = new ovcSAPRegions.T005U();
        value1.MANDT = 'a';
        input.T005U.add(value1);
        ovcSAPRegions actual = (ovcSAPRegions)JSON.deserialize(input.serialize(), ovcSAPRegions.class);
        system.assertEquals('a', actual.T005U[0].MANDT);
    }

    @istest
    private static void testDeserialize() {
        ovcSAPRegions output = new ovcSAPRegions();
        ovcSAPRegions.T005U value1 = new ovcSAPRegions.T005U();
        value1.MANDT = 'a';
        output.T005U.add(value1);

        string s = output.serialize();
        ovcSAPRegions actual = ovcSAPRegions.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.T005U[0].MANDT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            ovcSAPRegions actual = ovcSAPRegions.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPRegions actual = ovcSAPRegions.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        ovcSAPRegions output = new ovcSAPRegions();
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
        ovcSAPRegions output = new ovcSAPRegions();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        ovcSAPRegions output2 = new ovcSAPRegions();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        ovcSAPRegions output = new ovcSAPRegions();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('T005U'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('T005U', first.name);
    }

    @istest
    private static void testException() {
        ovcSAPRegions.ovcSAPRegionsException e = new ovcSAPRegions.ovcSAPRegionsException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            ovcSAPRegions.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPRegions output = new ovcSAPRegions();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            ovcSAPRegions output = new ovcSAPRegions();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assert(true);
        }

        try {
            ovcSAPRegions output = new ovcSAPRegions();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            ovcSAPRegions.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPRegions.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPRegions.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPRegions.ovcSAPRegionsException e) {
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
        ovcSAPRegions output = new ovcSAPRegions();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}