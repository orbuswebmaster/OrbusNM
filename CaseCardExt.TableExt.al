tableextension 54104 CaseCardExt extends "Case WSG"
{
    fields
    {
        field(54100; "Contact Email"; Text[80])
        {
            Caption = 'Contact E-Mail';
            DataClassification = CustomerContent;
        }
        field(54101; "Urgency"; Boolean)
        {
            Caption = 'Urgency';
            DataClassification = CustomerContent;
        }
        field(54102; "Resolution Date"; date)
        {
            Caption = 'Resolution Date';
            DataClassification = CustomerContent;
        }
        field(54103; "Responsible Owner"; Code[50])
        {
            Caption = 'Responsible Owner';
            DataClassification = CustomerContent;
        /*TableRelation = User."User Name";
            ValidateTableRelation = false;*/
        /*trigger OnValidate()
            var
                User: Record User;
            begin
                if
                Rec."Responsible Owner" = ''
                then
                    exit
                else begin
                    User.Reset();
                    User.SetRange("User Name", Rec."Responsible Owner");
                    if
                    User.FindFirst()
                    then
                        exit
                    else
                        Error('Data in table field needs to be based on record in User table. %1 is not a username for a record in User table.', Rec."Responsible Owner");
                end;
            end;*/
        }
    }
}
