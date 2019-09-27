pageextension 50102 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{// CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
 // Chapter 7 - Lab 1 - Task 8
 // - Added new group:
 // - CSD SeminarGroup
    layout
    {
        addafter("Cost Accounting")
        {
            group("CSD SeminarGroup")
            {
                Caption = 'Seminar';
                field("CSD seminar"; "CSD Seminar")
                {

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}