pageextension 50102 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 1-3
// Changed property on the Type field
// Added new fields:
// - Internal/External
// - Maximum Participants
// Added code to OnOpenPage trigger
{
 layout
 {
 modify(Type)
 {
 Visible = ShowType;
 }
 addafter(Type)
 {
 field("CSD Resource Type";Rec."CSD Resource Type")
 {
 }
 field("CSD Maximum Participants";Rec."CSD Maximum Participants")
 {
 Visible = ShowMaxField;
 }
 }
 }
trigger OnOpenPage();
 begin
 ShowType := (Rec.GetFilter(Type)='');
 ShowMaxField := 
(Rec.GetFilter(Type)=format(REc.Type::machine));
 end;
 var
 [InDataSet]
 ShowType : Boolean;
 [InDataSet]
 ShowMaxField : Boolean; 
}
