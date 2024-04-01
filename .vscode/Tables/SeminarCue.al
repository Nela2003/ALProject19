table 50140 "CSD Seminar Cue"
{   Caption='Seminar Cue';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption='Primary Key';
        }
          field(20;"Planned"; Integer)
        {
            
            Caption='Planned';
            FieldClass=FlowField;
           CalcFormula=Count("CSD Seminar Reg. Header"where(Status=const(Planning)));
        }
          field(30;"Registered"; Integer)
        {
           
            Caption='Registered';
            FieldClass=FlowField;
             CalcFormula=Count("CSD Seminar Reg. Header"where(Status=const(Registration)));
        }
         field(40;"Closed"; Integer)
        {
            
            Caption='Closed';
            FieldClass=FlowField;
            CalcFormula=Count("CSD Seminar Reg. Header" where(Status=const(Closed)));
        }
        
    }
    
    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
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