namespace DefaultPublisher.HelloWorld;

using Microsoft.Sales.Document;

pageextension 57107 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Line Amount")
        {
            field("ARRK Notes"; Rec."ARRK Notes")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies ARRK notes for this sales line.';
            }
            field("ARRK Unit Cost"; Rec."ARRK Unit Cost")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ARRK unit cost for this sales line.';
            }
            field("ARRK Markup"; Rec."ARRK Markup")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ARRK markup percentage for this sales line.';
            }
            field("ARRK XRef Vendor"; Rec."ARRK XRef Vendor")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ARRK cross-reference vendor for this sales line.';
            }
        }
    }
}
