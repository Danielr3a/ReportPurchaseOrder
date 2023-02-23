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
}