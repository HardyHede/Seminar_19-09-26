codeunit 50102 "CSD SeminarRegPrinted"
// CSD1.00 - 2019-09-28 - Hardy Hede Nielsen
// Chapter 9 - Lab 1 - Task 2

{
    TableNo = "CSD Seminar Reg. Header";
    trigger OnRun()
    begin
        Find;
        "No. Printed" += 1;
        Modify;
        Commit;
    end;


}