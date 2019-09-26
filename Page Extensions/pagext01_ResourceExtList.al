pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{// CSD1.00 - 2019-09-26 - Hardy Hede Nielsen   
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    actions
    {

    }
    trigger OnOpenPage()
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) =
            format(Type::machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;



}