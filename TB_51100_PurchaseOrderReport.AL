table 51100 "Purchase Order"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Row No."; Integer)
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;

        }
        field(10; "Buy-from Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            DataClassification = ToBeClassified;

        }
        field(20; "Description"; Text[100])
        {
            Caption = 'Item Name';
            DataClassification = ToBeClassified;

        }
        field(30; "No."; Code[20])
        {
            Caption = 'Part No.';
            DataClassification = ToBeClassified;

        }
        field(40; "Document No."; Code[20])
        {
            Caption = 'No. PO';
            DataClassification = ToBeClassified;

        }
        field(50; "Document Date"; Date)
        {
            Caption = 'PO Date';
            DataClassification = ToBeClassified;

        }
        field(60; "Quantity"; Decimal)
        {
            Caption = 'PO Qty';
            DataClassification = ToBeClassified;

        }
        field(70; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
            DataClassification = ToBeClassified;

        }
        field(80; "Qty. to Receive"; Decimal)
        {
            Caption = 'Qty. to Receipt';
            DataClassification = ToBeClassified;

        }
        field(90; "Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = ToBeClassified;

        }
        field(100; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Requisition PIC';
            DataClassification = ToBeClassified;

        }
        field(110; "Purchaser Code"; Code[20])
        {
            Caption = 'PO PIC';
            DataClassification = ToBeClassified;

        }
        field(120; "To be approved by user id"; Integer)
        {
            Caption = 'Approved By';
            DataClassification = ToBeClassified;

        }
        field(130; "Last Date-Time Modified"; Integer)
        {
            Caption = 'Approved Date';
            DataClassification = ToBeClassified;

        }
        field(140; "Qty. Received"; Integer)
        {
            Caption = 'PO Qty Received';
            DataClassification = ToBeClassified;

        }
        field(150; "Company Logo"; BLOB)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}