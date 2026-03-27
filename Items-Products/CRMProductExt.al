namespace DefaultPublisher.HelloWorld;

using Microsoft.Integration.D365Sales;

tableextension 57103 CRMProductExt extends "CRM Product"
{

    fields
    {
        field(57103; "ARRK Notes"; Text[100])
        {
            Caption = 'ARRK Notes';
            ExternalName = 'arrk_notes';
            DataClassification = CustomerContent;
        }

        field(57104; "ARRK Type"; Option)
        {
            Caption = 'ARRK Type';
            ExternalName = 'arrk_matltype';
            ExternalType = 'Picklist';
            DataClassification = SystemMetadata;
            OptionMembers = " ",Material,Tool,Fixture,Other;
            OptionCaption = ' ,Material,Tool,Fixture,Other';
        }

        field(57105; "ARRK Product Code"; Enum "ARRK Product Code Enum")
        {
            Caption = 'ARRK Product Code';
            ExternalName = 'arrk_productcode';
            ExternalType = 'Picklist';
            DataClassification = SystemMetadata;
        }

        field(57106; "ARRK Cost Method"; Option)
        {
            Caption = 'ARRK Cost Method';
            ExternalName = 'arrk_costmethod';
            ExternalType = 'Picklist';
            DataClassification = SystemMetadata;
            OptionMembers = " ",FIFO,LIFO,Specific,Average,Standard;
            OptionCaption = ' ,FIFO,LIFO,Specific,Average,Standard';
        }
        /* 
                field(57105; "ARRK Product Code"; Option)
        {
            Caption = 'ARRK Product Code';
            ExternalName = 'arrk_productcode';
            ExternalType = 'Picklist';
            DataClassification = SystemMetadata;
            OptionMembers = " ",PC01,PC02,PC03,PC04,PC05,PC06,PC07,PC08,PC09,PC10,PC11,PC12,PC13,PC14,PC15,PC16,PC17,PC18,PC19,PC20,PC22,PC23,PC24,PC25,PC26,PC27,PC28,PC29,PC30,PC97,PC98,PC99;
            OptionCaption = ' ,PC01 SLA RAW MATERIAL,PC02 SLS RAW MATERIAL,PC03 CASTING RAW MATERIAL,PC04 PAINTING RAW MATERIAL,PC05 CNC RAW MATERIAL,PC06 CLAY RAW MATERIAL,PC07 MASS PRODUCTION RAW MATERIALS,PC08 SEAT RAW MATERIAL,PC09 Hardware,PC10 DLP RAW MATERIAL,PC11 TOOLING (ALUM. / STEEL),PC12 LOW VOLUME INJECTION MOLDING,PC13 SLA PARTS,PC14 SLS PARTS,PC15 CASTING PARTS,PC16 PAINTED PARTS,PC17 MACHINED PARTS,PC18 CLAY PARTS / DESIGN MOCK,PC19 CAD PARTS,PC20 DESIGN PARTS,PC22 FINISHING PARTS,PC23 ENGINEERING,PC24 ENGINEERING DISPATCH,PC25 CAE,PC26 OPTICAL SIMULATION,PC27 MICROWAVE,PC28 DLP PARTS,PC29 PROTOTYPE TOOLLING,PC30 TOOLING & LVP RAW MATERIALS,PC97 FREIGHT CHARGABLE,PC98 FREIGHT NON CHARGABLE,PC99 FREIGHT EXPEDITE';
        }
        //issues
    
        field(57107; "ARRK Item Tracking Code"; Text[50])
        {
            Caption = 'ARRK Item Tracking Code';
            ExternalName = 'arrk_itemtrackingcode';
            DataClassification = CustomerContent;
        }

                field(57109; "ARRK Lot Nos"; Text[50])
        {
            Caption = 'ARRK Lot Nos';
            ExternalName = 'arrk_lotnos';
            DataClassification = CustomerContent;
        } 
        */
    }
}
