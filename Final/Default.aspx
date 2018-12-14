<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeadContent" runat="server">
</asp:Content>

<%-- Body content for the default page- Get the users name and ensure its valid before continuing to page 2 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="PageBodyContent" runat="server">
    

    <!-- Table containing the instructions,and input fields for the first page -->
    <table runat="server">
        <tr>
            <td colspan="2">Please enter your first name</td>
        </tr>


        <!-- Input for firstName and validate it -->
        <tr>
            <td runat="server">   
                <asp:TextBox 
                    ID="firstNameTB" 
                    PlaceHolder="John" 
                    MaxLength="50" 
                    runat="server"/>
            </td>
            <td runat="server">
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


        <!-- Input for lastName and validate it -->
        <tr>
            <td runat="server">
                <asp:TextBox 
                    ID="lastNameTB" 
                    PlaceHolder="Smith"
                    MaxLength="50" 
                    runat="server" />
            </td>


            <td runat="server">    
                <asp:RegularExpressionValidator 
                    ID="lastNameValidator" 
                    ValidationExpression="^[A-Za-z]+$"
                    ErrorMessage="Please use english letters and don't leave the line blank" 
                    ControlToValidate="lastNameTB" 
                    runat="server" />
            </td>
        </tr>


        <!-- Button to continue to page 2 -->
        <tr>    
            <td colspan="2" runat="server">
                <asp:Button ID="enterButton" Text="Enter" Onclick="EnterButtonClick" runat="server"/>
            </td>
        </tr>
    </table>

</asp:Content>
