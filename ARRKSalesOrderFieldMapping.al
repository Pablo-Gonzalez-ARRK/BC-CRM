namespace DefaultPublisher.HelloWorld;

using Microsoft.Sales.Document;
using Microsoft.Integration.D365Sales;
using Microsoft.Integration.SyncEngine;

codeunit 57108 "ARRK Sales Order Field Mapping"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CRM Setup Defaults", 'OnAfterResetConfiguration', '', false, false)]
    local procedure AddARRKSalesLineFieldMappings()
    var
        IntegrationFieldMapping: Record "Integration Field Mapping";
        SalesLine: Record "Sales Line";
        CRMSalesOrderDetail: Record "CRM Sales Order Detail";
    begin
        // ARRK Notes
        InsertFieldMapping(IntegrationFieldMapping,
            SalesLine.FieldNo("ARRK Notes"),
            CRMSalesOrderDetail.FieldNo("ARRK Notes"));

        // ARRK Unit Cost
        InsertFieldMapping(IntegrationFieldMapping,
            SalesLine.FieldNo("ARRK Unit Cost"),
            CRMSalesOrderDetail.FieldNo("ARRK Unit Cost"));

        // ARRK Markup
        InsertFieldMapping(IntegrationFieldMapping,
            SalesLine.FieldNo("ARRK Markup"),
            CRMSalesOrderDetail.FieldNo("ARRK Markup"));

        // ARRK XRef Vendor
        InsertFieldMapping(IntegrationFieldMapping,
            SalesLine.FieldNo("ARRK XRef Vendor"),
            CRMSalesOrderDetail.FieldNo("ARRK XrefVend"));
    end;

    local procedure InsertFieldMapping(var IntegrationFieldMapping: Record "Integration Field Mapping"; BCFieldNo: Integer; CRMFieldNo: Integer)
    begin
        IntegrationFieldMapping.Init();
        IntegrationFieldMapping."No." := 0;
        IntegrationFieldMapping."Integration Table Mapping Name" := 'ORDERPRODUCT';
        IntegrationFieldMapping."Field No." := BCFieldNo;
        IntegrationFieldMapping."Integration Table Field No." := CRMFieldNo;
        IntegrationFieldMapping.Direction := IntegrationFieldMapping.Direction::FromIntegrationTable;
        IntegrationFieldMapping.Insert(true);
    end;
}
