page  50122 "CSD Seminar Registers"
{
    Caption = 'CSD Seminar Registers';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "CSD Seminar Register";
    Editable=false;
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No.";Rec."No."){
                ApplicationArea=all;
                }
               field("Creation Date";Rec."Creation Date"){
                ApplicationArea=all;
               }
               field("User ID";Rec."User ID"){
                ApplicationArea=all;
               }
               field("Source Code";Rec."Source Code"){
                ApplicationArea=all;
               }
               field("Journal Batch Name";Rec."Journal Batch Name"){
                ApplicationArea=all;
               }
                
            }
        }
        area(Factboxes)
        {
            systempart(Links;Links){
                ApplicationArea=RecordLinks;
                Visible=true;

            }
             systempart(Notes;Notes){
                ApplicationArea=Notes;
                Visible=true; 
        }
    }
    }
    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
             Image=WarrantyLedger;
             RunObject=codeunit "CSD Seminar Reg.-Show Ledger";
            }

        }
    }
}