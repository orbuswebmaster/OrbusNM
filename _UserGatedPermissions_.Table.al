table 54101 "UserGatedPermissions"
{
    Caption = 'User Gated Permissions';
    DataClassification = ToBeClassified;
    LookupPageId = "UserGatedPermissions";
    DrillDownPageId = "UserGatedPermissions";
    DataPerCompany = false;

    fields
    {
        field(10; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = EndUserIdentifiableInformation;
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;
        }
        field(11; "User Permission Set"; Code[20])
        {
            Caption = 'User Permission Set';
            DataClassification = CustomerContent;
        }
        field(12; "Customer Tax Disable: Modify"; Boolean)
        {
            Caption = 'Customer Tax Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(13; "Customer Payment Modify"; Boolean)
        {
            Caption = 'Customer Payment Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(20; "Chart of Accts Disable: Read"; Boolean)
        {
            Caption = 'Chart of Account Disable: Read';
            DataClassification = CustomerContent;
        }
        field(30; "Customer Card Disable: Insert"; Boolean)
        {
            Caption = 'Customer Card Disable: Insert';
            DataClassification = CustomerContent;
        }
        field(40; "Customer Card Disable: Modify"; Boolean)
        {
            Caption = 'Customer Card Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(50; "Vendor Card Disable: Insert"; Boolean)
        {
            Caption = 'Vendor Card Disable: Insert';
            DataClassification = CustomerContent;
        }
        field(60; "Vendor Card Disable: Modify"; Boolean)
        {
            Caption = 'Vendor Card Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(70; "Item Card Disable: Insert"; Boolean)
        {
            Caption = 'Item Card Disable: Insert';
            DataClassification = CustomerContent;
        }
        field(80; "Item Card Disable: Modify"; Boolean)
        {
            Caption = 'Item Card Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(90; "Sales Order Disable: Insert"; Boolean)
        {
            Caption = 'Sales Order Disable: Insert';
            DataClassification = CustomerContent;
        }
        field(100; "Sales Order Disable: Modify"; Boolean)
        {
            Caption = 'Sales Order Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(110; "Purchase Order Disable: Insert"; Boolean)
        {
            Caption = 'Purchase Order Disable: Insert';
            DataClassification = CustomerContent;
        }
        field(120; "Purchase Order Disable: Modify"; Boolean)
        {
            Caption = 'Purchase Order Disable: Modify';
            DataClassification = CustomerContent;
        }
        field(130; "AVATAX Config. Disable: Read"; Boolean)
        {
            Caption = 'AVATAX Configuration Card Disable: Read';
            DataClassification = CustomerContent;
        }
        field(140; "Feature Manag. Disable: Read"; Boolean)
        {
            Caption = 'Feature Management Disable: Read';
            DataClassification = CustomerContent;
        }
        field(150; "Department No."; Code[50])
        {
            //Editable = false;
            Caption = 'Department No.';
            DataClassification = CustomerContent;
        }
        field(160; Status; Option)
        {
            OptionCaption = 'Enabled,Disabled';
            OptionMembers = Enabled, Disabled;
            FieldClass = FlowField;
            CalcFormula = lookup(User.State where("User Name"=field("User ID")));
            Caption = 'Status';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "User ID", "User Permission Set")
        {
            Clustered = true;
        }
    /*
        Key(key1; "Department No.")
        {

        }
        */
    }
}
