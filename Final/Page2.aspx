<%@ Page Title="Step 2: Customize your Pizza" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Final.Page2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBodyContent" runat="server">
    
        <!-- Greet the user -->
    <asp:Label ID="Page2Greetings" CssClass="subHeading" runat="server" />
    <br />
    <br />
    
    <asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"/>
        <script type="text/javascript"></script>


    <!-- Organize the toppings into a table-->
    <table id="customizePizza">
      <tr>
        <th class="tableHeader">Select Toppings</th>
        <th class="tableHeader">Price</th>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox1" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Pizza"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
          <td class="ingrediants">$10.00</td>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox2" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Pepperoni"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
        <td class="ingrediants">$1.00</td>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox3" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Mushrooms"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
          <td class="ingrediants">$1.00</td>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox4" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Green Olives"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
          <td class="ingrediants">$1.00</td>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox5" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Green Peppers"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
          <td class="ingrediants">$1.00</td>
      </tr>
      <tr>
        <td class="auto-style3"><asp:CheckBox id="CheckBox6" runat="server"
            AutoPostBack="True"
            CssClass="ingrediants"
            Text="Extra Cheese"
            TextAlign="Right"
            OnCheckedChanged="SelectedItems"/></td>
          <td class="ingrediants">$1.50</td>
      </tr>
    </table>

    <br/>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="totalPriceLabel" Text="Total: " CssClass="priceLabel" runat="server"/>
            <asp:Label ID="Label1" CssClass="pizzaPrice" runat="server" />
            <asp:Label ID="Label2" CssClass="pizzaPrice" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>

    <br/>
    <asp:Button ID="SubmitBtn" runat="server" Text="Make It!" CssClass="button" OnClick="CheckIfValid" />

</asp:Content>




