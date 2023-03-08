page 51100 "Purchase Order Report"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Purchase Order";
    QueryCategory = 'Purchase Order';
    SourceTableView = sorting(RowNo) order(descending);

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;

                }
                field("Vendor Name"; rec."Buy-from Vendor Name")
                {
                    Caption = 'Vendor Name';
                    ApplicationArea = All;

                }
                field("Item Name"; rec.Description)
                {
                    Caption = 'Item Name';
                    ApplicationArea = All;

                }
                field("Part No."; rec."No.")
                {
                    Caption = 'Part No.';
                    ApplicationArea = All;

                }
                field("No. PO"; rec."Document No.")
                {
                    Caption = 'No. PO';
                    ApplicationArea = All;

                }
                field("PO Date"; rec."Document Date")
                {
                    Caption = 'PO Date';
                    ApplicationArea = All;

                }
                field("PO Qty"; rec.Quantity)
                {
                    Caption = 'PO Qty';
                    ApplicationArea = All;

                }
                field("Expected Receipt Date"; rec."Expected Receipt Date")
                {
                    Caption = 'Expected Receipt Date';
                    ApplicationArea = Basic, Suite;

                }
                field("Qty to receive"; rec."Qty. to Receive")
                {
                    Caption = 'Expected Receipt Date';
                    ApplicationArea = All;

                }
                field("Order Date"; rec."Order Date")
                {
                    Caption = 'Order Date';
                    ApplicationArea = All;

                }
                field("Shortcut Dimension 1 Code"; rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'Shortcut Dimension 1 Code';
                    ApplicationArea = All;

                }
                field("Purchaser Code"; rec."Purchaser Code")
                {
                    Caption = 'Purchaser Code';
                    ApplicationArea = All;

                }
                field("To be approved by user id"; rec."To be approved by user id")
                {
                    Caption = 'To be approved by user id';
                    ApplicationArea = All;

                }
                field("Last Date-Time Modified"; rec."Last Date-Time Modified")
                {
                    Caption = 'Last Date-Time Modified';
                    ApplicationArea = All;

                }
                field("Company Logo"; rec."Company Logo")
                {
                    Caption = 'Company Logo';
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            // group(Action1)
            // {
            // Caption = 'Recibo de Material - Material Receipt';
            // Image = Receipt;
            action(POReport)
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Recibo de Material - Material Receipt';
                Ellipsis = true;
                Image = Receipt;
                ToolTip = 'PO Report';

                trigger OnAction();
                var
                    // POR: Record "Purchase Header";
                    POR: Report "Purchase Order Report";
                begin

                    Clear(POR);
                    POR.RunModal();

                end;
            }
            // }
        }
    }

    trigger OnOpenPage()
    var
        CompanyInformation: Record "Company Information";
        QuerySummary: Query "Purchase Order";
    begin
        if QuerySummary.Open() then begin
            while QuerySummary.Read() do begin
                rec.Init();
                rec.RowNo := rec.RowNo;//??;
                rec."Buy-from Vendor Name" := QuerySummary.Buy_from_Vendor_Name;
                rec.Description := QuerySummary.Description_;
                rec."No." := QuerySummary.No_;
                rec."Document No." := QuerySummary.Document_No_;
                rec."Document Date" := QuerySummary.Document_Date;
                rec.Quantity := QuerySummary.Quantity;
                rec."Expected Receipt Date" := QuerySummary.Expected_Receipt_Date;
                rec."Qty. to Receive" := QuerySummary.Qty__to_Receive;
                rec."Order Date" := QuerySummary.Order_Date;
                rec."Shortcut Dimension 1 Code" := QuerySummary.Shortcut_Dimension_1_Code;
                rec."Purchaser Code" := QuerySummary.Purchaser_Code;
                rec."To be approved by user id" := QuerySummary.To_Be_Approved_By_User_ID;
                rec."Last Date-Time Modified" := QuerySummary.Last_Date_Time_Modified;
                rec."Qty. Received" := QuerySummary.Qty__Received__Base_;

            end;
            QuerySummary.Close();
        end;
        if CompanyInformation.FindFirst() then begin
            CompanyInformation.CalcFields(Picture);
            rec."Company Logo" := CompanyInformation.Picture;
        end;
    end;


}