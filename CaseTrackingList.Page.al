page 55103 CaseTrackingList
{
    ApplicationArea = All;
    PageType = List;
    Caption = 'Case Tracking';
    SourceTable = CaseTracking;
    UsageCategory = Lists;
    InsertAllowed = false;
    DeleteAllowed = false;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Main)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = ALl;
                    Caption = '';
                }
                field("Sales Invoice Header No."; Rec."Sales Invoice Header No.")
                {
                    ApplicationArea = ALl;
                    Caption = 'Posted Sales Invoice No.';
                }
                field("Sales Header No."; Rec."Sales Header No.")
                {
                    ApplicationArea = ALl;
                    Caption = 'Order No.';
                }
                field("Production Order No."; Rec."Production Order No.")
                {
                    ApplicationArea = ALl;
                    Caption = 'Production Order No.';
                }
                field("Location Code (Prod Order)"; Rec."Location Code (Prod Order)")
                {
                    ApplicationArea = All;
                }
                field("Assigned To"; Rec."Assigned To")
                {
                    ApplicationArea = ALl;
                    Caption = 'Sales Order Assigned To';
                }
                field("Sales Header Created At"; Rec."Sales Header Created At")
                {
                    ApplicationArea = ALl;
                    Caption = 'Sales Order Date';
                }
                field("SalesInvHeader SystemCreatedAt"; Rec."SalesInvHeader SystemCreatedAt")
                {
                    ApplicationArea = ALl;
                    Caption = 'Invoice Date';
                }
                field("Graphics Only"; Rec."Graphics Only")
                {
                    ApplicationArea = All;
                    Caption = 'Graphics Only';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ModifyExisitngRecords)
            {
                ApplicationArea = All;
                Caption = 'Modify Existing Records';
                Image = Edit;
                Promoted = true;
                PromotedCategory = Process;
                Visible = VisibleVar1;

                trigger OnAction()
                var
                    CaseTracking: Record CaseTracking;
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                    var1: Text;
                begin
                    var1:='';
                    if Dialog.Confirm('This action will modify records that do not have a value for "Location Code" table field (if there is a value for Location Code table field for respective Sales Invoice Header Record). Do you want to run this logic?', true)then begin
                        CaseTracking.Reset();
                        CaseTracking.SetFilter("Location Code (Prod Order)", var1);
                        if CaseTracking.FindSet()then repeat SalesInvoiceHeader.Reset();
                                SalesInvoiceHeader.SetRange("No.", CaseTracking."Sales Invoice Header No.");
                                if SalesInvoiceHeader.FindFirst()then begin
                                    CaseTracking."Location Code (Prod Order)":=SalesInvoiceHeader."Location Code";
                                    CaseTracking.Modify();
                                end;
                            until CaseTracking.Next() = 0;
                    end
                    else
                        Message('No logic was run, and no records in the "Case Tracking" table were modified');
                end;
            }
        }
    }
    var VisibleVar1: Boolean;
    trigger OnOpenPage()
    var
        UserSetup: Record "User Setup";
    begin
        UserSetup.Reset();
        UserSetup.SetFilter("User ID", UserId());
        if UserSetup.FindFirst()then begin
            if UserSetup."Modify Case tracking Visible" = true then VisibleVar1:=true
            else
                VisibleVar1:=false;
        end;
    end;
/*actions
    {
        area(Navigation)
        {
            action(DeleteAll)
            {
                ApplicationArea = All;
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction() 
                var
                CaseTracking: Record CaseTracking;
                begin
                    CaseTracking.Reset();
                    if
                    CaseTracking.FindSet()
                    then
                    CaseTracking.DeleteAll();
                end;
            }
        }
    }*/
/*trigger OnOpenPage()
    var
    ProductionHeader: Record "Production Order";
    SalesInvoiceHeader: Record "Sales Invoice Header";
    CaseTracking: Record CaseTracking;
    var1: Integer;
    begin
        var1 := 0;
        ProductionHeader.Reset();
        ProductionHeader.SetRange("Source Type", ProductionHeader."Source Type"::"Sales Header");
        if
        ProductionHeader.FindSet()
        then
        repeat
            if
            ProductionHeader."Source No." <> ''
            then
            begin
                SalesInvoiceHeader.Reset();
                SalesInvoiceHeader.SetRange("Order No.", ProductionHeader."Source No.");
                if
                SalesInvoiceHeader.FindFirst()
                then
                begin
                    CaseTracking.Reset();
                if
                CaseTracking.FindLast()
                then
                    var1 := CaseTracking."Entry No." + 1
                else
                var1 := 1;
                
                CaseTracking.Init();
                CaseTracking."Entry No." := var1;
                CaseTracking."Production Order No." := ProductionHeader."No.";
                CaseTracking."Sales Header Created At" := SalesInvoiceHeader."Created At";
                CaseTracking."SalesInvHeader SystemCreatedAt" := SalesInvoiceHeader.SystemCreatedAt;
                CaseTracking.Insert();
                end;

            end;
        until
        ProductionHeader.Next() = 0
    end;*/
}
