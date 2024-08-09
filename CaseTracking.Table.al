table 55102 CaseTracking
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Sales Invoice Header No."; Text[100])
        {
        }
        field(3; "Sales Header No."; Text[100])
        {
        }
        field(4; "Production Order No."; Text[100])
        {
        }
        field(5; "Assigned To"; Text[100])
        {
        }
        field(6; "Sales Header Created At"; DateTime)
        {
        }
        field(7; "SalesInvHeader SystemCreatedAt"; DateTime)
        {
        }
        field(8; "Graphics Only"; Boolean)
        {
        }
        field(9; "Location Code (Prod Order)"; Text[100])
        {
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
        }
    }
}
