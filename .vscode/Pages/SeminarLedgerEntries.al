page 50121 "CSD Seminar Ledger Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable=false;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
               field("Posting Date";Rec."Posting Date"){

               }
               field("Document No.";Rec."Document No."){

               }
               field("Document Date";Rec."Document Date"){

               }
               field("Entry Type";Rec."Entry Type"){

               }
               field("Seminar No.";Rec."Seminar No."){

               }
               field(Description;Rec.Description){

               }
               field("Bill-to Customer No.";Rec."Bill-to Customer No."){

               }
               field("Charge Type";Rec."Charge Type"){

               }
               field(Type;Rec.Type){

               }

               field(Quantity;Rec.Quantity){

               }
               field("Unit Price";Rec."Unit Price"){

               }
               field("Total Price";Rec."Total Price"){

               }
               field(Chargeable;Rec.Chargeable){

               }
               field("Participant Contact No.";Rec."Participant Contact No."){

               }
               field("Participant Name";Rec."Participant Name"){

               }
               field("Instructor Resource No.";Rec."Instructor Resource No."){

               }
               field("Room Resource No.";Rec."Room Resource No."){

               }
               field("Starting Date";Rec."Starting Date"){

               }
               field("Seminar Registration No.";Rec."Seminar Registration No."){

               }
               field("Entry No.";Rec."Entry No."){

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
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
            action("&Navigate")
            {
            Caption='&Navigate';
            Image=Navigate;
            Promoted=true;
            PromotedCategory=Process;
            trigger OnAction();
            var
            Navigate : page Navigate;
            begin
            Navigate.SetDoc(Rec."Posting Date",Rec."Document No.");
            Navigate.RUN;
            end;
        }
    }
}}