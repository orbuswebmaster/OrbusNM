pageextension 54101 PostedSalesInvoiceCard extends "Posted Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            //field("Sales Order Created By"; Rec."Sales Order Created By")
            //{
            //    ApplicationArea = All;
            //    ToolTip = 'Sales Order Created By';
            //}
            field("Sales Order Assigned To"; Rec."Sales Order Assigned To")
            {
                ApplicationArea = All;
                ToolTip = 'Sales Order Assigned To';
            }
            field("Sales Order Shipment Method"; Rec."Sales Order Shipment Method")
            {
                ApplicationArea = All;
                ToolTip = 'Sales Order Shipment Method';
            }
        }
        addafter("Package Tracking No.")
        {
            field("Sales Order Payment Type"; Rec."Sales Order Payment Type")
            {
                ApplicationArea = All;
                ToolTip = 'Sales Order Payment Type';
            }
            field("SO Payment Account No."; Rec."SO Payment Account No.")
            {
                ApplicationArea = All;
                ToolTip = 'Sales Order Payment Account No.';
            }
        }
    }
}
