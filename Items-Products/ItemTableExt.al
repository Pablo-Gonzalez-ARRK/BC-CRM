namespace DefaultPublisher.HelloWorld;

using Microsoft.Inventory.Item;

tableextension 57101 ItemTableExt extends Item
{
    fields
    {
        field(57101; Notes; Text[250])
        {
            Caption = 'Notes';
            DataClassification = CustomerContent;
        }
        field(57102; "ARRK Type"; Option)
        {
            Caption = 'ARRK Type';
            DataClassification = CustomerContent;
            OptionMembers = "",Material,Tool,Fixture,Other;
            OptionCaption = ' ,Material,Tool,Fixture,Other';
        }
        field(57103; "ARRK Product Code"; Option)
        {
            Caption = 'ARRK Product Code';
            DataClassification = CustomerContent;
            OptionMembers = "",PC01,PC02,PC03,PC04,PC05,PC06,PC07,PC08,PC09,PC10,PC11,PC12,PC13,PC14,PC15,PC16,PC17,PC18,PC19,PC20,PC22,PC23,PC24,PC25,PC26,PC27,PC28,PC29,PC30,PC97,PC98,PC99;
            OptionCaption = ' ,PC01 SLA RAW MATERIAL,PC02 SLS RAW MATERIAL,PC03 CASTING RAW MATERIAL,PC04 PAINTING RAW MATERIAL,PC05 CNC RAW MATERIAL,PC06 CLAY RAW MATERIAL,PC07 MASS PRODUCTION RAW MATERIALS,PC08 SEAT RAW MATERIAL,PC09 Hardware,PC10 DLP RAW MATERIAL,PC11 TOOLING (ALUM. / STEEL),PC12 LOW VOLUME INJECTION MOLDING,PC13 SLA PARTS,PC14 SLS PARTS,PC15 CASTING PARTS,PC16 PAINTED PARTS,PC17 MACHINED PARTS,PC18 CLAY PARTS / DESIGN MOCK,PC19 CAD PARTS,PC20 DESIGN PARTS,PC22 FINISHING PARTS,PC23 ENGINEERING,PC24 ENGINEERING DISPATCH,PC25 CAE,PC26 OPTICAL SIMULATION,PC27 MICROWAVE,PC28 DLP PARTS,PC29 PROTOTYPE TOOLLING,PC30 TOOLING & LVP RAW MATERIALS,PC97 FREIGHT CHARGABLE,PC98 FREIGHT NON CHARGABLE,PC99 FREIGHT EXPEDITE';
        }
        field(57104; "ARRK Cost Method"; Option)
        {
            Caption = 'ARRK Cost Method';
            DataClassification = CustomerContent;
            OptionMembers = "",FIFO,LIFO,Specific,Average,Standard;
            OptionCaption = ' ,FIFO,LIFO,Specific,Average,Standard';
        }
        field(57105; "ARRK Item Tracking Code"; Text[50])
        {
            Caption = 'ARRK Item Tracking Code';
            DataClassification = CustomerContent;
        }
        field(57106; "ARRK Description 2"; Text[50])
        {
            Caption = 'ARRK Description 2';
            DataClassification = CustomerContent;
        }
        field(57107; "ARRK Lot Nos"; Text[50])
        {
            Caption = 'ARRK Lot Nos';
            DataClassification = CustomerContent;
        }
        field(57108; "New ARRK Description 2"; Text[50])
        {
            Caption = 'ARRK Description 2';
            DataClassification = CustomerContent;
        }
    }
}
