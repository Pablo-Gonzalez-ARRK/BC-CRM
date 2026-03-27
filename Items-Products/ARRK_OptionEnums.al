namespace DefaultPublisher.HelloWorld;

enum 57105 "ARRK Product Code Enum"
{
    Extensible = true;

    value(0; Undefined)
    {
        Caption = ' ';
    }

    value(100000001; PC01)
    {
        Caption = 'PC01 - SLA RAW MATERIAL';
    }

    value(100000002; PC02)
    {
        Caption = 'PC02 - SLS RAW MATERIAL';
    }

    value(100000003; PC03)
    {
        Caption = 'PC03 - CASTING RAW MATERIAL';
    }

    value(100000004; PC04)
    {
        Caption = 'PC04 - PAINTING RAW MATERIAL';
    }

    value(100000005; PC05)
    {
        Caption = 'PC05 - CNC RAW MATERIAL';
    }

    value(100000006; PC06)
    {
        Caption = 'PC06 - CLAY RAW MATERIAL';
    }

    value(100000007; PC07)
    {
        Caption = 'PC07 - MASS PRODUCTION RAW MATERIAL';
    }

    value(100000008; PC08)
    {
        Caption = 'PC08 - SEAT RAW MATERIAL';
    }

    value(100000009; PC09)
    {
        Caption = 'PC09 - HARDWARE';
    }

    value(100000010; PC10)
    {
        Caption = 'PC10 - DLP RAW MATERIAL';
    }

    value(100000011; PC11)
    {
        Caption = 'PC11 - TOOLING (ALUM. / STEEL)';
    }

    value(100000012; PC12)
    {
        Caption = 'PC12 - LOW VOLUME INJECTION MOLDING PARTS';
    }

    // 👉 add the rest following same pattern

    value(100000099; PC99)
    {
        Caption = 'PC99 - FREIGHT EXPEDITE';
    }
}