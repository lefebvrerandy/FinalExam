<%@ Page Title="Step 1: Getting your name" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeadContent" runat="server">
</asp:Content>


<%-- Body content for the default page- Get the users name and ensure its valid before continuing to page 2 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="PageBodyContent" runat="server">
    
    <br>
    <h2 class="subHeading">Getting To Know You</h2>

    <!-- Table containing the instructions,and input fields for the first page -->
    <table runat="server">
        <tr>
            <td colspan="2" class="firstNameInstructions">Please enter your first name</td>
        </tr>


        <!-- Input for firstName and validate it -->
        <tr>
            <td style="text-align:right" runat="server">
                <asp:TextBox 
                    ID="firstNameTB" 
                    CssClass="textboxInput"
                    PlaceHolder="John" 
                    MaxLength="50" 
                    runat="server"/>
            </td>
            <td runat="server">
                <asp:Label ID="firstNameValidator" runat="server" Text="Mandatory" CssClass="errorMessage"/>
            </td>
        </tr>
        <tr>
            <td  colspan="2" class="lastNameinstructions">Please enter your last name</td>
        </tr>


        <!-- Input for lastName and validate it -->
        <tr>
            <td runat="server">&nbsp&nbsp
                <asp:TextBox 
                    ID="lastNameTB" 
                    CssClass="textboxInput"
                    PlaceHolder="Smith"
                    MaxLength="50" 
                    runat="server" />
            </td>


            <td runat="server">    
                <asp:Label ID="lastNameValidator" runat="server" Text="Mandatory" CssClass="errorMessage"/>
            </td>
        </tr>
    </table>

    <!-- Button to continue to page 2 -->
    <asp:Button ID="enterButton" CssClass="button" Text="Enter" Onclick="EnterButtonClick" runat="server"/>

</asp:Content>
