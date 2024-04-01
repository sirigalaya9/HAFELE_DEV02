/* 
 * Generated by Overcast UTC 2024-03-12 09:13:43Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class ovcSAPPlantDataTest {
    @istest
    private static void testovcSAPPlantData() {
        ovcSAPPlantData actual = new ovcSAPPlantData();
        system.assertNotEquals(null, actual.T001W);
    }

    @istest
    private static void testT001W() {
        ovcSAPPlantData.T001W actual = new ovcSAPPlantData.T001W();

        actual.MANDT = 'a';
        actual.WERKS = 'a';
        actual.NAME1 = 'a';
        actual.BWKEY = 'a';
        actual.KUNNR = 'a';
        actual.LIFNR = 'a';
        actual.NAME2 = 'a';
        actual.STRAS = 'a';
        actual.PFACH = 'a';
        actual.PSTLZ = 'a';
        actual.ORT01 = 'a';
        actual.LAND1 = 'a';
        actual.REGIO = 'a';
        actual.ADRNR = 'a';
        actual.SPRAS = 'a';
        system.assertEquals('a', actual.MANDT);
        system.assertEquals('a', actual.WERKS);
        system.assertEquals('a', actual.NAME1);
        system.assertEquals('a', actual.BWKEY);
        system.assertEquals('a', actual.KUNNR);
        system.assertEquals('a', actual.LIFNR);
        system.assertEquals('a', actual.NAME2);
        system.assertEquals('a', actual.STRAS);
        system.assertEquals('a', actual.PFACH);
        system.assertEquals('a', actual.PSTLZ);
        system.assertEquals('a', actual.ORT01);
        system.assertEquals('a', actual.LAND1);
        system.assertEquals('a', actual.REGIO);
        system.assertEquals('a', actual.ADRNR);
        system.assertEquals('a', actual.SPRAS);
    }
    @istest
    private static void testrunQuery() {
        ovcSAPPlantData request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        ovcSAPPlantData response = request.runQuery(query1);
        system.assertEquals('a', response.T001W[0].MANDT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static ovcSAPPlantData testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('ovcSAPPlantData');
        ovcSAPPlantData request = new ovcSAPPlantData();
        ovcSAPPlantData.T001W value1 = new ovcSAPPlantData.T001W();
        value1.MANDT = 'a';
        request.T001W.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        ovcSAPPlantData input = new ovcSAPPlantData();
        ovcSAPPlantData.T001W value1 = new ovcSAPPlantData.T001W();
        value1.MANDT = 'a';
        input.T001W.add(value1);
        ovcSAPPlantData actual = (ovcSAPPlantData)JSON.deserialize(input.serialize(), ovcSAPPlantData.class);
        system.assertEquals('a', actual.T001W[0].MANDT);
    }

    @istest
    private static void testDeserialize() {
        ovcSAPPlantData output = new ovcSAPPlantData();
        ovcSAPPlantData.T001W value1 = new ovcSAPPlantData.T001W();
        value1.MANDT = 'a';
        output.T001W.add(value1);

        string s = output.serialize();
        ovcSAPPlantData actual = ovcSAPPlantData.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.T001W[0].MANDT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            ovcSAPPlantData actual = ovcSAPPlantData.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPPlantData actual = ovcSAPPlantData.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        ovcSAPPlantData output = new ovcSAPPlantData();
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
        ovcSAPPlantData output = new ovcSAPPlantData();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        ovcSAPPlantData output2 = new ovcSAPPlantData();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        ovcSAPPlantData output = new ovcSAPPlantData();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('T001W'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('T001W', first.name);
    }

    @istest
    private static void testException() {
        ovcSAPPlantData.ovcSAPPlantDataException e = new ovcSAPPlantData.ovcSAPPlantDataException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            ovcSAPPlantData.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPPlantData output = new ovcSAPPlantData();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            ovcSAPPlantData output = new ovcSAPPlantData();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assert(true);
        }

        try {
            ovcSAPPlantData output = new ovcSAPPlantData();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            ovcSAPPlantData.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPPlantData.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPPlantData.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPPlantData.ovcSAPPlantDataException e) {
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
        ovcSAPPlantData output = new ovcSAPPlantData();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}