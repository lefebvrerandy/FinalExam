<%@ Page Title="Step 4: Order Status" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="Final.Page4" %>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript">
        </script>


    <asp:Label ID="Page4Greetings" CssClass="subHeading" runat="server" />

    <br/>
    &nbsp<asp:Label ID="orderHeader" Text="Your Order: " CssClass="instructions" runat="server" />
    <asp:Label ID="CustomerOrder" CssClass="priceLabel" runat="server"/>

    <br/>
    <br/>
    <br/>
    &nbsp<asp:Label ID="orderStatusHeader" Text="Status: " CssClass="instructions" runat="server" />
    <asp:Label ID="CustomerOrderStatus" CssClass="priceLabel" runat="server"/>

</asp:Content>
