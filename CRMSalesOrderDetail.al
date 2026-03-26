namespace DefaultPublisher.HelloWorld;

table 57100 "CRM Sales Order Detail"
{
    Caption = 'CRM Sales Order Detail';
    Description = 'Order Product (salesorderdetail) in Dataverse';
    ExternalName = 'salesorderdetail';
    TableType = CRM;

    fields
    {
        field(1; SalesOrderDetailId; Guid)
        {
            Caption = 'Sales Order Detail Id';
            ExternalName = 'salesorderdetailid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
            DataClassification = SystemMetadata;
        }
        field(2; SalesOrderId; Guid)
        {
            Caption = 'Order Id';
            ExternalName = 'salesorderid';
            ExternalType = 'Lookup';
            DataClassification = CustomerContent;
        }
        field(3; ProductId; Guid)
        {
            Caption = 'Product Id';
            ExternalName = 'productid';
            ExternalType = 'Lookup';
            DataClassification = CustomerContent;
        }
        field(4; ProductIdName; Text[100])
        {
            Caption = 'Product Name';
            ExternalName = 'productidname';
            ExternalType = 'String';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
            ExternalName = 'quantity';
            ExternalType = 'Decimal';
            DataClassification = CustomerContent;
        }
        field(6; PricePerUnit; Decimal)
        {
            Caption = 'Price Per Unit';
            ExternalName = 'priceperunit';
            ExternalType = 'Money';
            DataClassification = CustomerContent;
        }
        field(7; BaseAmount; Decimal)
        {
            Caption = 'Amount';
            ExternalName = 'baseamount';
            ExternalType = 'Money';
            DataClassification = CustomerContent;
        }
        field(8; ExtendedAmount; Decimal)
        {
            Caption = 'Extended Amount';
            ExternalName = 'extendedamount';
            ExternalType = 'Money';
            DataClassification = CustomerContent;
        }
        field(9; ProductDescription; Text[500])
        {
            Caption = 'Description';
            ExternalName = 'productdescription';
            ExternalType = 'String';
            DataClassification = CustomerContent;
        }
        field(10; ModifiedOn; DateTime)
        {
            Caption = 'Modified On';
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            DataClassification = SystemMetadata;
        }
        field(11; CreatedOn; DateTime)
        {
            Caption = 'Created On';
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            DataClassification = SystemMetadata;
        }
        field(12; "ARRK Notes"; Text[500])
        {
            Caption = 'ARRK Notes';
            ExternalName = 'arrk_arrk_notes';
            ExternalType = 'String';
            DataClassification = CustomerContent;
        }
        field(13; "ARRK Unit Cost"; Decimal)
        {
            Caption = 'ARRK Unit Cost';
            ExternalName = 'arrk_arrk_unitcost';
            ExternalType = 'Money';
            DataClassification = CustomerContent;
        }
        field(14; "ARRK Markup"; Decimal)
        {
            Caption = 'ARRK Markup';
            ExternalName = 'arrk_arrk_markup';
            ExternalType = 'Decimal';
            DataClassification = CustomerContent;
        }
        field(15; "ARRK XrefVend"; Text[100])
        {
            Caption = 'ARRK XRef Vendor';
            ExternalName = 'arrk_arrk_xrefvend';
            ExternalType = 'String';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; SalesOrderDetailId)
        {
            Clustered = true;
        }
    }
}
