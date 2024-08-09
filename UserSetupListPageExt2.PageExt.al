pageextension 58185 UserSetupListPageExt2 extends "User Setup"
{
    layout
    {
        addafter("Can Modify Item No.")
        {
            field("Modify Case tracking Visible"; Rec."Modify Case tracking Visible")
            {
                ApplicationArea = All;
            }
        }
    }
    var myInt: Integer;
}
