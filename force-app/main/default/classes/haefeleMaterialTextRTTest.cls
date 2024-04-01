/* 
 * Generated by Overcast UTC 2024-03-12 08:24:45Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class haefeleMaterialTextRTTest {
    @istest
    private static void testhaefeleMaterialTextRT() {
        haefeleMaterialTextRT actual = new haefeleMaterialTextRT();
        system.assertNotEquals(null, actual.MAKT);
    }

    @istest
    private static void testMAKT() {
        haefeleMaterialTextRT.MAKT actual = new haefeleMaterialTextRT.MAKT();

        actual.MANDT = 'a';
        actual.MATNR = 'a';
        actual.SPRAS = 'a';
        actual.MAKTX = 'a';
        actual.MAKTG = 'a';
        actual.FISDUMMY = 'a';
        actual.MAKTX2 = 'a';
        actual.MAKTG2 = 'a';
        actual.x_FIS_MAKTX3 = 'a';
        actual.x_FIS_MAKTX4 = 'a';
        actual.ZZHWWMAKTX5 = 'a';
        system.assertEquals('a', actual.MANDT);
        system.assertEquals('a', actual.MATNR);
        system.assertEquals('a', actual.SPRAS);
        system.assertEquals('a', actual.MAKTX);
        system.assertEquals('a', actual.MAKTG);
        system.assertEquals('a', actual.FISDUMMY);
        system.assertEquals('a', actual.MAKTX2);
        system.assertEquals('a', actual.MAKTG2);
        system.assertEquals('a', actual.x_FIS_MAKTX3);
        system.assertEquals('a', actual.x_FIS_MAKTX4);
        system.assertEquals('a', actual.ZZHWWMAKTX5);
    }
    @istest
    private static void testrunQuery() {
        haefeleMaterialTextRT request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        haefeleMaterialTextRT response = request.runQuery(query1);
        system.assertEquals('a', response.MAKT[0].MANDT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static haefeleMaterialTextRT testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('haefeleMaterialTextRT');
        haefeleMaterialTextRT request = new haefeleMaterialTextRT();
        haefeleMaterialTextRT.MAKT value1 = new haefeleMaterialTextRT.MAKT();
        value1.MANDT = 'a';
        request.MAKT.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        haefeleMaterialTextRT input = new haefeleMaterialTextRT();
        haefeleMaterialTextRT.MAKT value1 = new haefeleMaterialTextRT.MAKT();
        value1.MANDT = 'a';
        input.MAKT.add(value1);
        haefeleMaterialTextRT actual = (haefeleMaterialTextRT)JSON.deserialize(input.serialize(), haefeleMaterialTextRT.class);
        system.assertEquals('a', actual.MAKT[0].MANDT);
    }

    @istest
    private static void testDeserialize() {
        haefeleMaterialTextRT output = new haefeleMaterialTextRT();
        haefeleMaterialTextRT.MAKT value1 = new haefeleMaterialTextRT.MAKT();
        value1.MANDT = 'a';
        output.MAKT.add(value1);

        string s = output.serialize();
        haefeleMaterialTextRT actual = haefeleMaterialTextRT.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.MAKT[0].MANDT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            haefeleMaterialTextRT actual = haefeleMaterialTextRT.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            haefeleMaterialTextRT actual = haefeleMaterialTextRT.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        haefeleMaterialTextRT output = new haefeleMaterialTextRT();
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
        haefeleMaterialTextRT output = new haefeleMaterialTextRT();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        haefeleMaterialTextRT output2 = new haefeleMaterialTextRT();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        haefeleMaterialTextRT output = new haefeleMaterialTextRT();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('MAKT'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('MAKT', first.name);
    }

    @istest
    private static void testException() {
        haefeleMaterialTextRT.haefeleMaterialTextRTException e = new haefeleMaterialTextRT.haefeleMaterialTextRTException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            haefeleMaterialTextRT.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assert(true);
        }
        
        try {
            haefeleMaterialTextRT output = new haefeleMaterialTextRT();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            haefeleMaterialTextRT output = new haefeleMaterialTextRT();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assert(true);
        }

        try {
            haefeleMaterialTextRT output = new haefeleMaterialTextRT();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            haefeleMaterialTextRT.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assert(true);
        }
        
        try {
            haefeleMaterialTextRT.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            haefeleMaterialTextRT.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (haefeleMaterialTextRT.haefeleMaterialTextRTException e) {
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
        haefeleMaterialTextRT output = new haefeleMaterialTextRT();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}