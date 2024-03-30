page 50100 "CSD Seminar Setup"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-3
{
 PageType = Card;
 SourceTable = "CSD Seminar Setup";
 Caption='Seminar Setup';
 InsertAllowed = false;
 DeleteAllowed = false;
 UsageCategory = Administration;
 layout
 {
 area(content)
 {
 group(Numbering)
 {
 field("Seminar Nos.";Rec."Seminar Nos.")
 {
 }
 field("Seminar Registration Nos.";
 Rec."Seminar Registration Nos.")
 {
 }
 field("Posted Seminar Reg. Nos.";
 Rec."Posted Seminar Reg. Nos.")
 {
 }
 }
 }
 }
 
 trigger OnOpenPage();
 begin
 if not Rec.get then begin
 Rec.init;
 Rec.insert;
 end;
 end;
}