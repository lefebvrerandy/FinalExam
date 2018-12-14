<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Final.Page3" %>


<%-- DEBUG --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript">
        </script>

    
    <p>
    Welcome 
    <asp:Label ID="CustomerFirst" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
     
    <asp:Label ID="CustomerLast" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
     . 
    <br/>
    Your current order is a 
    <asp:Label ID="CustomerOrder" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>

    <asp:UpdatePanel ID="Update1" runat="server">
        <ContentTemplate>
            <asp:Button ID="ConfirmBtn" runat="server" Text="Confirm" OnClick="ConfirmBtn_Click"/>
            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" OnClick="CancelBtn_Click"/>

            <asp:Label ID="OrderLbl" runat="server"></asp:Label>


                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Label ID="TimerCountDown" runat="server" Text="Redirecting in 3 seconds..."
                            Font-Bold="True" Font-Names="Consolas" ForeColor="#FFCC66" style="color: #FF5050"></asp:Label>
                    </ProgressTemplate>
                </asp:UpdateProgress>
    </ContentTemplate>
    </asp:UpdatePanel>
    </p>
</asp:Content>
