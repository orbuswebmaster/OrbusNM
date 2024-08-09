pageextension 54106 CompanyInformationCardExt extends "Company Information"
{
    layout
    {
        addafter(General)
        {
            field("Gated Permission Enabled"; Rec."Gated Permission Enabled")
            {
                ApplicationArea = All;
                ToolTip = 'Used to enable gated permissions';
            }
        }
    }
}
