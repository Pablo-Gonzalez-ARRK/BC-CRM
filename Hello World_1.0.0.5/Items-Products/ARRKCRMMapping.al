namespace DefaultPublisher.HelloWorld;

using Microsoft.Inventory.Item;
using Microsoft.Integration.D365Sales;
using Microsoft.Integration.SyncEngine;

codeunit 57104 "ARRK CRM Product Mapping"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CRM Setup Defaults", 'OnAfterResetConfiguration', '', false, false)]
    local procedure AddARRKFieldMappings()
    var
        IntegrationFieldMapping: Record "Integration Field Mapping";
        Item: Record Item;
        CRMProduct: Record "CRM Product";
    begin
        // ARRK Notes
        InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo(Notes), CRMProduct.FieldNo("ARRK Notes"));


        // ARRK Product Code

        // ARRK Cost Method
        InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("ARRK Cost Method"), CRMProduct.FieldNo("ARRK Cost Method"));



        // ARRK Description 2
        // InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("ARRK Description 2"), CRMProduct.FieldNo("ARRK Description 2 std"));


        // ARRK Item Tracking Code
        // InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("ARRK Item Tracking Code"), CRMProduct.FieldNo("ARRK Item Tracking Code"));
        //ARRK Type
        InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("ARRK Type"), CRMProduct.FieldNo("ARRK Type"));

        // ARRK Lot Nos
        //    InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("ARRK Lot Nos"), CRMProduct.FieldNo("ARRK Lot Nos"));

        // Base Unit of Measure (standard field 8)
        // InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("Base Unit of Measure"), CRMProduct.FieldNo("ARRK Base Unit of Measure"));

        // Item Tracking Code (standard field 6500)
        //  InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("Item Tracking Code"), CRMProduct.FieldNo("ARRK Item Tracking Code Std"));

        // Lot Nos. (standard field 6501)
        // InsertFieldMapping(IntegrationFieldMapping, Item.FieldNo("Lot Nos."), CRMProduct.FieldNo("ARRK Lot Nos Std"));

    end;

    local procedure InsertFieldMapping(var IntegrationFieldMapping: Record "Integration Field Mapping"; BCFieldNo: Integer; CRMFieldNo: Integer)
    begin
        IntegrationFieldMapping.Init();
        IntegrationFieldMapping."No." := 0;
        IntegrationFieldMapping."Integration Table Mapping Name" := 'ITEM-PRODUCT';
        IntegrationFieldMapping."Field No." := BCFieldNo;
        IntegrationFieldMapping."Integration Table Field No." := CRMFieldNo;
        IntegrationFieldMapping.Direction := IntegrationFieldMapping.Direction::FromIntegrationTable;
        IntegrationFieldMapping.Insert(true);
    end;
}
