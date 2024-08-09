pageextension 54104 SalesOrderExt extends "Sales Order"
{
    trigger OnQueryClosePage(CloseAction: Action): Boolean var
    begin
    //Check if red asterik is possible
    //Rec.TestField("Shipment Date");
    //Rec.Testfield("Ship-to Code");
    //Rec.Testfield("Shipping Agent Code");
    //Rec.TestField("Sales Order Payment Type");
    //Rec.Testfield("SO Payment Account No.");
    end;
}
