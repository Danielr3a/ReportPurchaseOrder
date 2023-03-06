pageextension 51100 "POExt" extends "Purchase Order List"
{
    actions
    {
        addlast(processing)
        {
            action(MaterialRec)
            {
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Category5;
                Caption = 'Receipt of Material - Recibo del Material';
                Image = "Report";
                ApplicationArea = All;
                Visible = true;
                RunObject = Report "Purchase Order Report";
                ToolTip = 'Print the Report of the Receipt of Material';
            }

        }
    }

}


