﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Final.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageHeadContent" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">

        <script type="text/javascript">
        </script>


                    <asp:CheckBox id="CheckBox1" runat="server"
                    AutoPostBack="True" ForeColor="#FF3300"
                    Text="Pizza"
                    TextAlign="Right"
                    OnCheckedChanged="SelectedItems"/>

                    </br>

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


                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <font color="#FF3300"> TOTAL:</font> 
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
                            </br>
                            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" style="font-family: Consolas"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:Button ID="SubmitBtn" runat="server" Text="Make It!" OnClick="CheckIfValid" />

</asp:Content>

