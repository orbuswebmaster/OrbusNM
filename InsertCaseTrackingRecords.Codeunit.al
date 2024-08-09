codeunit 55194 InsertCaseTrackingRecords
{
    trigger OnRun()
    var
        ProductionHeader: Record "Production Order";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        CaseTracking: Record CaseTracking;
        var1: Integer;
    begin
        var1:=0;
        ProductionHeader.Reset();
        ProductionHeader.SetRange("Source Type", ProductionHeader."Source Type"::"Sales Header");
        ProductionHeader.SetRange("Inserted Into CaseTracking", false);
        if ProductionHeader.FindLast()then repeat if ProductionHeader."Source No." <> '' then begin
                    SalesInvoiceHeader.Reset();
                    SalesInvoiceHeader.SetRange("Order No.", ProductionHeader."Source No.");
                    if SalesInvoiceHeader.FindFirst()then begin
                        CaseTracking.Reset();
                        if CaseTracking.FindLast()then var1:=CaseTracking."Entry No." + 1
                        else
                            var1:=1;
                        CaseTracking.Init();
                        CaseTracking."Entry No.":=var1;
                        CaseTracking."Production Order No.":=ProductionHeader."No.";
                        CaseTracking."Sales Header Created At":=SalesInvoiceHeader."Created At";
                        CaseTracking."SalesInvHeader SystemCreatedAt":=SalesInvoiceHeader.SystemCreatedAt;
                        CaseTracking."Sales Invoice Header No.":=SalesInvoiceHeader."No.";
                        CaseTracking."Sales Header No.":=SalesInvoiceHeader."Order No.";
                        CaseTracking."Assigned To":=SalesInvoiceHeader."Sales Order Assigned To";
                        CaseTracking."Graphics Only":=SalesInvoiceHeader."Graphics Only";
                        CaseTracking."Location Code (Prod Order)":=ProductionHeader."Location Code";
                        if CaseTracking.Insert()then begin
                            ProductionHeader."Inserted Into CaseTracking":=true;
                            ProductionHeader.Modify();
                        end;
                    end;
                end;
            until ProductionHeader.Next(-1) = 0 end;
}
