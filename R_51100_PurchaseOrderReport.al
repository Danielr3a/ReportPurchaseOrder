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
            DataItemTableView = sorting("Buy-from Vendor No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Buy-from Vendor No.";
            column(RowNo; RowNo) { }
            column(Buy_from_Vendor_Name_; "Buy-from Vendor Name") { }
            column(Document_Date; "Document Date") { }
            column(Order_Date; "Order Date") { }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code") { }
            column(Purchaser_Code; "Purchaser Code") { }

            dataitem(Purchase_Line; "Purchase Line")
            {
                RequestFilterFields = "Document No.", "Expected Receipt Date";
                // DataItemLink = "Planned Receipt Date" = field("Expected Receipt Date");
                column(Description_; "Description")
                { }
                column(No_; "No.") { }
                column(Document_No_; "Document No.") { }
                column(Quantity; Quantity) { }
                column(Expected_Receipt_Date; "Expected Receipt Date") { }
                column(Qty__to_Receive; "Qty. to Receive") { }
                column(Qty__Received__Base_; "Qty. Received (Base)") { }
                // column(Company_Logo_; "I") { }
            }

            dataitem("Workflows Entries Buffer"; "Workflows Entries Buffer")
            {
                // DataItemTableView = sorting("Entry No.")
                // ?? DataItemLink = "To be approved by user id" = field("Buy-from Vendor Name");
                column(To_Be_Approved_By_User_ID; "To Be Approved By User ID") { }
                column(Last_Date_Time_Modified; "Last Date-Time Modified") { }
            }

            dataitem(Company_Information; "Company Information")
            {
                column(Picture; Picture) { }
            }
            trigger OnAfterGetRecord()
            var
            begin
                RowNo := RowNo + 1;
            end;

        }
    }


    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group("ER Date")
                {
                    // field(Expected_Receipt_Date; Expected_Receipt_Date)
                    // {

                    //     Caption = 'Expected Receipt Date';
                    //     TableRelation = "Purchase Line";
                    //     ApplicationArea = All;

                    // }
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


    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        RowNo: Integer;

        Expected_Receipt_Date: Date;



}