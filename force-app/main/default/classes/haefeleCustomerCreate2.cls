global class haefeleCustomerCreate2 extends overcast.Realtime.ScenarioExtension implements overcast.Realtime.Runnable {
/* 
 * Generated by Overcast UTC 2024-03-12 08:24:24Z.
 * This class belongs to the haefeleCustomerCreate2 Real-time Integration Scenario.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
     global class haefeleCustomerCreate2Exception extends overcast.Realtime.ScenarioException {
         private List<String> messages;
        global override List<String> getMessages() {
            return messages;
        }
        public void setMessages(List<String> messages) {
            this.messages = messages;
        }

        private List<String> backendMessages;
        global override List<String> getBackendMessages() {
            return backendMessages;
        }
        public void setBackendMessages(List<String> backendMessages) {
            this.backendMessages = backendMessages;
        }

        public haefeleCustomerCreate2Exception(List<object> messages, List<object> backendMessages) {
            super(string.join(messages, ';'));
            this.messages = new List<String>();
            for (object message : messages) {
                this.messages.add((String)message);
            }
            this.backendMessages = new List<String>();
            if (backendMessages != null) {
                for (object message : backendMessages) {
                    this.backendMessages.add((String)message);
                }
            }
        }
    }
    global haefeleCustomerCreate2() {
        this.Z_HWWPIWS_CREATE_CUSTOMER = new haefeleCustomerCreate2.Z_HWWPIWS_CREATE_CUSTOMER();
        this.IS_COMPANYINFO = new haefeleCustomerCreate2.IS_COMPANYINFO();
        this.IS_CRM = new haefeleCustomerCreate2.IS_CRM();
        this.ET_MSG_OUT = new list<haefeleCustomerCreate2.ET_MSG_OUT>();
    }

    public class Z_HWWPIWS_CREATE_CUSTOMER {
        @AuraEnabled public String I_SOURCE { get; set; }
        @AuraEnabled public String I_SESSION { get; set; }
        @AuraEnabled public String I_VKORG { get; set; }
        @AuraEnabled public String E_KUNNR { get; set; }

        public Z_HWWPIWS_CREATE_CUSTOMER() {}
    }

    public class IS_COMPANYINFO {
        @AuraEnabled public String NAME { get; set; }
        @AuraEnabled public String STREET { get; set; }
        @AuraEnabled public String HOUSE_NO { get; set; }
        @AuraEnabled public String DISTRICT { get; set; }
        @AuraEnabled public String POSTL_COD1 { get; set; }
        @AuraEnabled public String CITY { get; set; }
        @AuraEnabled public String COUNTRY { get; set; }
        @AuraEnabled public String TELEPHONE { get; set; }
        @AuraEnabled public String FAX { get; set; }
        @AuraEnabled public String E_MAIL { get; set; }
        @AuraEnabled public String LANGU_ISO { get; set; }
        @AuraEnabled public String ZZHWW_PINNR { get; set; }
        @AuraEnabled public String STCEG { get; set; }
        @AuraEnabled public String TITLE_P { get; set; }
        @AuraEnabled public String FIRSTNAME { get; set; }
        @AuraEnabled public String LASTNAME { get; set; }
        @AuraEnabled public String TELEPHONE_CONTACT { get; set; }
        @AuraEnabled public String MOBILE_CONTACT { get; set; }
        @AuraEnabled public String E_MAIL_CONTACT { get; set; }
        @AuraEnabled public String KVGR1 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_MSEG { get; set; }
        @AuraEnabled public String STCD1 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CSEG_1 { get; set; }
        @AuraEnabled public String NAME2 { get; set; }
        @AuraEnabled public String REGION { get; set; }
        @AuraEnabled public String STREET2 { get; set; }
        @AuraEnabled public String STREET3 { get; set; }
        @AuraEnabled public String STREET4 { get; set; }
        @AuraEnabled public String STREET5 { get; set; }
        @AuraEnabled public String JMZAH { get; set; }
        @AuraEnabled public String STCD6 { get; set; }
        @AuraEnabled public String STCD2 { get; set; }
        @AuraEnabled public String STCD3 { get; set; }
        @AuraEnabled public String STCD4 { get; set; }
        @AuraEnabled public String STCD5 { get; set; }

        public IS_COMPANYINFO() {}
    }

    public class IS_CRM {
        @AuraEnabled public String NAME { get; set; }
        @AuraEnabled public String NAME2 { get; set; }
        @AuraEnabled public String STREET { get; set; }
        @AuraEnabled public String STREET2 { get; set; }
        @AuraEnabled public String STREET3 { get; set; }
        @AuraEnabled public String HOUSE_NUM { get; set; }
        @AuraEnabled public String PSTLZ { get; set; }
        @AuraEnabled public String ORT01 { get; set; }
        @AuraEnabled public String REGION { get; set; }
        @AuraEnabled public String LAND1 { get; set; }
        @AuraEnabled public String LANGU_ISO { get; set; }
        @AuraEnabled public String TELF1 { get; set; }
        @AuraEnabled public String TELFX { get; set; }
        @AuraEnabled public String SMTP_ADDR { get; set; }
        @AuraEnabled public String STCEG { get; set; }
        @AuraEnabled public String JMZAH { get; set; }
        @AuraEnabled public String JMJAH { get; set; }
        @AuraEnabled public String KNURL { get; set; }
        @AuraEnabled public String VKBUR { get; set; }
        @AuraEnabled public String KVGR2 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_MSEG { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CSEG_1 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CSEG_2 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CSEG_3 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_PERC_1 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_PERC_2 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_PERC_3 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CLASS_1 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CLASS_2 { get; set; }
        @AuraEnabled public String ZZHWW_CUSCLAS_CLASS_3 { get; set; }
        @AuraEnabled public String STREET4 { get; set; }
        @AuraEnabled public String STREET5 { get; set; }
        @AuraEnabled public String PHONE_NUMBER_COUNTRY { get; set; }
        @AuraEnabled public String FAX_NUMBER_COUNTRY { get; set; }
        @AuraEnabled public String TEL_EXTENS { get; set; }
        @AuraEnabled public String FAX_EXTENS { get; set; }

        public IS_CRM() {}
    }

    public class ET_MSG_OUT {
        @AuraEnabled public String LFDNR { get; set; }
        @AuraEnabled public String TYPE_x { get; set; }
        @AuraEnabled public String ID { get; set; }
        @AuraEnabled public String NUMBER_x { get; set; }
        @AuraEnabled public String MESSAGE { get; set; }
        @AuraEnabled public String LOG_NO { get; set; }
        @AuraEnabled public String LOG_MSG_NO { get; set; }
        @AuraEnabled public String MESSAGE_V1 { get; set; }
        @AuraEnabled public String MESSAGE_V2 { get; set; }
        @AuraEnabled public String MESSAGE_V3 { get; set; }
        @AuraEnabled public String MESSAGE_V4 { get; set; }
        @AuraEnabled public String PARAMETER { get; set; }
        @AuraEnabled public Integer ROW { get; set; }
        @AuraEnabled public String FIELD { get; set; }
        @AuraEnabled public String SYSTEM_x { get; set; }

        public ET_MSG_OUT() {}
    }

    @AuraEnabled public haefeleCustomerCreate2.Z_HWWPIWS_CREATE_CUSTOMER Z_HWWPIWS_CREATE_CUSTOMER { get; set; }
    @AuraEnabled public haefeleCustomerCreate2.IS_COMPANYINFO IS_COMPANYINFO { get; set; }
    @AuraEnabled public haefeleCustomerCreate2.IS_CRM IS_CRM { get; set; }
    @AuraEnabled public list<haefeleCustomerCreate2.ET_MSG_OUT> ET_MSG_OUT { get; set; }

    public string inputSetName { get; set; }

    public haefeleCustomerCreate2 run() {
        overcast.Logger logger1 = createLogger();
        try {
            haefeleCustomerCreate2 response = this.run(logger1, null);
            logger1.commitToDatabase();
            return response;
        }
        catch (Exception e) {
            logger1.addLog('ERROR', e.getTypeName() + ': ' + e.getMessage());
            logger1.setStatusCode(300);
            logger1.commitToDatabase();
            throw e;
        }
    }
    
    public haefeleCustomerCreate2 run(overcast.Logger logger, string namedCredential) {
        overcast.SynchronousHandler sh = setup(logger, namedCredential);

        if (Test.isRunningTest()) {
            if (this.dynamicBody != null) {
                return this;
            }
            return haefeleCustomerCreate2.deserialize(this.testResponse);
        }
        overcast.EpgwController.ExecuteScenarioSynchronously(sh, logger);
        
        return haefeleCustomerCreate2.deserialize(sh.Response);
    }

    public string runAsync(overcast.Logger logger, string namedCredential, Continuation con) {
        overcast.SynchronousHandler sh = setup(logger, namedCredential);

        sh.ContinuationWebRequest = new HttpRequest();
        overcast.EpgwController.ExecuteScenarioSynchronously(sh, logger);

        return con.addHttpRequest(sh.ContinuationWebRequest);
    }

    public static haefeleCustomerCreate2 handleAsyncResponse(HttpResponse resp) {
        return haefeleCustomerCreate2.deserialize(resp.getBody());
    }

    public static haefeleCustomerCreate2 getAsyncResponse(String requestLabel) {
        HttpResponse response = Continuation.getResponse(requestLabel);
        return handleAsyncResponse(response);
    }

    private overcast.SynchronousHandler setup(overcast.Logger logger, string namedCredential) {
        overcast.SynchronousHandler sh = overcast.SynchronousHandler.CreateFromName('haefeleCustomerCreate2');

        sh.InputSetName = this.inputSetName;
        sh.InputJson = this.serialize();
        sh.NamedCredential = namedCredential;
        if (logger != null) {
            logger.setInputSetName(String.isBlank(this.inputSetName) ? sh.CorrelationId : this.inputSetName);
            logger.setIdemId(sh.CorrelationId);
        }
                sh.loadExtensions(this);

        return sh;
    }

    private static overcast.Logger createLogger() {
        return new overcast.Logger('haefeleCustomerCreate2');
    }

    global override string getBackendMessage() {
        return this.backendMessage;
    }

    global string serialize() {
        if (dynamicBody != null) {
            return JSON.serialize(dynamicBody, true);
        }
        return JSON.serialize(this, true);
    }

        
    public class BodyContents extends overcast.Realtime.ContentsBody {
        public haefeleCustomerCreate2 output { get; set; }
    }

    private static haefeleCustomerCreate2.BodyContents getBodyContents(string responseData) {
        if (string.isblank(responseData)) {
            throw new haefeleCustomerCreate2Exception('Response null for haefeleCustomerCreate2 request.');
        }

        haefeleCustomerCreate2.BodyContents contents = (haefeleCustomerCreate2.BodyContents) JSON.deserialize(responseData, haefeleCustomerCreate2.BodyContents.class);
        if (contents.error != null) {
            haefeleCustomerCreate2Exception ex = new haefeleCustomerCreate2Exception(string.join(contents.error, ';'));
            ex.setMessages(contents.error);
            ex.setBackendMessages(contents.backendErrorMessages == null ? new List<String>() : contents.backendErrorMessages);
            throw ex;
        }
        return contents;
    }

    public static haefeleCustomerCreate2 deserialize(string responsedata) {
        if (overcast.Globals.IsOCF) {
            haefeleCustomerCreate2 obj = new haefeleCustomerCreate2();
            obj.loadAsyncResponse(responsedata);
            return obj;
        }
        haefeleCustomerCreate2.BodyContents contents = getBodyContents(responsedata);
        contents.output.backendMessage = contents.backendMessage;

        return contents.output;
    }

    private static map<string, string> getOutputData(string responseData) {
        if (string.isblank(responsedata)) {
            throw new haefeleCustomerCreate2Exception('Response null for haefeleCustomerCreate2 request.');
        }

        map<string, string> m = new map<string, string>();

        JSONParser jresponse = JSON.createParser(responsedata);
        jresponse.nextValue();

        boolean hasOutput = false;
        string[] errors = null;
        string[] backendErrorMessages = null;
        while (jresponse.nextValue() != JSONToken.END_OBJECT && jresponse.getCurrentToken() != null) {
            if (jresponse.getCurrentName() == 'output') {
                jresponse.skipChildren();
                hasOutput = true;
                continue;
            }
            if (jresponse.getCurrentName() == 'backendMessage') {
                m.put('backendMessage', (string)jresponse.readValueAs(string.class));
                continue;
            }
            if (jresponse.getCurrentName() == 'error') {
                errors = (string[])jresponse.readValueAs(list<string>.class);
                jresponse.skipChildren();
                continue;
            }
            if (jresponse.getCurrentName() == 'backendErrorMessages') {
                backendErrorMessages = (string[])jresponse.readValueAs(list<string>.class);
                jresponse.skipChildren();
                continue;
            }
        }
        if (errors != null) {
            haefeleCustomerCreate2Exception ex = new haefeleCustomerCreate2Exception(string.join(errors, ';'));
            ex.setMessages(errors);
            ex.setBackendMessages(backendErrorMessages == null ? new List<String>() : backendErrorMessages);
            throw ex;
        }
        if (!hasOutput) {
            throw new haefeleCustomerCreate2Exception('Malformed response for haefeleCustomerCreate2 request.');
        }
        integer start = responsedata.indexOf(':') + 1;
        integer lastIndex = m.get('backendMessage') == null
            ? responsedata.length() - 2
            : responsedata.lastIndexOf('backendMessage');
        integer finish = responsedata.lastIndexOf('}', lastIndex) + 1;
        m.put('output', responseData.substring(start, finish));
        return m;
    }


    public transient string testResponse;
    private transient string outputData;
    private transient string backendMessage;

    private transient map<string, overcast.TypeInfo> metadata;
    private transient map<string, object> dynamicBody;

    global void loadAsyncResponse(string responseBody) {
        if (overcast.Globals.IsOCF) {
            if (string.isblank(responseBody)) {
                throw new haefeleCustomerCreate2Exception('Response null for haefeleCustomerCreate2 request.');
            }
            map<string, object> responseObj = (map<string, object>)JSON.deserializeUntyped(responseBody);
            if (responseObj.containsKey('error')) {
                throw new haefeleCustomerCreate2Exception((List<object>)responseObj.get('error'), (List<object>)responseObj.get('backendErrorMessages'));
            }
            backendMessage = (string)responseObj.get('backendMessage');
            dynamicBody = (map<string, object>)responseObj.get('output');
            return;
        }

        map<string, string> m = getOutputData(responseBody);
        outputData = m.get('output');
        backendMessage = m.get('backendMessage');
        
        if (outputData != null) {
            dynamicBody = (map<string, object>)JSON.deserializeUntyped(outputData);
        }
    }

    global string getTopTypeName() {
        return 'Z_HWWPIWS_CREATE_CUSTOMER';
    }

    global void set(string typeName, object records) {
        if (typeName == '@testResponse') {
            dynamicBody = (map<string, object>)records;
            return;
        }
        if (dynamicBody == null) {
            dynamicBody = new map<string, object>();
        }
        
        dynamicBody.put(typeName, records);
    }
    
    global object get(string typeName) {
        if (dynamicBody == null && outputData != null) {
            dynamicBody = (map<string, object>)JSON.deserializeUntyped(outputData);
        }
        if (dynamicBody == null) { 
            return null;
        }
        return dynamicBody.get(typeName);
    }

    global map<string, overcast.TypeInfo> getMetadata() {
        if (metadata == null) {
            metadata = new Map<String, overcast.TypeInfo>();
            metadata.putAll(haefeleCustomerCreate2Meta0.metadata);
        }
        return metadata;
    }

}