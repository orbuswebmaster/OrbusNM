codeunit 54102 UserGatedPermissions
{
    [EventSubscriber(ObjectType::Table, Database::User, 'OnAfterInsertEvent', '', true, true)]
    local procedure UserpermissionInsert(rec: Record User)
    var
        UserPermission: Record "UserGatedPermissions";
    begin
        UserPermission.Init();
        UserPermission."User ID":=rec."User Name";
        UserPermission.Insert(true);
    end;
    //CUSTOMER TAX RELATED
    //GLN
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'GLN', false, false)]
    local procedure UGPCustGLN()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Use GLN in Electronic
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Use GLN in Electronic Document', false, false)]
    local procedure UGPCustUseGLN()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Copy sell-to addr. to Qte From
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Copy Sell-to Addr. to Qte From', false, false)]
    local procedure UGPCustCopySelltoQte()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //VAT Registration No.
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'VAT Registration No.', false, false)]
    local procedure UGPCustVATRegistrationNo()
    var
        CustRec: Record Customer;
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Tax ID No
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Tax ID No. -CL-', false, false)]
    local procedure UGPCustTaxIdNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Tax Liable
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Tax Liable', false, false)]
    local procedure UGPCustTaxLiable()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Tax Identification Type
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Tax Identification Type', false, false)]
    local procedure UGPCustTaxIDType()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Tax Area Code
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Tax Area Code', false, false)]
    local procedure UGPCustTaxAreaCode()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Tax Exemption No
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Tax Exemption No.', false, false)]
    local procedure UGPCustTaxExemptNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Customer - Tax
    //Tax Registration No
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'VAT Registration No.', false, false)]
    local procedure UGPCustTaxRegNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Tax Disable: Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //CUSTOMER PAYMENT RELATED
    //Payment Terms Code
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Payment Terms Code', false, false)]
    local procedure UGPCustPayTermsCode()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Bank Communication
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Bank Communication', false, false)]
    local procedure UGPCustBankComm()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Check Date Format
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Check Date Format', false, false)]
    local procedure UGPCustCheckDateFormat()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Check Date Separator
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Check Date Separator', false, false)]
    local procedure UGPCustCheckDateSeparate()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Identification No
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Identification No. -CL-', false, false)]
    local procedure UGPCustIdentificationNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Identification State
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Identification State -CL-', false, false)]
    local procedure UGPCustIdentificationState()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //EFT Fraud Protection Status
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'EFT Fraud Prot. Status -CL-', false, false)]
    local procedure UGPCustEFTFraudProStat()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Electronic Invoice Type
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Electronic Invoice Type -CL-', false, false)]
    local procedure UGPCustElectInvType()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Parent Customer No
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Parent Customer No. -CL-', false, false)]
    local procedure UGPCustParentCustNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Do not sync with the Versapay CL
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Do not Sync Versapay ARC -CL-', false, false)]
    local procedure UGPCustDoNotSyncVersa()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Credit Card Surcharges
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Credit Card Surcharges -CL-', false, false)]
    local procedure UGPCustCCSurcharges()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Do not auto save credit card nos
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Do Not Save Cred. Card Nos-CL-', false, false)]
    local procedure UGPCustDoNotSaveCCNo()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Do not auto save checking account
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Do Not Save Chk. Act. Nos-CL-', false, false)]
    local procedure UGPCustDoNotAutoSaveCheckAcct()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
    //Suppress email notifications
    [EventSubscriber(ObjectType::Table, Database::"Customer", 'OnBeforeValidateEvent', 'Notification Suppressed -CL-', false, false)]
    local procedure UGPCustSuppressEmail()
    var
        UserPermission: Record "UserGatedPermissions";
        UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
        CompanyInformationRec: Record "Company Information";
    begin
        if CompanyInformationRec.FindFirst then begin
            if CompanyInformationRec."Gated Permission Enabled" = false then exit;
        end;
        clear(UserPermission);
        if UserPermission.get(UserId)then begin
            if UserPermission."Customer Payment Modify" then Error(UserNoAccess);
        end
        else
        begin
            UserPermission.Init();
            UserPermission."User ID":=UserId;
            UserPermission.Insert(true);
        end;
    end;
/*
        //Additional checks if wanted in the future
        [EventSubscriber(ObjectType::Page, page::"Chart of Accounts", 'OnOpenPageEvent', '', true, true)]
        local procedure OpenChartOfAccounts()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Chart of Accts Disable: Read" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Customer Card", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertCustomerCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Customer Card Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Customer Card", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifyCustomerCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Customer Card Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"vendor Card", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertvendorCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."vendor Card Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"vendor Card", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifyvendorCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."vendor Card Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;

        end;

        [EventSubscriber(ObjectType::Page, page::"item Card", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertitemCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Item Card Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"item Card", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifyitemCard()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."item Card Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Sales Order", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertSalesOrder()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Sales Order Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Sales Order", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifySalesOrder()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Sales Order Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Sales Order Subform", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertSalesOrderSubform()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Sales Order Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Sales Order Subform", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifySalesOrderSubform()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Sales Order Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Purchase Order", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertPurchaseOrder()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Purchase Order Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Purchase Order", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifyPurchaseOrder()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Purchase Order Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Purchase Order Subform", 'OnInsertRecordEvent', '', true, true)]
        local procedure InsertPurchaseOrderSubform()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Purchase Order Disable: Insert" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Purchase Order Subform", 'OnModifyRecordEvent', '', true, true)]
        local procedure ModifyPurchaseOrderSubform()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Purchase Order Disable: Modify" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"AVA Configuration Card", 'OnOpenPageEvent', '', true, true)]
        local procedure ReadAVATAXConfig()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."AVATAX Config. Disable: Read" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::"Feature Management", 'OnOpenPageEvent', '', true, true)]
        local procedure ReadFeatureManagement()
        var
            UserPermission: Record "UserGatedPermissions";
            UserNoAccess: Label 'Your user account has not been granted access to this page. Please submit ticket to IT to check permission access.';
            CompanyInformationRec: Record "Company Information";    
        begin
            if CompanyInformationRec.FindFirst then begin
                if CompanyInformationRec."Gated Permission Enabled" = false then
                    exit;
            end;           

            clear(UserPermission);
            if UserPermission.get(UserId) then begin
                if UserPermission."Feature Manag. Disable: Read" then
                    Error(UserNoAccess);
            end else begin
                UserPermission.Init();
                UserPermission."User ID" := UserId;
                UserPermission.Insert(true);
            end;
        end;
        */
}
