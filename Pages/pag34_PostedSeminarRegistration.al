page 50134 "CSD Posted Seminar Reg."
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page
    // CSD1.00 - 2019-09-28 - Hardy Hede Nielsen
    // Chapter 8 - Lab 2 - Task 4



    Caption = 'Seminar Registration';
    Editable = false;
    PageType = Document;
    SourceTable = "CSD Posted Seminar Reg. Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field("Starting Date"; "Starting Date")
                {
                }
                field("Seminar No."; "Seminar No.")
                {
                }
                field("Seminar Name"; "Seminar Name")
                {
                }
                field("Instructor Resource No."; "Instructor Resource No.")
                {
                }
                field("Instructor Name"; "Instructor Name")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field(Status; Status)
                {
                }
                field(Duration; Duration)
                {
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                }
            }
            part("SeminarRegistrationLines"; "CSD Post Seminar Reg. Subpage")
            {
                SubPageLink = "Document No." = Field ("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; "Room Resource No.")
                {
                }
                field("Room Name"; "Room Name")
                {
                }
                field("Room Address"; "Room Address")
                {
                }
                field("Room Address 2"; "Room Address 2")
                {
                }
                field("Room Post Code"; "Room Post Code")
                {
                }
                field("Room City"; "Room City")
                {
                }
                field("Room Country/Reg. Code"; "Room Country/Reg. Code")
                {
                }
                field("Room County"; "Room County")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = Field ("Seminar No.");
            }
            part("Seminar Reg. Lines"; 9084)
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = Field ("Bill-to Customer No.");
            }
            systempart(Links; Links)
            {
            }
            systempart(Notes; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No." = Field ("No.");
                    RunPageView = where ("Table name" = const ("Posted Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50139;
                    RunPageLink = "Document No." = Field ("No.");
                }
            }
        }
        area(Processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction();
                var
                    Navigate: page Navigate;
                begin
                    Navigate.SetDoc("Posting Date", "No.");
                    Navigate.RUN;
                end;
            }
        }
    }
}

