page 50122 "CSD Seminar RegisterS"
{
    // CSD1.00 - 2019-09-27 - Hardy Hede Nielsen
    // Chapter 7 - Lab 2 - Task 11

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";
    Caption = 'Seminar Registers';
    editable = false;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                { }
                field("Creation Date"; "Creation Date")
                { }
                field("User ID"; "User ID")
                { }
                field("Source Code"; "Source Code")
                { }
                field("Journal Batch Name"; "Journal Batch Name")
                { }
            }
        }
        area(Factboxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }

        }
    }

    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                ApplicationArea = All;
                Image = WarrantyLedger;
                Caption = 'Seminar Ledgers';
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";

                trigger OnAction();
                begin

                end;
            }
        }
    }
}