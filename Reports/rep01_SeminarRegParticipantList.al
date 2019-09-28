report 50101 "CSD SeminarRegParticipantList"
// CSD1.00 - 2019-09-28 - Hardy Hede Nielsen
// Chapter 9 - Lab 1 - Task 3

{
    caption = 'Seminar Reg.- Participant List.';
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';

    dataset
    {
        dataitem(SeminarRegistrationHeader; "CSD Seminar Reg. Header")
        {
            DataItemTableView = sorting ("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(SeminarNo_; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column(SeminarName; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(StartingDate; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration; Duration)
            {
                IncludeCaption = true;
            }
            column(InstructorName; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column(RoomName; "Room Name")
            {
                IncludeCaption = true;
            }
            dataitem(SeminarRegistringLine; "CSD Seminar Registration Line")
            {
                DataItemTableView = sorting ("Document No.", "Line No.");
                DataItemLink = "Document No." = field ("No.");
                column(BillToCustNo; "Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(ParticipantContentNo; "Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(ParticipantName; "Participant Name")
                {
                    IncludeCaption = true;
                }

            }
        }
        dataitem(CompanyInformation; "Company Information")
        {
            column(CompanyName; Name)
            {

            }
        }
    }

    labels
    {
        SeminarRegistrationHeaderCap = 'Seminar Registration List';
    }

}