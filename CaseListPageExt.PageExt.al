pageextension 54188 CaseListPageExt extends "Case List WSG"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field("Responsible Owner"; Rec."Responsible Owner")
            {
                ApplicationArea = All;
                Caption = 'Responsbile Owner';
            }
            field("Resolution Date"; Rec."Resolution Date")
            {
                ApplicationArea = All;
                Caption = 'Resolution Date';
            }
        }
    }
}
