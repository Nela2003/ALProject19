pageextension 50104 "CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
{
    layout
    {
       addlast(Content)
       {
       field("Seminar No.";Rec."CSD Seminar No.")
        {
        }
       field("Seminar Registration No.";Rec."CSD Seminar Registration No.")
       {
       }
       }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}