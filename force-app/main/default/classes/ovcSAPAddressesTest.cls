/* 
 * Generated by Overcast UTC 2024-03-12 08:30:39Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
@istest
private class ovcSAPAddressesTest {
    @istest
    private static void testovcSAPAddresses() {
        ovcSAPAddresses actual = new ovcSAPAddresses();
        system.assertNotEquals(null, actual.ADRC);
    }

    @istest
    private static void testADRC() {
        ovcSAPAddresses.ADRC actual = new ovcSAPAddresses.ADRC();

        actual.CLIENT = 'a';
        actual.ADDRNUMBER = 'a';
        actual.DATE_FROM = Date.newInstance(2000,1,1);
        actual.NATION = 'a';
        actual.DATE_TO = Date.newInstance(2000,1,1);
        actual.NAME1 = 'a';
        actual.NAME2 = 'a';
        actual.CITY1 = 'a';
        actual.POST_CODE1 = 'a';
        actual.STREET = 'a';
        actual.HOUSE_NUM1 = 'a';
        actual.COUNTRY = 'a';
        actual.LANGU = 'a';
        actual.REGION = 'a';
        actual.COUNTY = 'a';
        system.assertEquals('a', actual.CLIENT);
        system.assertEquals('a', actual.ADDRNUMBER);
        system.assertEquals(Date.newInstance(2000,1,1), actual.DATE_FROM);
        system.assertEquals('a', actual.NATION);
        system.assertEquals(Date.newInstance(2000,1,1), actual.DATE_TO);
        system.assertEquals('a', actual.NAME1);
        system.assertEquals('a', actual.NAME2);
        system.assertEquals('a', actual.CITY1);
        system.assertEquals('a', actual.POST_CODE1);
        system.assertEquals('a', actual.STREET);
        system.assertEquals('a', actual.HOUSE_NUM1);
        system.assertEquals('a', actual.COUNTRY);
        system.assertEquals('a', actual.LANGU);
        system.assertEquals('a', actual.REGION);
        system.assertEquals('a', actual.COUNTY);
    }
    @istest
    private static void testrunQuery() {
        ovcSAPAddresses request = testSetup();
        overcast.Query query1 = new overcast.Query();
        query1.limit_x = 10;
        query1.offset = 10;
        
        ovcSAPAddresses response = request.runQuery(query1);
        system.assertEquals('a', response.ADRC[0].CLIENT);
        string requestid = request.runQueryAsync(query1, null, null, new Continuation(10));
    }

    private static ovcSAPAddresses testSetup() {
        overcast.TestingUtilities.SetupTestEnvironment('ovcSAPAddresses');
        ovcSAPAddresses request = new ovcSAPAddresses();
        ovcSAPAddresses.ADRC value1 = new ovcSAPAddresses.ADRC();
        value1.CLIENT = 'a';
        request.ADRC.add(value1);

        string s = request.serialize();
        request.testResponse = '{"output":' + s + '}';
        return request;
    }


    @istest
    private static void testSerialize() {
        ovcSAPAddresses input = new ovcSAPAddresses();
        ovcSAPAddresses.ADRC value1 = new ovcSAPAddresses.ADRC();
        value1.CLIENT = 'a';
        input.ADRC.add(value1);
        ovcSAPAddresses actual = (ovcSAPAddresses)JSON.deserialize(input.serialize(), ovcSAPAddresses.class);
        system.assertEquals('a', actual.ADRC[0].CLIENT);
    }

    @istest
    private static void testDeserialize() {
        ovcSAPAddresses output = new ovcSAPAddresses();
        ovcSAPAddresses.ADRC value1 = new ovcSAPAddresses.ADRC();
        value1.CLIENT = 'a';
        output.ADRC.add(value1);

        string s = output.serialize();
        ovcSAPAddresses actual = ovcSAPAddresses.deserialize('{"output":' + s + '}');
        system.assertEquals('a', actual.ADRC[0].CLIENT);
    }

    @istest
    private static void testDeserializeError() {
        try {
            ovcSAPAddresses actual = ovcSAPAddresses.deserialize('{"error":["A test error"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPAddresses actual = ovcSAPAddresses.deserialize('{"error":["A test error"],"backendErrorMessages":["A test message"]}');
            system.assert(false, 'No exception thrown');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            system.assertEquals('A test error', e.getMessage());
            system.assertEquals(1, e.getMessages().size());
            system.assertEquals('A test error', e.getMessages()[0]);
            system.assertEquals(1, e.getBackendMessages().size());
            system.assertEquals('A test message', e.getBackendMessages()[0]);
        }
    }

    @istest
    private static void testGetterSetter() {
        ovcSAPAddresses output = new ovcSAPAddresses();
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
        ovcSAPAddresses output = new ovcSAPAddresses();
        output.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        system.assertEquals(null, output.get('NOVAL'));
        map<string, object> sample1 = (map<string, object>)output.get('SAMPLE1');
        system.assertNotEquals(null, sample1);
        system.assertEquals('VALUE1', sample1.get('FIELD1'));

        overcast.Globals.IsOCF = true;
        ovcSAPAddresses output2 = new ovcSAPAddresses();
        output2.loadAsyncResponse('{"output":{"SAMPLE1":{"FIELD1":"VALUE1"}}}');
        overcast.Globals.IsOCF = false;
        system.assertEquals(null, output2.get('NOVAL'));
        map<string, object> sample2 = (map<string, object>)output2.get('SAMPLE1');
        system.assertNotEquals(null, sample2);
        system.assertEquals('VALUE1', sample2.get('FIELD1'));
    }

    @istest
    private static void testGetMetadata() {
        ovcSAPAddresses output = new ovcSAPAddresses();
        map<string, overcast.TypeInfo> metadata = output.getMetadata();
        
        set<string> keys = metadata.keySet();
        system.assert(keys.contains('ADRC'));
        
        overcast.TypeInfo first = metadata.get(output.getTopTypeName());
        system.assertNotEquals(null, first);
        system.assertEquals('ADRC', first.name);
    }

    @istest
    private static void testException() {
        ovcSAPAddresses.ovcSAPAddressesException e = new ovcSAPAddresses.ovcSAPAddressesException();
        e.setMessages(new List<String>{'M1', 'M2'});
        System.assertEquals(2, e.getMessages().size());
    }

    @istest
    private static void testErrorResponse() {
        try {
            ovcSAPAddresses.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPAddresses output = new ovcSAPAddresses();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals('ERROR1', e.getMessages()[0]);
        }
        
        try {
            ovcSAPAddresses output = new ovcSAPAddresses();
            output.loadAsyncResponse('{"backendMessage":"TEST RESULT"}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assert(true);
        }

        try {
            ovcSAPAddresses output = new ovcSAPAddresses();
            output.loadAsyncResponse('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(2, e.getMessages().size());
            System.assertEquals('ERROR1', e.getMessages()[0]);
            System.assertEquals('ERROR2', e.getMessages()[1]);
            System.assertEquals(1, e.getBackendMessages().size());
            System.assertEquals('A test message', e.getBackendMessages()[0]);
        }

        overcast.Globals.IsOCF = true;
        
        try {
            ovcSAPAddresses.deserialize('');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assert(true);
        }
        
        try {
            ovcSAPAddresses.deserialize('{"error":["ERROR1","ERROR2"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
            System.assertEquals('ERROR1;ERROR2', e.getMessage());
            System.assertEquals(0, e.getBackendMessages().size());
        }

        try {
            ovcSAPAddresses.deserialize('{"error":["ERROR1","ERROR2"],"backendErrorMessages":["A test message"]}');
            System.assert(false, 'Expected exception not thrown.');
        } catch (ovcSAPAddresses.ovcSAPAddressesException e) {
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
        ovcSAPAddresses output = new ovcSAPAddresses();
        output.loadAsyncResponse('{"output":{}, "backendMessage":"TEST RESULT"}');
        system.assertEquals('TEST RESULT', output.getBackendMessage());
    }

}