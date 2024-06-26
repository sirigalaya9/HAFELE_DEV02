global class sapMaterialAvailabilityMeta0 {
/* 
 * Generated by Overcast UTC 2024-03-12 09:51:19Z.
 * Changes to this class may cause incorrect behavior and will be lost if the scenario is re-activated.
 */

    static overcast.Realtime.StructureType SS = overcast.Realtime.StructureType.STRUCTURE;
    static overcast.Realtime.StructureType ST = overcast.Realtime.StructureType.TABLE;

    static overcast.Realtime.Direction DI = overcast.Realtime.Direction.INPUT;
    static overcast.Realtime.Direction DOx = overcast.Realtime.Direction.OUTPUT;
    static overcast.Realtime.Direction DB = overcast.Realtime.Direction.BOTH;
    
    static overcast.Realtime.ApexType TS = overcast.Realtime.ApexType.STRINGX;
    static overcast.Realtime.ApexType TI = overcast.Realtime.ApexType.INTEGERX;
    static overcast.Realtime.ApexType TL = overcast.Realtime.ApexType.LONGX;
    static overcast.Realtime.ApexType TB = overcast.Realtime.ApexType.BOOLEANX;
    static overcast.Realtime.ApexType TD = overcast.Realtime.ApexType.DATEX;
    static overcast.Realtime.ApexType TDT = overcast.Realtime.ApexType.DATETIMEX;
    static overcast.Realtime.ApexType TDC = overcast.Realtime.ApexType.DECIMALX;
    static overcast.Realtime.ApexType TDBL = overcast.Realtime.ApexType.DOUBLEX;
    static overcast.Realtime.ApexType TT = overcast.Realtime.ApexType.TIMEX;
    static overcast.Realtime.ApexType TBLB = overcast.Realtime.ApexType.BLOBX;

    static overcast.FieldInfo fi(String a, String b, overcast.Realtime.ApexType c, Integer d, overcast.Realtime.Direction e) {
        return new overcast.FieldInfo(a, b, c, d, e);
    }

    static overcast.FieldInfo fi(String a, String b, overcast.Realtime.ApexType c, Integer d, Integer e, overcast.Realtime.Direction f) {
        return new overcast.FieldInfo(a, b, c, d, e, f);
    }

    public static Map<String, overcast.TypeInfo> metadata = new Map<String, overcast.TypeInfo> {
        'BAPI_MATERIAL_AVAILABILITY' => new overcast.TypeInfo('BAPI_MATERIAL_AVAILABILITY', '', SS, DB,
            new Map<String, overcast.FieldInfo> {
                'PLANT' => fi('PLANT', 'Plant', TS, 4, DI),
                'MATERIAL' => fi('MATERIAL', 'Material number', TS, 18, DI),
                'UNIT' => fi('UNIT', 'Unit of measure for display', TS, 3, DI),
                'CHECK_RULE' => fi('CHECK_RULE', 'Checking rule', TS, 2, DI),
                'STGE_LOC' => fi('STGE_LOC', 'Storage location', TS, 4, DI),
                'BATCH' => fi('BATCH', 'Batch', TS, 10, DI),
                'CUSTOMER' => fi('CUSTOMER', 'Customer number', TS, 10, DI),
                'DOC_NUMBER' => fi('DOC_NUMBER', 'Document number', TS, 10, DI),
                'ITM_NUMBER' => fi('ITM_NUMBER', 'Item number', TS, 6, DI),
                'WBS_ELEM' => fi('WBS_ELEM', 'WBS Element', TS, 24, DI),
                'STOCK_IND' => fi('STOCK_IND', 'Special Stock Indicator', TS, 1, DI),
                'DEC_FOR_ROUNDING' => fi('DEC_FOR_ROUNDING', 'No. of decimal places to which rounding should be performed', TI, 5, DI),
                'DEC_FOR_ROUNDING_X' => fi('DEC_FOR_ROUNDING_X', 'Updated information in related user data field', TS, 1, DI),
                'READ_ATP_LOCK' => fi('READ_ATP_LOCK', 'Control indicator for availability check', TS, 1, DI),
                'READ_ATP_LOCK_X' => fi('READ_ATP_LOCK_X', 'Updated information in related user data field', TS, 1, DI),
                'SGT_RCAT' => fi('SGT_RCAT', 'Requirement Segment', TS, 16, DI),
                'MATERIAL_LONG' => fi('MATERIAL_LONG', 'MATERIAL_LONG', TS, 40, DI),
                'ENDLEADTME' => fi('ENDLEADTME', 'End of replenishment lead time', TD, 8, DOx),
                'AV_QTY_PLT' => fi('AV_QTY_PLT', 'Quantity available at plant level', TDC, 13,3, DOx),
                'DIALOGFLAG' => fi('DIALOGFLAG', 'Indicator (X = not available, N = no check)', TS, 1, DOx)
            }
        ),
        'MATERIAL_EVG' => new overcast.TypeInfo('MATERIAL_EVG', '', SS, DI,
            new Map<String, overcast.FieldInfo> {
                'MATERIAL_EXT' => fi('MATERIAL_EXT', 'Material Number', TS, 40, DI),
                'MATERIAL_VERS' => fi('MATERIAL_VERS', 'Version Number', TS, 10, DI),
                'MATERIAL_GUID' => fi('MATERIAL_GUID', 'GUID (material)', TS, 32, DI)
            }
        ),
        'RETURN_x' => new overcast.TypeInfo('RETURN_x', '', SS, DOx,
            new Map<String, overcast.FieldInfo> {
                'TYPE_x' => fi('TYPE_x', 'Message type', TS, 1, DOx),
                'CODE' => fi('CODE', 'Message code', TS, 5, DOx),
                'MESSAGE' => fi('MESSAGE', 'Message text', TS, 220, DOx),
                'LOG_NO' => fi('LOG_NO', 'Log Number', TS, 20, DOx),
                'LOG_MSG_NO' => fi('LOG_MSG_NO', 'Message Number', TS, 6, DOx),
                'MESSAGE_V1' => fi('MESSAGE_V1', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V2' => fi('MESSAGE_V2', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V3' => fi('MESSAGE_V3', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V4' => fi('MESSAGE_V4', 'Message Variable', TS, 50, DOx)
            }
        ),
        'WMDVSX' => new overcast.TypeInfo('WMDVSX', 'Input table (date and quantity)', ST, DB,
            new Map<String, overcast.FieldInfo> {
                'REQ_DATE' => fi('REQ_DATE', 'Reqmts date', TD, 8, DB),
                'REQ_QTY' => fi('REQ_QTY', 'Requirement qty', TDC, 13,3, DB),
                'DELKZ' => fi('DELKZ', 'MRP elmnt ind.', TS, 2, DB),
                'YLINE' => fi('YLINE', 'Line index for internal table processing', TI, 10, DB)
            }
        ),
        'WMDVEX' => new overcast.TypeInfo('WMDVEX', 'Output table (date and ATP quantity)', ST, DB,
            new Map<String, overcast.FieldInfo> {
                'BDCNT' => fi('BDCNT', 'numc5', TS, 5, DB),
                'REQ_DATE' => fi('REQ_DATE', 'Reqmts date', TD, 8, DB),
                'REQ_QTY' => fi('REQ_QTY', 'Requirement qty', TDC, 13,3, DB),
                'COM_DATE' => fi('COM_DATE', 'Committed date', TD, 8, DB),
                'COM_QTY' => fi('COM_QTY', 'Committed Qty', TDC, 13,3, DB)
            }
        )
    };
}