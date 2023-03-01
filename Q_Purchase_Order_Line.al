query 51100 "Purchase Order"
{
    elements
    {
        dataitem(Purchase_Header; "Purchase Header")
        {
            column(Buy_from_Vendor_Name_; "Buy-from Vendor Name") { }
            column(Document_Date; "Document Date") { }
            column(Order_Date; "Order Date") { }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code") { }
            column(Purchaser_Code; "Purchaser Code") { }
            dataitem(Purchase_Line; "Purchase Line")
            {
                DataItemLink = "Document No." = Purchase_Header."No.";
                column(Description_; "Description") { }
                column(No_; "No.") { }
                column(Document_No_; "Document No.") { }
                column(Quantity; Quantity) { }
                column(Expected_Receipt_Date; "Expected Receipt Date") { }
                column(Qty__to_Receive; "Qty. to Receive") { }
                column(Qty__Received__Base_; "Qty. Received (Base)") { }
                dataitem(Workflows_Entries_Buffer; "Workflows Entries Buffer")
                {
                    DataItemLink = "To Be Approved By User ID" = Purchase_Header."Buy-from Vendor Name";
                    column(To_Be_Approved_By_User_ID; "To Be Approved By User ID") { }
                    column(Last_Date_Time_Modified; "Last Date-Time Modified") { }
                }
            }


        }

    }
}