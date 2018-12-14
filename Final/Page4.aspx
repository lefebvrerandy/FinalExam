<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="Final.Page4" %>


<%-- DEBUG --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript">
        </script>

    <p>
    Order Status Report for 
    <asp:Label ID="CustomerFirst" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
     
    <asp:Label ID="CustomerLast" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
     . 
    <br/>
    Your order of 
    <asp:Label ID="CustomerOrder" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>

     has been
    <asp:Label ID="CustomerOrderStatus" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
    .
    </p>

</asp:Content>
