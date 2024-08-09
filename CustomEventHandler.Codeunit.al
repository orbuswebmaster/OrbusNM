codeunit 54101 CustomEventHandler
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Header", 'OnAfterInsertEvent', '', false, false)]
    local procedure PopulateFieldsV1(var Rec: Record "Sales Invoice Header"; RunTrigger: Boolean)
    begin
    end;
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Assigned User ID', false, false)]
    local procedure SalesHeader_OnAfterValidateAssignedUserID(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        IF(Rec."Assigned User ID" <> '')then begin
            Rec."Sales Order Assigned To":=Rec."Assigned User ID";
            Rec.Modify();
        end;
    end;
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Created_By', false, false)]
    local procedure SalesHeader_OnAfterValidateCreatedBy(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        IF(Rec.Created_By <> '')then begin
            Rec."Sales Order Created By":=Rec.Created_By;
            Rec.Modify();
        end;
    end;
    [EventSubscriber(ObjectType::Table, Database::"DSHIP Package Options", 'OnAfterValidateEvent', 'Payment Type', false, false)]
    local procedure DshipPackageOptionsOnAfterValidatePaymentType(var Rec: Record "DSHIP Package Options"; var xRec: Record "DSHIP Package Options"; CurrFieldNo: Integer)
    var
        SalesHeaderRec: Record "Sales Header";
    begin
        IF(Rec."Document Type" = Rec."Document Type"::"Sales Order")then begin
            SalesHeaderRec.Reset;
            SalesHeaderRec.SetRange("Document Type", SalesHeaderRec."Document Type"::Order);
            SalesHeaderRec.SetFilter("No.", rec."Document No.");
            IF SalesHeaderRec.FindFirst then begin
                case Rec."Payment Type" of //OptionMembers = "None","Sender","Third Party","Receiver","Collect";
 Rec."Payment Type"::" ": SalesHeaderRec."Sales Order Payment Type":=SalesHeaderRec."Sales Order Payment Type"::None;
                Rec."Payment Type"::"Sender": SalesHeaderRec."Sales Order Payment Type":=SalesHeaderRec."Sales Order Payment Type"::Sender;
                Rec."Payment Type"::THIRD_PARTY: SalesHeaderRec."Sales Order Payment Type":=SalesHeaderRec."Sales Order Payment Type"::"Third Party";
                Rec."Payment Type"::"Receiver": SalesHeaderRec."Sales Order Payment Type":=SalesHeaderRec."Sales Order Payment Type"::Receiver;
                Rec."Payment Type"::"Collect": SalesHeaderRec."Sales Order Payment Type":=SalesHeaderRec."Sales Order Payment Type"::Collect;
                end;
                SalesHeaderRec.Modify;
            end;
        end;
    end;
    [EventSubscriber(ObjectType::Table, Database::"DSHIP Package Options", 'OnAfterValidateEvent', 'Payment Account No.', false, false)]
    local procedure DshipPackageOptionsOnAfterValidatePaymentAccount(var Rec: Record "DSHIP Package Options"; var xRec: Record "DSHIP Package Options"; CurrFieldNo: Integer)
    var
        SalesHeaderRec: Record "Sales Header";
    begin
        IF(Rec."Document Type" = Rec."Document Type"::"Sales Order")then begin
            SalesHeaderRec.Reset;
            SalesHeaderRec.SetRange("Document Type", SalesHeaderRec."Document Type"::Order);
            SalesHeaderRec.SetFilter("No.", rec."Document No.");
            IF SalesHeaderRec.FindFirst then begin
                SalesHeaderRec."SO Payment Account No.":=Rec."Payment Account No.";
                SalesHeaderRec.Modify;
            end;
        end;
    end;
    /*[EventSubscriber(ObjectType::Table, Database::"Case WSG", 'OnAfterValidateEvent', 'Contact Name', false, false)]
    local procedure OnAferValidateCaseWSGConatctName(Var Rec: Record "Case WSG");
    var
        ContactRec: Record Contact;
    begin
        ContactRec.Reset;
        ContactRec.Setfilter(Name, Rec."Contact Name");
        if ContactRec.FindFirst then rec."Contact Email" := ContactRec."E-Mail";
        Rec.Modify;
    end;*/
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Shipment Method Code', false, false)]
    local procedure OnAfterValidateShipMethod(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        IF(Rec.Created_By <> '')then begin
            Rec."Sales Order Shipment Method":=Rec."Shipment Method Code";
            Rec.Modify();
        end;
    end;
}
