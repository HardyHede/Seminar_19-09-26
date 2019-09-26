page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Line';
    AutoSplitKey = true;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Date; Date)
                {

                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {

                }
            }
        }

    }

    trigger OnNewRecord(BelowXRec: Boolean)
    begin
        SetupNewLine();
    end;
}