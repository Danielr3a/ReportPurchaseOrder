page 51100 "Purchase Order Report"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Purchase Order";
    SourceTableView = sorting("No.") order(descending);

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
                    Caption = '.Vendor Name';
                    ApplicationArea = All;

                }
                field("Item Name"; rec.Description)
                {
                    Caption = 'Item Name';
                    ApplicationArea = All;

                }
                field("Part No."; rec."No.") //<---
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
                    ApplicationArea = All;

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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        QuerySummary: Query "Purchase Order";
    begin
        if QuerySummary.Open() then begin
            while QuerySummary.Read() do begin
                rec.Init();

            end;
        end;
    end;


}