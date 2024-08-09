pageextension 54107 PostedSalesInvListExt extends "Posted Sales Invoices"
{
    layout
    {
        addbefore("No. Printed")
        {
            field("Sales Order Assigned To"; Rec."Sales Order Assigned To")
            {
                ApplicationArea = All;
                Caption = 'Sales Order Assigned To';
            }
        }
    }
}
