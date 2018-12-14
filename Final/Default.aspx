


<%-- Content place holder for any scripts required for the default page --%>
<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Default" %>
<asp:Content ID="ScriptContent" ContentPlaceHolderID="PageHeadContent" runat="server">
    

    <!-- Load the jquery scripts from the source solders -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/Scripts/JQuery.js"></script>


</asp:Content>


<%-- Body content for the default page- Get the users name and ensure its valid before continuing to page 2 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="PageBodyContent" runat="server">
    
    <table runat="server">
        <tr>
            <td colspan="2">Please enter your first name</td>
        </tr>
        <tr>
            <td runat="server">    <!-- Input for firstName-->
                <asp:TextBox 
                    ID="firstNameTB" 
                    PlaceHolder="John" 
                    MaxLength="50" 
                    runat="server"/>
            </td>

            <td runat="server">    <!-- Validator for firstName -->
                <asp:RegularExpressionValidator 
                    ID="firstNameValidator" 
                    ValidationExpression="^[A-Za-z]+$"
                    ErrorMessage="Please use english letters and don't leave the line blank" 
                    ControlToValidate="firstNameTB" 
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td  colspan="2">Please enter your last name</td>
        </tr>
        <tr>
            <td runat="server">    <!-- Input for lastName -->
                <asp:TextBox 
                    ID="lastNameTB" 
                    PlaceHolder="Smith"
                    MaxLength="50" 
                    runat="server" />
            </td>


            <td runat="server">    <!-- Validator for lastName-->
                <asp:RegularExpressionValidator 
                    ID="lastNameValidator" 
                    ValidationExpression="^[A-Za-z]+$"
                    ErrorMessage="Please use english letters and don't leave the line blank" 
                    ControlToValidate="lastNameTB" 
                    runat="server" />
            </td>
        </tr>
        <tr>    <!-- Button to continue to page 2 -->
            <td colspan="2" runat="server">
                <asp:Button ID="enterButton" Text="Enter" Onclick="EnterButtonClick" runat="server"/>
            </td>
        </tr>
    </table>

</asp:Content>