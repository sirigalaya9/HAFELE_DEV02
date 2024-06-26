global class sapInvoiceDetailMeta0 {
/* 
 * Generated by Overcast UTC 2024-03-12 09:38:01Z.
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
        'BAPI_WEBINVOICE_GETDETAIL' => new overcast.TypeInfo('BAPI_WEBINVOICE_GETDETAIL', '', SS, DI,
            new Map<String, overcast.FieldInfo> {
                'PARTNER_NUMBER' => fi('PARTNER_NUMBER', 'Partner number', TS, 10, DI),
                'PARTNER_ROLE' => fi('PARTNER_ROLE', 'Partner function', TS, 2, DI),
                'BILLINGDOC' => fi('BILLINGDOC', 'Billing document', TS, 10, DI),
                'LANGU' => fi('LANGU', 'Language key', TS, 1, DI)
            }
        ),
        'WEBINVOICEDOCUMENT' => new overcast.TypeInfo('WEBINVOICEDOCUMENT', 'Billing document', SS, DOx,
            new Map<String, overcast.FieldInfo> {
                'BILLINGDOC' => fi('BILLINGDOC', 'Billing Doc.', TS, 10, DOx),
                'BILL_TYPE' => fi('BILL_TYPE', 'Billing Type', TS, 4, DOx),
                'BILL_TYPE_TEXT' => fi('BILL_TYPE_TEXT', 'Description', TS, 20, DOx),
                'BILLCATEG' => fi('BILLCATEG', 'BillingCategory', TS, 1, DOx),
                'BILLCATEG_TEXT' => fi('BILLCATEG_TEXT', 'Short text', TS, 60, DOx),
                'SD_DOC_CAT' => fi('SD_DOC_CAT', 'Document cat.', TS, 1, DOx),
                'SD_DOC_CAT_TEXT' => fi('SD_DOC_CAT_TEXT', 'Short text', TS, 60, DOx),
                'CURRENCY_x' => fi('CURRENCY_x', 'Doc. Currency', TS, 5, DOx),
                'CURRENCY_ISO' => fi('CURRENCY_ISO', 'ISO Code', TS, 3, DOx),
                'NET_VALUE' => fi('NET_VALUE', 'Net Value', TDC, 15,2, DOx),
                'SOLD_TO' => fi('SOLD_TO', 'Sold-To Party', TS, 10, DOx),
                'PAYER' => fi('PAYER', 'Payer', TS, 10, DOx),
                'TAX_AMOUNT' => fi('TAX_AMOUNT', 'Tax amount', TDC, 13,2, DOx),
                'CANCELLED' => fi('CANCELLED', 'Cancelled', TS, 1, DOx),
                'BILL_DATE' => fi('BILL_DATE', 'Billing Date', TD, 8, DOx),
                'INCOTERMS1' => fi('INCOTERMS1', 'Incoterms', TS, 3, DOx),
                'INCOTERMS1_TEXT' => fi('INCOTERMS1_TEXT', 'Description', TS, 30, DOx),
                'INCOTERMS2' => fi('INCOTERMS2', 'Incoterms 2', TS, 28, DOx),
                'PMNTTRMS' => fi('PMNTTRMS', 'Pyt Terms', TS, 4, DOx),
                'PMNTTRMS_TEXT' => fi('PMNTTRMS_TEXT', 'Description', TS, 30, DOx),
                'COMP_CODE' => fi('COMP_CODE', 'Company Code', TS, 4, DOx),
                'COMP_NAME' => fi('COMP_NAME', 'Company Name', TS, 25, DOx),
                'REFERENCE' => fi('REFERENCE', 'Reference no.', TS, 16, DOx),
                'BLINE_DATE' => fi('BLINE_DATE', 'Baseline Date', TD, 8, DOx),
                'DSCT_DATE1' => fi('DSCT_DATE1', 'Cash discount 1', TD, 8, DOx),
                'DSCT_DATE2' => fi('DSCT_DATE2', 'Cash discount 2', TD, 8, DOx),
                'NET_DATE' => fi('NET_DATE', 'Net date', TD, 8, DOx),
                'DSCT_PCT1' => fi('DSCT_PCT1', 'Disc.percent 1', TDC, 5,3, DOx),
                'DSCT_PCT2' => fi('DSCT_PCT2', 'Disc.percent 2', TDC, 5,3, DOx),
                'INCOTERMSV' => fi('INCOTERMSV', 'Inco. Version', TS, 4, DOx),
                'INCOTERMS2L' => fi('INCOTERMS2L', 'Inco. Location1', TS, 70, DOx),
                'INCOTERMS3L' => fi('INCOTERMS3L', 'Inco. Location2', TS, 70, DOx),
                'SD_DOC_CAT_LONG' => fi('SD_DOC_CAT_LONG', 'Document Cat.', TS, 4, DOx),
                'INCOTERMSV_TEXT' => fi('INCOTERMSV_TEXT', 'Description', TS, 30, DOx)
            }
        ),
        'RETURN_x' => new overcast.TypeInfo('RETURN_x', 'Return Parameter', SS, DOx,
            new Map<String, overcast.FieldInfo> {
                'TYPE_x' => fi('TYPE_x', 'Message type', TS, 1, DOx),
                'ID' => fi('ID', 'Message Class', TS, 20, DOx),
                'NUMBER_x' => fi('NUMBER_x', 'Message number', TS, 3, DOx),
                'MESSAGE' => fi('MESSAGE', 'Message text', TS, 220, DOx),
                'LOG_NO' => fi('LOG_NO', 'Log Number', TS, 20, DOx),
                'LOG_MSG_NO' => fi('LOG_MSG_NO', 'Message Number', TS, 6, DOx),
                'MESSAGE_V1' => fi('MESSAGE_V1', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V2' => fi('MESSAGE_V2', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V3' => fi('MESSAGE_V3', 'Message Variable', TS, 50, DOx),
                'MESSAGE_V4' => fi('MESSAGE_V4', 'Message Variable', TS, 50, DOx),
                'PARAMETER' => fi('PARAMETER', 'Parameter Name', TS, 32, DOx),
                'ROW' => fi('ROW', 'Parameter line', TI, 10, DOx),
                'FIELD' => fi('FIELD', 'Field name', TS, 30, DOx),
                'SYSTEM_x' => fi('SYSTEM_x', 'Logical system', TS, 10, DOx)
            }
        ),
        'WEBINVOICEITEMS' => new overcast.TypeInfo('WEBINVOICEITEMS', 'Items for Billing Document', ST, DB,
            new Map<String, overcast.FieldInfo> {
                'BILLINGDOC' => fi('BILLINGDOC', 'Billing Doc.', TS, 10, DB),
                'ITEM_NUMBER' => fi('ITEM_NUMBER', 'Item', TS, 6, DB),
                'HG_LV_ITEM' => fi('HG_LV_ITEM', 'Higher-lev.item', TS, 6, DB),
                'INV_QTY' => fi('INV_QTY', 'Invoiced Qty', TDC, 13,3, DB),
                'SALES_UNIT' => fi('SALES_UNIT', 'Sales Unit', TS, 3, DB),
                'SALES_UNIT_ISO' => fi('SALES_UNIT_ISO', 'Sales unit ISO', TS, 3, DB),
                'NETVAL_INV' => fi('NETVAL_INV', 'Net value', TDC, 15,2, DB),
                'REF_DOC_NUMBER' => fi('REF_DOC_NUMBER', 'Reference Doc.', TS, 10, DB),
                'REF_DOC_ITEM' => fi('REF_DOC_ITEM', 'Reference Item', TS, 6, DB),
                'REF_DOC_CAT' => fi('REF_DOC_CAT', 'Prec.doc.categ.', TS, 1, DB),
                'REF_DOC_CAT_TEXT' => fi('REF_DOC_CAT_TEXT', 'Short text', TS, 60, DB),
                'SD_DOC_NUMBER' => fi('SD_DOC_NUMBER', 'Sales Document', TS, 10, DB),
                'SD_DOC_ITEM' => fi('SD_DOC_ITEM', 'Item', TS, 6, DB),
                'SD_DOC_REF' => fi('SD_DOC_REF', 'SalesDocumentRefer', TS, 1, DB),
                'SD_DOC_CAT' => fi('SD_DOC_CAT', 'Document cat.', TS, 1, DB),
                'SD_DOC_CAT_TEXT' => fi('SD_DOC_CAT_TEXT', 'Short text', TS, 60, DB),
                'MATERIAL' => fi('MATERIAL', 'Material', TS, 18, DB),
                'SHORT_TEXT' => fi('SHORT_TEXT', 'Description', TS, 40, DB),
                'ITEM_TYPE' => fi('ITEM_TYPE', 'Item type', TS, 1, DB),
                'ITEM_TYPE_TEXT' => fi('ITEM_TYPE_TEXT', 'Short text', TS, 60, DB),
                'ITEM_CATEG' => fi('ITEM_CATEG', 'Item Category', TS, 4, DB),
                'ITEM_CATEG_TEXT' => fi('ITEM_CATEG_TEXT', 'Description', TS, 20, DB),
                'DIVISION' => fi('DIVISION', 'Division', TS, 2, DB),
                'DIVISION_TEXT' => fi('DIVISION_TEXT', 'Name', TS, 20, DB),
                'PLANT' => fi('PLANT', 'Plant', TS, 4, DB),
                'PLANT_NAME' => fi('PLANT_NAME', 'Name 1', TS, 30, DB),
                'CASH_DISC' => fi('CASH_DISC', 'Cash discount', TS, 1, DB),
                'CSHDISCBAS' => fi('CSHDISCBAS', 'Csh.disc.bas', TDC, 13,2, DB),
                'RETURNS' => fi('RETURNS', 'Returns', TS, 1, DB),
                'EAN_UPC' => fi('EAN_UPC', 'EAN/UPC', TS, 18, DB),
                'TAXJURCODE' => fi('TAXJURCODE', 'Tax Jur.', TS, 15, DB),
                'TAX_AMOUNT' => fi('TAX_AMOUNT', 'Tax amount', TDC, 13,2, DB),
                'ITEM_TEXT' => fi('ITEM_TEXT', 'Text', TS, 50, DB),
                'BRVAL_INV' => fi('BRVAL_INV', 'Gross value', TDC, 15,2, DB),
                'STVAL_INV' => fi('STVAL_INV', 'Cost', TDC, 13,2, DB),
                'COND_SUBTOTAL1' => fi('COND_SUBTOTAL1', 'Subtotal 1', TDC, 13,2, DB),
                'COND_SUBTOTAL2' => fi('COND_SUBTOTAL2', 'Subtotal 2', TDC, 13,2, DB),
                'COND_SUBTOTAL3' => fi('COND_SUBTOTAL3', 'Subtotal 3', TDC, 13,2, DB),
                'COND_SUBTOTAL4' => fi('COND_SUBTOTAL4', 'Subtotal 4', TDC, 13,2, DB),
                'COND_SUBTOTAL5' => fi('COND_SUBTOTAL5', 'Subtotal 5', TDC, 13,2, DB),
                'COND_SUBTOTAL6' => fi('COND_SUBTOTAL6', 'Subtotal 6', TDC, 13,2, DB),
                'REF_DOC_CAT_LONG' => fi('REF_DOC_CAT_LONG', 'Document Cat.', TS, 4, DB),
                'SD_DOC_CAT_LONG' => fi('SD_DOC_CAT_LONG', 'Document Cat.', TS, 4, DB),
                'MATERIAL_LONG' => fi('MATERIAL_LONG', 'Material', TS, 40, DB)
            }
        ),
        'WEBINVOICEPARTNERS' => new overcast.TypeInfo('WEBINVOICEPARTNERS', 'Partner Data and Addresses for Billing Document', ST, DB,
            new Map<String, overcast.FieldInfo> {
                'PARTN_ROLE' => fi('PARTN_ROLE', 'Partner Functn', TS, 2, DB),
                'PARTN_ROLE_TEXT' => fi('PARTN_ROLE_TEXT', 'Name', TS, 20, DB),
                'CUSTOMER' => fi('CUSTOMER', 'Customer', TS, 10, DB),
                'FORMOFADDR' => fi('FORMOFADDR', 'Form of address', TS, 15, DB),
                'NAME' => fi('NAME', 'Name', TS, 35, DB),
                'NAME_2' => fi('NAME_2', 'Name 2', TS, 35, DB),
                'NAME_3' => fi('NAME_3', 'Name 3', TS, 35, DB),
                'NAME_4' => fi('NAME_4', 'Name 4', TS, 35, DB),
                'STREET' => fi('STREET', 'Street', TS, 35, DB),
                'COUNTRY' => fi('COUNTRY', 'Country', TS, 3, DB),
                'COUNTRY_ISO' => fi('COUNTRY_ISO', 'Country ISO', TS, 2, DB),
                'POSTL_CODE' => fi('POSTL_CODE', 'Postal Code', TS, 10, DB),
                'POBX_PCD' => fi('POBX_PCD', 'PO Box PCode', TS, 10, DB),
                'POBX_CTY' => fi('POBX_CTY', 'P.O.Box city', TS, 35, DB),
                'CITY' => fi('CITY', 'City', TS, 35, DB),
                'DISTRICT' => fi('DISTRICT', 'District', TS, 35, DB),
                'REGION' => fi('REGION', 'Region', TS, 3, DB),
                'REGION_TEXT' => fi('REGION_TEXT', 'Description', TS, 20, DB),
                'CITY_CODE' => fi('CITY_CODE', 'City Code', TS, 4, DB),
                'CITY_CODE_TEXT' => fi('CITY_CODE_TEXT', 'Description', TS, 20, DB),
                'COUNTRY_CDE' => fi('COUNTRY_CDE', 'County Code', TS, 3, DB),
                'COUNTRY_CDE_TEXT' => fi('COUNTRY_CDE_TEXT', 'Description', TS, 20, DB),
                'PO_BOX' => fi('PO_BOX', 'PO Box', TS, 10, DB),
                'TELEPHONE' => fi('TELEPHONE', 'Telephone 1', TS, 16, DB),
                'TELEPHONE2' => fi('TELEPHONE2', 'Telephone 2', TS, 16, DB),
                'TELEBOX' => fi('TELEBOX', 'Telebox', TS, 15, DB),
                'FAX_NUMBER' => fi('FAX_NUMBER', 'Fax Number', TS, 31, DB),
                'TELETEX' => fi('TELETEX', 'Teletex', TS, 30, DB),
                'TELEX' => fi('TELEX', 'Telex', TS, 30, DB),
                'TRANSPZONE' => fi('TRANSPZONE', 'Transport Zone', TS, 10, DB),
                'TRANSPZONE_TEXT' => fi('TRANSPZONE_TEXT', 'Description', TS, 20, DB),
                'HOUSE_NO' => fi('HOUSE_NO', 'House number', TS, 6, DB),
                'GENDER' => fi('GENDER', 'Gender', TS, 1, DB),
                'GENDER_TEXT' => fi('GENDER_TEXT', 'Short text', TS, 60, DB),
                'NAME_LIST' => fi('NAME_LIST', 'Name', TS, 35, DB)
            }
        )
    };
}