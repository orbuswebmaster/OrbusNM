pageextension 54103 CaseCardWSGExt extends "Case Card WSG"
{
    layout
    {
        addafter(Status)
        {
            /*field("Contact Email"; Rec."Contact Email")
            {
                ApplicationArea = All;
                ToolTip = 'Contact Email';
            }*/
            field(Urgency; Rec.Urgency)
            {
                ApplicationArea = All;
                ToolTip = 'Urgency';
            }
            /*field("Resolution Date"; Rec."Resolution Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Resolution Date';
                }*/
        }
        // addafter("Reason Description")
        // {

        //     field("Responsible Owner"; Rec."Responsible Owner")
        //     {
        //         ApplicationArea = All;
        //         ToolTip = 'Responsible Owner';

        //         trigger OnLookup(var Text: Text): Boolean var
        //             User: Record User;
        //             var1: Integer;
        //         begin
        //             if Page.RunModal(Page::Users, User) = Action::LookupOK then begin
        //                 Rec."Responsible Owner":=User."User Name";
        //                 if Rec.Modify()then var1:=1
        //                 else
        //                     Error('Record was not successfully modifed. Please try again.');
        //             end;
        //         end;
        //         trigger OnValidate()
        //         var
        //             User: Record User;
        //             var1: Integer;
        //         begin
        //             if Rec."Responsible Owner" = '' then var1:=1
        //             else
        //             begin
        //                 User.Reset();
        //                 User.SetFilter("User Name", Rec."Responsible Owner");
        //                 if User.FindFirst()then var1:=1
        //                 else
        //                     Error('Value in "Responsible Owner" table field has to be based on an existing User Record');
        //             end;
        //         end;
        //     }
        // }
        modify("Contact Name")
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                Contact: Record Contact;
                ContactListPage: Page "Contact List";
                var1: Integer;
            begin
                ContactListPage.LookupMode(true);
                Contact.Reset();
                Contact.SetFilter("Company Name", Rec."Entity Name");
                if Page.RunModal(Page::"Contact List", Contact) = Action::LookupOK then begin
                    Rec."Contact Name" := Contact.Name;
                    Rec."Contact Email" := Contact."E-Mail";
                    Rec."Contact Phone" := Contact."Phone No.";
                    if Rec.Modify() then
                        var1 := 1
                    else
                        Error('Record was not successfully modified. Please try again.');
                end;
            end;
        }
    }
}
