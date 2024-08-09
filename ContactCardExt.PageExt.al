pageextension 54105 ContactCardExt extends "Contact Card"
{
    trigger OnQueryClosePage(CloseAction: Action): Boolean var
    begin
        Rec.TestField(Name);
        Rec.TestField("E-Mail");
        Rec.TestField("Company Name");
    end;
}
