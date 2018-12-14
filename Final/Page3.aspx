<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Final.Page3" %>



<%-- DEBUG --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript">
        </script>


    <asp:Label ID="CustomerFirst" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
    <asp:Label ID="CustomerLast" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
    <asp:Label ID="CustomerOrder" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>

</asp:Content>
