page 54101 "UserGatedPermissions"
{
    ApplicationArea = Basic, Suite;
    Caption = 'User Gated Permissions';
    PageType = List;
    SourceTable = "UserGatedPermissions";
    UsageCategory = Lists;
    InsertAllowed = true;
    DeleteAllowed = true;
    ModifyAllowed = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Customer Payment Modify"; Rec."Customer Payment Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Payment Modify: Disable field';
                }
                field("Customer Tax Disable: Modify"; Rec."Customer Tax Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specfies the value of the Customer Tax Modify: Disable field';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Chart of Accts Disable: Read"; Rec."Chart of Accts Disable: Read")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chart of Account Disable: Read field.';
                }
                field("Chart of Accts Disable: Insert"; Rec."Customer Card Disable: Insert")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chart of Account Disable: Insert field.';
                }
                field("Customer Card Disable: Modify"; Rec."Customer Card Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Card Disable: Modify field.';
                }
                field("Vendor Card Disable: Insert"; Rec."Vendor Card Disable: Insert")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Card Disable: Insert field.';
                }
                field("Vendor Card Disable: Modify"; Rec."Vendor Card Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Card Disable: Modify field.';
                }
                field("Item Card Disable: Insert"; Rec."Item Card Disable: Insert")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Card Disable: Insert field.';
                }
                field("Item Card Disable: Edit"; Rec."Item Card Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Card Disable: Modify field.';
                }
                field("Sales Order Disable: Insert"; Rec."Sales Order Disable: Insert")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order Disable: Insert field.';
                }
                field("Sales Order Disable: Modify"; Rec."Sales Order Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales Order Disable: Modify field.';
                }
                field("Purchase Order Disable: Insert"; Rec."Purchase Order Disable: Insert")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Order Disable: Insert field.';
                }
                field("Purchase Order Disable: Modify"; Rec."Purchase Order Disable: Modify")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purchase Order Disable: Modify field.';
                }
                field("Feature Manag. Disable: Read"; Rec."Feature Manag. Disable: Read")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Feature Management Disable: Read field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ModifyBatch)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Modify Batch';
                Image = EditList;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
            //RunObject = report ZSUserPermissionActivations;
            }
        }
    }
}
