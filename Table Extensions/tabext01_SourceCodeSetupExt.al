tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{// CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
 // Chapter 7 - Lab 1 Taks7
 // - Added new fields:
 // - Seminar
    fields
    {
        field(50100; "CSD Seminar"; code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
        }
    }

    var
        myInt: Integer;
}