namespace DefaultPublisher.HelloWorld;

using Microsoft.Integration.SyncEngine;
using Microsoft.Integration.D365Sales;

codeunit 57105 "ARRK Order Product Mapping"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CRM Setup Defaults", 'OnAfterResetConfiguration', '', false, false)]
    local procedure RegisterOrderProductMapping(CRMConnectionSetup: Record "CRM Connection Setup")
    var
        IntegrationTableMapping: Record "Integration Table Mapping";
        CRMSalesOrderDetail: Record "CRM Sales Order Detail";
    begin
        // Registrar la tabla Order Product en Integration Table Mapping
        if IntegrationTableMapping.Get('ORDERPRODUCT') then
            IntegrationTableMapping.Delete(true);

        IntegrationTableMapping.Init();
        IntegrationTableMapping.Name := 'ORDERPRODUCT';
        IntegrationTableMapping."Table ID" := 37; // Sales Line
        IntegrationTableMapping."Integration Table ID" := Database::"CRM Sales Order Detail";
        IntegrationTableMapping."Integration Table UID Fld. No." := CRMSalesOrderDetail.FieldNo(SalesOrderDetailId);
        IntegrationTableMapping."Int. Tbl. Modified On Fld. No." := CRMSalesOrderDetail.FieldNo(ModifiedOn);
        IntegrationTableMapping.Direction := IntegrationTableMapping.Direction::Bidirectional;
        IntegrationTableMapping."Synch. Only Coupled Records" := true;
        IntegrationTableMapping.Insert(true);
    end;
}
