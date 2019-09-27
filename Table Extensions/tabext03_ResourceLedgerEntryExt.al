tableextension 50103 "CSD ResourceLedgerEntryExt" extends "Res. Ledger Entry"
// CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
// Chapter 7 - Lab 4 - Task 1

{
    fields
    {
        field(50100; "CSD Seminar No."; code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }
        field(50101; "CSD Seminar Registration No."; code[20])
        {
            Caption = 'Seminar Registration No.';
            TableRelation = "CSD Seminar Reg. Header";
        }
    }

    var
        myInt: Integer;
}