<%@ Page Title="Customize your Pizza" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Final.Page2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript">
        </script>

    <p class="CheckBox">
                    <asp:CheckBox id="CheckBox1" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Pizza"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    <br/>

                    <asp:CheckBox id="CheckBox2" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Pepperoni"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    <asp:CheckBox id="CheckBox3" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Mushrooms"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    <asp:CheckBox id="CheckBox4" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Green Olives"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    <asp:CheckBox id="CheckBox5" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Green Peppers"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    <asp:CheckBox id="CheckBox6" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Extra Cheese"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>
        </p>

        <p class="updateCost">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <font color="#FF3300"> TOTAL:</font> 
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
                            </br>
                            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
        </p>
                    <asp:Button ID="SubmitBtn" runat="server" Text="Make It!" OnClick="CheckIfValid" />

</asp:Content>

