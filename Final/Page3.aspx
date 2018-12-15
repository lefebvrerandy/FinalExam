<%@ Page Title="Step 3: Order Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Final.Page3" %>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript"></script>



    <asp:Label ID="Page3Greetings" CssClass="subHeading" runat="server" />
    <br />
    <br />
    &nbsp<asp:Label ID="salesReportHeader" Text=" Your order includes: " CssClass="instructions" Style="text-align:left; font-weight: bold;" runat="server" />
    <asp:Label ID="CustomerOrder" CssClass="priceLabel" runat="server" />


    <br />
    <br />
    <asp:UpdatePanel ID="Update1" runat="server">
        <ContentTemplate>
            <asp:Button ID="CancelBtn" CssClass="button" runat="server" Text="Cancel" OnClick="CancelBtn_Click"/>
            <br />
            <asp:Button ID="ConfirmBtn" CssClass="button" runat="server" Text="Confirm" OnClick="ConfirmBtn_Click"/>
            <asp:Label ID="OrderLbl" runat="server" />


                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>

                        <br />
                        <br />
                        &nbsp&nbsp<asp:Label ID="TimerCountDown" runat="server" 
                            Text="Confirming order in 3 seconds..."
                            Font-Bold="True" 
                            Font-Names="Consolas" 
                            CssClass="errorMessage"/>
                    </ProgressTemplate>
                </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
