pageextension 54102 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("First Invoice Date"; Rec."First Invoice Date")
            {
                ApplicationArea = All;
                ToolTip = 'First Invoice Date';
            }
        }
        modify("Needs Magento ID")
        {
            Caption = 'Needs Magento ID / Update';
        }
    }
    trigger OnQueryClosePage(CloseAction: Action): Boolean var
        DefaultDimensionsRec: Record "Default Dimension";
        SystemCreatedDateTime1: DateTime;
        CurrentDateTime1: Datetime;
        SystemCreatedDate1: Date;
        SystemCreatedTime1: Time;
        CurrentDate1: Date;
        CurrentTime1: Time;
        Duration1: Duration;
        AmountMinutesInt: Decimal;
        AmountMinutesText: Text;
    begin
        //Check Name
        Rec.TestField(Name);
        //Check Dimensions
        SystemCreatedDate1:=DT2Date(Rec.SystemCreatedAt);
        SystemCreatedTime1:=DT2Time(Rec.SystemCreatedAt);
        CurrentDate1:=DT2Date(CurrentDateTime);
        CurrentTime1:=DT2Time(CurrentDateTime);
        SystemCreatedDateTime1:=CreateDateTime(SystemCreatedDate1, SystemCreatedTime1);
        CurrentDateTime1:=CreateDateTime(CurrentDate1, CurrentTime1);
        Duration1:=CurrentDateTime1 - SystemCreatedDateTime1;
        AmountMinutesText:=((Format(Round(Duration1 / 60000, 0.01, '>'))));
        Evaluate(AmountMinutesInt, AmountMinutesText);
        if((abs(AmountMinutesInt) < 30))then begin
            DefaultDimensionsRec.Reset();
            DefaultDimensionsRec.SetFilter("Table ID", '18');
            DefaultDimensionsRec.SetFilter("No.", Rec."No.");
            DefaultDimensionsRec.FilterGroup(-1);
            DefaultDimensionsRec.Setfilter("Dimension Code", 'INDUSTRY');
            DefaultDimensionsRec.Setfilter("Dimension Code", 'CHANNEL');
            if not DefaultDimensionsRec.findfirst then begin
                error('No Industry or Channel Default Dimensions found for Customer, please add and try again');
                exit(false);
            end;
        end
        else
        begin
            DefaultDimensionsRec.Reset();
            DefaultDimensionsRec.SetFilter("Table ID", '18');
            DefaultDimensionsRec.SetFilter("No.", Rec."No.");
            DefaultDimensionsRec.FilterGroup(-1);
            DefaultDimensionsRec.Setfilter("Dimension Code", 'INDUSTRY');
            DefaultDimensionsRec.Setfilter("Dimension Code", 'CHANNEL');
            if not DefaultDimensionsRec.findfirst then message('No Industry or Channel Default Dimensions found for Customer, please reopen and add');
        end;
    end;
}
