codeunit 50134 "CSD Seminar Reg.-Show Ledger"
{// CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
 // Chapter 7 - Lab 2 - Task 10
    TableNo = "CSD seminar Register";

    trigger OnRun()
    begin
        SeminarLedgerEntry.SETRANGE("Entry No.", "From Entry No.", "To Entry No.");
        page.Run(Page::"CSD Seminar Ledger Entries", SeminarLedgerEntry);
    end;

    var
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
}