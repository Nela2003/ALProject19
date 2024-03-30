tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
//added new fields 
//Seminar 
{
    fields
    {
        field(50100;"CSD Seminar";Code[10])
         {
           Caption='Seminar';
           TableRelation="Source Code";
         }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}