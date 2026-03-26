namespace DefaultPublisher.HelloWorld;

using Microsoft.Inventory.Item;

pageextension 57102 ItemCardExt extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field(Notes; Rec.Notes)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies notes about the item.';
            }
            field("ARRK Product Code"; Rec."ARRK Product Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ARRK Product Code.';
            }
            field("ARRK Type"; Rec."ARRK Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the ARRK material type.';
            }

            field("ARRK Description 2"; Rec."New ARRK Description 2")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies a second description for the item.';
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."Item Tracking Code" := 'LOT';
        Rec."Lot Nos." := 'LOT';
    end;
}
