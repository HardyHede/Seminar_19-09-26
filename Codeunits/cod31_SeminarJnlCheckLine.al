codeunit 50131 "CSD Seminar Jnl.-Check Line"
{// CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
 // Chapter 7 - Lab 2 - Task 4
    TableNo = "CSD seminar journal line";

    trigger OnRun()
    begin
        RunCheck(Rec);
    end;

    var
        GlSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date.';
        PostingDateTxt: label 'is not within your range of allowed posting dates.';

    procedure RunCheck(var SemJnlLine: record "CSD Seminar Journal Line")
    var
        myInt: Integer;
    begin
        with semjnlline do begin
            if EmptyLine then
                exit;
            TestField("Posting Date");
            TestField("Instructor Resource No.");
            testfield("Seminar No.");
            CASE "Charge Type" of
                "Charge Type"::Instructor:
                    TestField("Instructor Resource No.");
                "Charge Type"::Room:
                    TestField("Room Resource No.");
                "Charge Type"::Participant:
                    TestField("Participant Contact No.");
            end;
            IF Chargeable then
                TestField("Bill-to Customer No.");
            if "Posting Date" = closingdate("Posting Date") then
                fielderror("Posting Date", PostingDateTxt);

            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                if UserId <> '' then
                    if UserSetup.GET(UserId) then begin
                        AllowPostingFrom := UserSetup."Allow Posting From";
                        AllowPostingTo := UserSetup."Allow Posting To";
                    end;
                if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D)
                then begin
                    GLSetup.GET;
                    AllowPostingFrom := GLSetup."Allow Posting From";
                    AllowPostingTo := GLSetup."Allow Posting To";
                end;
                if AllowPostingTo = 0D then
                    AllowPostingTo := DMY2Date(31, 12, 9999);
            end;
            if ("Posting Date" < AllowPostingFrom) OR
            ("Posting Date" > AllowPostingTo) then
                FieldError("Posting Date", PostingDateTxt);
            if ("Document Date" <> 0D) then
                if ("Document Date" = CLOSINGDATE("Document Date")) then
                    FIELDERROR("Document Date", PostingDateTxt);
        end;
    end;
}