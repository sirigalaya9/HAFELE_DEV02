// This class allows advanced customizations for the mapping of records from haefeleSalesDataMaterialDS_MVKE__c to ovcSapMaterialRep_MARAV__c.
// This class is constructed and executed each batch. Your class fields and properties will loose their values after each batch is complete.
// To retain data for the lifetime of the whole batch process, set the property persistentState.
// 
// Scenario: haefeleSalesDataMaterialDS
// Source Object: haefeleSalesDataMaterialDS_MVKE__c
// Target Object: ovcSapMaterialRep_MARAV__c
// Mapping Record Name: MVKE_to_MARAV
// Direction: Inbound
// 
// Generated by Overcast 2023-10-16 10:44:38Z
// Your changes will not be overwritten when resaving the mapping.
//
global class Mapping_MVKE_to_MARAV extends overcast.ObjectMapping.PluginExtension implements overcast.ObjectMapping.EventPlugin, overcast.ObjectMapping.BatchableEventPlugin {

//CUSTOM CODE Start
   //Setting a the target scenario to be chained and the Input Set name
   static final String chainedScenario = 'ovcSapMaterialRep';
   static final String targetInputSetName = 'AU_only';
   Set<String> myMATNRs = new Set<String>();
//CUSTOM CODE End
    
    
    
    // Base class properties (Do not uncomment these properties.)
    //
    // Set perisistentState with your own object/data to retain any state for the duration of the batch job.
    // global Object persistentState
    global void execute(overcast__Run__c scenarioExecution, haefeleSalesDataMaterialDS_MVKE__c[] records) {
        m_logger = new overcast.Logger(scenarioExecution.Id);

        overcast.ObjectMapping.MappingConfig config = new overcast.ObjectMapping.MappingConfig('haefeleSalesDataMaterialDS_MVKE__c', records);
        config.rollbackOnError = false;
        // config.dmlOptions = new Database.DmlOptions(); // If set, config.dmlOptions will be used for the DML operations.
        // config.batchSize = 200; // Also set in UI. Allows dynamic setting of batch size.
        config.eventplugin = this;
        config.mappings = [SELECT overcast__Name__c, overcast__Target__c, overcast__Map__c, overcast__Joins__c, overcast__BatchSize__c
                    FROM overcast__IntegrationFieldMap__c 
                    WHERE overcast__ApexClass__c = 'Mapping_MVKE_to_MARAV'];
        config.logger = m_logger;
        config.scenarioExecution = scenarioExecution;
        
        // Perform your pre-mapping processing here. Perform mid-mapping processing in beforeUpsert().
    
        // Run main mapping process.
        overcast.ObjectMapping.run(config);
        
        // Perform your post-mapping processing here.

//CUSTOM CODE Start
        //Prepare the target scenario to be called asynchronously
        if (!myMATNRs.isEmpty()) {
            // Replicate the equipment details via chained scenario
            logInfo(String.format('Enqueueing scenario [{0}] for {1} MATNRs', new List<String>{ chainedScenario, String.valueOf(myMATNRs.size()) }));
            overcast.Predicate p = new overcast.Predicate('MATNR__c', overcast.Predicate.FilterType.IN1, new List<String>(myMATNRs));
            overcast.Scenario.runWithDynamicInput(chainedScenario, targetInputSetName, p, overcast.Predicate.FilterType.AND1, m_logger);
        }
//CUSTOM CODE End
        
        
        // Finish processing for batch.
        this.saveLogs();
    }

    // BeforeUpsert is called for each record that will be inserted/updated into the target object.
    // If the target record has an ID it will be updated, otherwise inserted.
    // Return true to accept the record for insert/update. False to reject the record.
    global boolean beforeUpsert(sobject sourceRecord, sobject targetRecord) {
//CUSTOM CODE Start 
        haefeleSalesDataMaterialDS_MVKE__c source = (haefeleSalesDataMaterialDS_MVKE__c)sourceRecord;
        ovcSapMaterialRep_MARAV__c target = (ovcSapMaterialRep_MARAV__c)targetRecord;

 		//add MATNRs to Set
        myMATNRs.add(source.MATNR__c);

        target.Name = targetInputSetName;

        //set return to false
        return false;
//CUSTOM CODE End   



//        return source.ovcMapThisRecord__c;
    }
    
    // AfterInsert is called after both insert and update DML operations are successful. 
    // If rollbackOnError is true and a DML exception occurs when inserting or updating, the transaction is rolled back and AfterInsert is not called.
    // If rollbackOnError is false and a DML exception occurs when inserting or updating, AfterInsert is called and saveResults will contain the error messages.
    global void afterInsert(sobject[] insertedRecords, Database.SaveResult[] saveResults) { 
        integer failedCount = 0;
        for (integer i = 0; i < saveResults.size(); ++i) {
            Database.Saveresult saveResult = saveResults[i];
            
            if (!saveResult.isSuccess()) {
                sobject insertedRecord = insertedRecords[i];
                list<string> fieldErrors = new list<string>(); 
                for (string fieldName : saveResult.getErrors()[0].getFields()) {
                    fieldErrors.add(fieldName + '=' + string.valueof(insertedRecord.get(fieldName)));
                }
                
                LogError(string.format('Failed to save record [ID={0}, Message={1}:{2}, {3}]', 
                    new string[]{
                        insertedRecord.Id, 
                        string.valueof(saveResult.getErrors()[0].getStatusCode()), 
                        saveResult.getErrors()[0].getMessage(), 
                        string.join(fieldErrors, ', ')
                    }));
                
                ++failedCount;
            }
        }
        if (failedCount > 0) {
            logError(string.format('{0} of {1} records failed to save.', 
                new string[]{ 
                    string.valueof(failedCount), 
                    string.valueof(insertedRecords.size()) 
                }));
            setStatusToError();
        }
    }
    
    // AfterUpdate Is called after both insert And update DML operations are successful. 
    // If rollbackOnError is true and a DML exception occurs when inserting or updating, the transaction is rolled back and AfterUpdate is not called.
    // If rollbackOnError is false and a DML exception occurs when inserting or updating, AfterUpdate is called and saveResults will contain the error messages.
    global void afterUpdate(sobject[] updatedRecords, Database.SaveResult[] saveResults) {  
        afterInsert(updatedRecords, saveResults);
    }
  
    // Begin helper methods.
        
    // Log an error message to the scenario execution log.
    global void logError(String message) {
        m_logger.addLog('ERROR', '[Mapping_MVKE_to_MARAV] ' + message);
    }
    
    // Log an warning message to the scenario execution log.
    global void logWarning(String message) {
        m_logger.addLog('WARN', '[Mapping_MVKE_to_MARAV] ' + message);
    }
    
    // Log an info message to the scenario execution log.
    global void logInfo(String message) {
        m_logger.addLog('INFO', '[Mapping_MVKE_to_MARAV] ' + message);
    }

    // Log a debug message to the scenario execution log.
    global void logDebug(String message) {
        m_logger.addLog('DEBUG', '[Mapping_MVKE_to_MARAV] ' + message);
    }
    
    // Set the scenario execution status to error.
    global void setStatusToError() {
        m_logger.setStatusCode(400);
    }
    
    // Set the scenario execution status to warning.
    global void setStatusToWarning() {
        m_logger.setStatusCode(500);
    }
    
    global void saveLogs() {
        m_logger.commitToDatabase();
    }
    
    // End helper methods.

    @testvisible
    private overcast.Logger m_logger;

    global override overcast.Logger getLogger() {
        return m_logger;
    }  
}