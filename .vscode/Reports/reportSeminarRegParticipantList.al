report 50101 "CSD SeminarRegParticipantList"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultRenderingLayout = './Layouts/SeminarRegParticipantList.rdl';
    DefaultLayout=RDLC;
   RDLCLayout='.vscode\Layouts\SeminarRegParticipantList.rdl';
    Caption='Seminar Reg.-Participant List.';
    
    dataset
    {
        dataitem("Seminar Registration Header";"CSD Seminar Reg. Header" )
        {  DataItemTableView=sorting("No.");
          RequestFilterFields="No.","Seminar No.";
            column("No_"; "No.")
            {
              IncludeCaption=true;  
            }
             column("Seminar_No"; "Seminar No.")
            {
              IncludeCaption=true;  
            }
             column("Seminar_Name"; "Seminar Name")
            {
              IncludeCaption=true;  
            }
             column("Starting_Date"; "Starting Date")
            {
              IncludeCaption=true;  
            }
             column("Duration_"; "Duration")
            {
              IncludeCaption=true;  
            }
             column("Instructor_Name"; "Instructor Name")
            {
              IncludeCaption=true;  
            }
            column("Room_Name"; "Room Name")
            {
             IncludeCaption=true;   
            }

            dataitem("Seminar Registration Line";"CSD Seminar Registration Line"){
       DataItemTableView=sorting("Document No.", "Line No.");
       DataItemLink="Document No."=field("No.");

       column("Bill_To_Customer_No"; "Bill-to Customer No.")
            {
             IncludeCaption=true;   
            }
            column("Participant_Contact_No"; "Participant Contact No.")
            {
             IncludeCaption=true;   
            }
            column("Participant_Name";"Participant Name")
            {
             IncludeCaption=true;   
            }
        }
        }
        dataitem("Company Information";"Company Information"){
            column("Company_Name";"Name"){
                IncludeCaption=true;
            }
        }
       
    }
    
    requestpage
    {
        layout
        {
            area(Content)
            {  
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
               label("SeminarRegistrationHeaderCap"){
                Caption='Seminar Registration List';
               }
      
            }

             
        
            }
            
       
            }
        
    
        // actions
        // {
        //     area(processing)
        //     {
        //         action(ActionName)
        //         {
        //             ApplicationArea = All;
                    
        //         }
        //     }
        // }
    
    
    //rendering
    //{
       // layout(LayoutName)
       // {
            //Type = Excel;
            //LayoutFile = 'mySpreadsheet.xlsx';
       // }
   // }
    
    var
        myInt: Integer;
        

}