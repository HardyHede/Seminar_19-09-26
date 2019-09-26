tableextension 50100 "CSD ResourceExt" extends Resource
{// CSD1.00 - 2019-09-26 - Hardy Hede Nielsen
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                rec.TestField("Unit Cost");
            end;
        }
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }
    }

}