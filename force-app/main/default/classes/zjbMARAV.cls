global class zjbMARAV extends overcast.Realtime.ScenarioExtension implements overcast.Realtime.Queryable {
/* 
 * Generated by Overcast UTC 2024-03-13 13:57:54Z.
 * This class belongs to the zjbMARAV Real-time Integration Scenario.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */
     global class zjbMARAVException extends overcast.Realtime.ScenarioException {
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

        public zjbMARAVException(List<object> messages, List<object> backendMessages) {
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
    global zjbMARAV() {
        this.MARAV = new list<zjbMARAV.MARAV>();
    }

    public class MARAV {
        @AuraEnabled public String MATNR { get; set; }
        @AuraEnabled public String SPRAS { get; set; }
        @AuraEnabled public Date ERSDA { get; set; }
        @AuraEnabled public String ERNAM { get; set; }
        @AuraEnabled public Date LAEDA { get; set; }
        @AuraEnabled public String AENAM { get; set; }
        @AuraEnabled public String LVORM { get; set; }
        @AuraEnabled public String MTART { get; set; }
        @AuraEnabled public String MATKL { get; set; }
        @AuraEnabled public String BISMT { get; set; }
        @AuraEnabled public String MEINS { get; set; }
        @AuraEnabled public String BSTME { get; set; }
        @AuraEnabled public String SPART { get; set; }
        @AuraEnabled public String PRDHA { get; set; }
        @AuraEnabled public String MAKTX { get; set; }
        @AuraEnabled public String MSTAE { get; set; }
        @AuraEnabled public String MTPOS_MARA { get; set; }

        public MARAV() {}
    }

    @AuraEnabled public list<zjbMARAV.MARAV> MARAV { get; set; }

    public string inputSetName { get; set; }

    public zjbMARAV runQuery(overcast.Query query) {
        overcast.Logger logger1 = createLogger();
        try {
            zjbMARAV response = this.runQuery(query, logger1, null);
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

    public zjbMARAV runQuery(overcast.Query query, overcast.Logger logger, string namedCredential) {
        return run(overcast.SynchronousHandler.OperationType.EpgwSelect, query, logger, namedCredential);
    }

    public string runQueryAsync(overcast.Query query, overcast.Logger logger, string namedCredential, Continuation con) {
        return runAsync(overcast.SynchronousHandler.OperationType.EpgwSelect, query, logger, namedCredential, con);
    }

    public static zjbMARAV getAsyncResponse(String requestLabel) {
        HttpResponse response = Continuation.getResponse(requestLabel);
        return zjbMARAV.deserialize(response.getBody());
    }

    private overcast.SynchronousHandler setup(overcast.SynchronousHandler.OperationType operation, overcast.Query query, overcast.Logger logger, string namedCredential) {
        overcast.SynchronousHandler sh = overcast.SynchronousHandler.CreateFromName('zjbMARAV');
        sh.InputSetName = this.inputSetName;
        sh.InputJson = this.serialize();
        sh.NamedCredential = namedCredential;
        if (logger != null) {
            logger.setInputSetName(String.isBlank(this.inputSetName) ? sh.CorrelationId : this.inputSetName);
            logger.setIdemId(sh.CorrelationId);
        }
        sh.Operation = operation;
        
        if (query != null) {
            sh.query = query;
        }

        sh.loadExtensions(this);

        return sh;
    }
    
    private zjbMARAV run(overcast.SynchronousHandler.OperationType operation, overcast.Query query, overcast.Logger logger, string namedCredential) {
        overcast.SynchronousHandler sh = setup(operation, query, logger, namedCredential);

        if (Test.isRunningTest()) {
            if (this.dynamicBody != null) {
                return this;
            }
            return zjbMARAV.deserialize(this.testResponse);
        }
        overcast.EpgwController.ExecuteScenarioSynchronously(sh, logger);

        return zjbMARAV.deserialize(sh.Response);
    }

    private string runAsync(overcast.SynchronousHandler.OperationType operation, overcast.Query query, overcast.Logger logger, string namedCredential, Continuation con) {
        overcast.SynchronousHandler sh = setup(operation, query, logger, namedCredential);

        sh.ContinuationWebRequest = new HttpRequest();

        overcast.EpgwController.ExecuteScenarioSynchronously(sh, logger);

        return con.addHttpRequest(sh.ContinuationWebRequest);
    }
        

    private static overcast.Logger createLogger() {
        return new overcast.Logger('zjbMARAV');
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
        public zjbMARAV output { get; set; }
    }

    private static zjbMARAV.BodyContents getBodyContents(string responseData) {
        if (string.isblank(responseData)) {
            throw new zjbMARAVException('Response null for zjbMARAV request.');
        }

        zjbMARAV.BodyContents contents = (zjbMARAV.BodyContents) JSON.deserialize(responseData, zjbMARAV.BodyContents.class);
        if (contents.error != null) {
            zjbMARAVException ex = new zjbMARAVException(string.join(contents.error, ';'));
            ex.setMessages(contents.error);
            ex.setBackendMessages(contents.backendErrorMessages == null ? new List<String>() : contents.backendErrorMessages);
            throw ex;
        }
        return contents;
    }

    public static zjbMARAV deserialize(string responsedata) {
        if (overcast.Globals.IsOCF) {
            zjbMARAV obj = new zjbMARAV();
            obj.loadAsyncResponse(responsedata);
            return obj;
        }
        zjbMARAV.BodyContents contents = getBodyContents(responsedata);
        contents.output.backendMessage = contents.backendMessage;

        return contents.output;
    }

    private static map<string, string> getOutputData(string responseData) {
        if (string.isblank(responsedata)) {
            throw new zjbMARAVException('Response null for zjbMARAV request.');
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
            zjbMARAVException ex = new zjbMARAVException(string.join(errors, ';'));
            ex.setMessages(errors);
            ex.setBackendMessages(backendErrorMessages == null ? new List<String>() : backendErrorMessages);
            throw ex;
        }
        if (!hasOutput) {
            throw new zjbMARAVException('Malformed response for zjbMARAV request.');
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
                throw new zjbMARAVException('Response null for zjbMARAV request.');
            }
            map<string, object> responseObj = (map<string, object>)JSON.deserializeUntyped(responseBody);
            if (responseObj.containsKey('error')) {
                throw new zjbMARAVException((List<object>)responseObj.get('error'), (List<object>)responseObj.get('backendErrorMessages'));
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
        return 'MARAV';
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
            metadata.putAll(zjbMARAVMeta0.metadata);
        }
        return metadata;
    }

}