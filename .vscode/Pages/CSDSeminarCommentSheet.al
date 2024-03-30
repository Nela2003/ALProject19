page 50106 "CSD Seminar Comment Sheet"
{
 Caption = 'Seminar Comment Sheet';
 PageType = List;
 SourceTable = "CSD Seminar Comment Line";
 AutoSplitKey=true;
 layout
 {
 area(content)
 {
 repeater(Group)
 {
 field(Date;Rec.Date)
 {
 }
 field(Code;Rec.Code)
 {
 Visible=false;
 }
 field(Comment;Rec.Comment)
 { 
 }

 }
 }

 }
 trigger OnNewRecord(BelowxRec:Boolean)
 var
    myInt: Integer;
 begin
    Rec.SetupNewLine;
 end;
}
