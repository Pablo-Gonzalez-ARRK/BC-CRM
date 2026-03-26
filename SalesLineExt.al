namespace DefaultPublisher.HelloWorld;

using Microsoft.Sales.Document;

tableextension 57106 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(57100; "ARRK Notes"; Text[500])
        {
            Caption = 'ARRK Notes';
            DataClassification = CustomerContent;
        }
        field(57101; "ARRK Unit Cost"; Decimal)
        {
            Caption = 'ARRK Unit Cost';
            DataClassification = CustomerContent;
        }
        field(57102; "ARRK Markup"; Decimal)
        {
            Caption = 'ARRK Markup';
            DataClassification = CustomerContent;
        }
        field(57103; "ARRK XRef Vendor"; Text[100])
        {
            Caption = 'ARRK XRef Vendor';
            DataClassification = CustomerContent;
        }
    }
}
