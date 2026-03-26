namespace DefaultPublisher.HelloWorld;

using Microsoft.Integration.D365Sales;

pageextension 57109 CRMProductListExt extends "CRM Product List"
{
    layout
    {
        addlast(Control2)
        {
            field("ARRK Notes"; Rec."ARRK Notes")
            {
                ApplicationArea = All;
                Caption = 'ARRK Notes';
                ToolTip = 'Specifies ARRK notes for the product.';
            }
            field("ARRK Type"; Rec."ARRK Type")
            {
                ApplicationArea = All;
                Caption = 'ARRK Type';
                ToolTip = 'Specifies the ARRK material type.';
            }
            field("ARRK Product Code"; Rec."ARRK Product Code")
            {
                ApplicationArea = All;
                Caption = 'ARRK Product Code';
                ToolTip = 'Specifies the ARRK product code.';
            }
            field("ARRK Cost Method"; Rec."ARRK Cost Method")
            {
                ApplicationArea = All;
                Caption = 'ARRK Cost Method';
                ToolTip = 'Specifies the ARRK cost method.';
            }
            /*   field("ARRK Base Unit of Measure"; Rec."ARRK Base Unit of Measure")
               {
                   ApplicationArea = All;
                   Caption = 'ARRK Base Unit of Measure';
                   ToolTip = 'Specifies the ARRK base unit of measure.';
               }
                field("ARRK Item Tracking Code Std"; Rec."ARRK Item Tracking Code Std")
                {
                    ApplicationArea = All;
                    Caption = 'ARRK Item Tracking Code Std';
                    ToolTip = 'Specifies the ARRK standard item tracking code.';
                }
                 field("ARRK Lot Nos Std"; Rec."ARRK Lot Nos Std")
                 {
                     ApplicationArea = All;
                     Caption = 'ARRK Lot Nos Std';
                     ToolTip = 'Specifies the ARRK standard lot numbers.';
                 }
                   field("ARRK Description 2 std"; Rec."ARRK Description 2 std")
                   {
                       ApplicationArea = All;
                       Caption = 'ARRK Description 2 std';
                       ToolTip = 'Specifies a second ARRK description for the product.';
                   }*/
        }
    }

    trigger OnAfterGetRecord()
    begin
        if Rec."ARRK Notes" = '' then Rec."ARRK Notes" := ' ';
        // if Rec."ARRK Base Unit of Measure" = '' then Rec."ARRK Base Unit of Measure" := ' ';
        //if Rec."ARRK Item Tracking Code Std" = '' then Rec."ARRK Item Tracking Code Std" := ' ';
        // if Rec."ARRK Lot Nos Std" = '' then Rec."ARRK Lot Nos Std" := ' ';
        // if Rec."ARRK Description 2 std" = '' then Rec."ARRK Description 2 std" := ' ';
    end;
}
