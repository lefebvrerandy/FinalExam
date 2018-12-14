<%--
*  FILE          : Default.aspx
*  PROJECT       : PROG 2000 - Assignment 7
*  PROGRAMMER    : Randy Lefebvre & Bence Karner 
*  DESCRIPTION   : This file contains the HTML code required to display the content of the default web page, including the scripts 
*                  required to asynchronous send and receive updates from the server
--%>


<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TextEditor.Default" %>
<asp:Content ID="ScriptContent" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">
    

    <!-- Get the index of the selected file, and pass it to loadTextFile for async text retrieval-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/Scripts/JQuery.js"></script>
    <script type="text/javascript">


        var xmlhttp;        //AJAX webXML object for sending async requests
        var editorContents; //Text contents of the text box
        var selectedFileID; //Selected file to load


        /*  
         *  FUNCTION      : DEBUG
         *  DESCRIPTION   : DEBUG
         *  PARAMETERS    : DEBUG
         *  RETURNS       : DEBUG
         */
        $(document).ready(function () {
            $("#saveButton").click(function () {


                //Check if the user is trying to save the contents of the text editor before selecting a file to open
                if (selecetdFileID != null) {


                    //Grab the contents of the text editor, and save it to a JSON object for outbound transport
                    var boolReturn = saveFileContents();
                    if (boolReturn == true) {
                        var outgoingTextBoxContent = { "fileName": selectedFileID, "textContent": editorContents };
                        var packagedMessage = JSON.stringify(outgoingTextBoxContent);
                    }
                }
            });
        });


        /*  
         *  FUNCTION      : DEBUG
         *  DESCRIPTION   : DEBUG
         *  PARAMETERS    : DEBUG
         *  RETURNS       : bool : Returns true if the function executed fully
         */
        function saveFileContents()
        {
            editorContents = document.getElementById("TextEditor").innerText;
            return true;
        }



        /*  
         *  FUNCTION      : DEBUG
         *  DESCRIPTION   : DEBUG
         *  PARAMETERS    : DEBUG
         *  RETURNS       : DEBUG
         */
        $(document).ready(function () {
            $("a").click(function () {

                //Get the id of the selected file name
                selectedFileID = $(this).get(0).id;


                //Set the objects text property to null indicating we want to get the contents of a file
                var outgoingRequestObject = { "fileName": selectedFileID, "textContent": "NULL" };
                var packagedMessage = JSON.stringify(outgoingRequestObject);


                //Send the ajax request containing the packaged file name
                $.ajax({
                    method: "GET",
                    url: "~/Default.aspx/FileLocator",
                    data: packagedMessage,
                    contentType: "application/json; charset=ascii",
                    dataType: "json",
                    success: function (msg) {
                        var boolReturn = updateTextBoxConets(msg);
                    }
                });
            });
        });




        /*  
         *  FUNCTION      : updateTextBoxConets
         *  DESCRIPTION   : DEBUG
         *  PARAMETERS    : DEBUG
         *  RETURNS       : DEBUG
         */
        function updateTextBoxConets(msg)
        {
            document.getElementById("TextEditor").innerText = msg;
            return true;
        }

     </script>
</asp:Content>


<%-- populate the file listing with the files found on the server, and attach a unique ID to each item --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:PlaceHolder ID="ControlContainer" runat="server"/>
</asp:Content>