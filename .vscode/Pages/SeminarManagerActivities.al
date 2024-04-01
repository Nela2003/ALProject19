page 50140  "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Cue";
    Caption='CSD Seminar Manager Activities';
    Editable=false;
    
     layout
 {
 area(content)
 {
 cuegroup(Registrations)
 {
 Caption='Registrations';
 field(Planned;Rec.Planned)
 {
 }
 field(Registered;Rec.Registered)
 {
 }
 actions
 {
 action(New)
 {
 Caption='New';
 RunObject=page "CSD Seminar Registration";
 RunPageMode=Create;
 } }}
 
 cuegroup("For Posting"){
field(Closed;Rec.Closed)
{
    
}
 
  
}}}
 
trigger OnOpenPage()
begin
 if not Rec.get then begin
    Rec.init;
    Rec.insert;
    
end;
end;
 }

