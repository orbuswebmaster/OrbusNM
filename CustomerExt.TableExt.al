tableextension 54102 CustomerExt extends Customer
{
    fields
    {
        field(54100; "First Invoice Date"; Date)
        {
            Caption = 'First Invoice Date';
            DataClassification = CustomerContent;
        }
    }
    trigger OnAfterInsert()
    var
    begin
        "Customer Price Group":='TIER 1';
        "Payment Terms Code":='CC';
        Modify();
    end;
}
