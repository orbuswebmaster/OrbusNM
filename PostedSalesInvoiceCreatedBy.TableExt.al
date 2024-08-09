tableextension 54101 PostedSalesInvoiceCreatedBy extends "Sales Invoice Header"
{
    fields
    {
        field(54100; "Sales Order Created By"; Text[50])
        {
            Caption = 'Sales Order Created By';
            DataClassification = CustomerContent;
        }
        field(54101; "Sales Order Assigned To"; Code[50])
        {
            Caption = 'Sales Order Assigned To';
            DataClassification = CustomerContent;
        }
        field(54102; "Sales Order Payment Type"; Option)
        {
            Caption = 'Sales Order Payment Type';
            DataClassification = CustomerContent;
            OptionCaption = 'None,Sender,Third Party,Receiver,Collect';
            OptionMembers = "None", "Sender", "Third Party", "Receiver", "Collect";
        }
        field(54103; "SO Payment Account No."; Text[100])
        {
            Caption = 'Sales Order Payment Account No.';
            DataClassification = CustomerContent;
        }
        field(54104; "Sales Order Shipment Method"; Code[10])
        {
            Caption = 'Sales Order Shipment Method';
            DataClassification = CustomerContent;
        }
        field(50129; "Graphics Only"; Boolean)
        {
        }
    }
}
