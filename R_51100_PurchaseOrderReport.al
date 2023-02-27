report 51100 "Purchase Order Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    AdditionalSearchTerms = 'Purchase Order Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'PurchaseOrderReport.rdl';



    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            // DataItemTableView = sorting("No.")
            column(Buy_from_Vendor_Name_; "Buy-from Vendor Name") { }
            column(Document_Date; "Document Date") { }
            column(Order_Date; "Order Date") { }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code") { }
            column(Purchaser_Code; "Purchaser Code") { }

            dataitem(Purchase_Line; "Purchase Line")
            {
                // DataItemLink = "Document No." = Purchase_Header."No.";
                column(Description_; "Description") { }
                column(No_; "No.") { }
                column(Document_No_; "Document No.") { }
                column(Quantity; Quantity) { }
                column(Expected_Receipt_Date; "Expected Receipt Date") { }
                column(Qty__to_Receive; "Qty. to Receive") { }
                column(Qty__Received__Base_; "Qty. Received (Base)") { }

            }
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Filters)
                {
                    field("No. PO"; );
                    {
                        Caption = 'No. PO';
                        ApplicationArea = All;

                    }
                    field("Vendor Number"; Vendor_No)
                    {
                        ApplicationArea = All;
                    }
                    
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }

    var
        myInt: Integer;
}

