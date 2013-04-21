<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="WebForm.aspx.cs" Inherits="WebForm" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="Server">

    <%-- Ajax Scripts--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="ArvDateTextBox" runat="server" />
    <asp:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="ArvTimeTextBox" runat="server" Mask="99:99" MaskType="Time" AcceptAMPM="true" />
    <asp:MaskedEditExtender ID="MaskedEditExtender2" TargetControlID="PhoneTextBox" runat="server" Mask="999-999-9999" MaskType="Number" />
    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" TargetControlID="FirstLastTextBox" WatermarkText="FirstName LastName" runat="server"></asp:TextBoxWatermarkExtender>

    <%-- End Scripts --%>


    <asp:Label ID="Label1" runat="server" Text="Welcome to my Web Form" CssClass="h2centerblue" Width="572px"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="A demo form for hotel room reservation" CssClass="h3centerblack" Width="572px"></asp:Label>
    <br />
    <br />


    <asp:Panel ID="Panel1" runat="server" GroupingText="Customer Information">
        <asp:Label ID="Label3" runat="server" Text="Full Name:"></asp:Label><asp:TextBox ID="FirstLastTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FirstLastTextBox" runat="server"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="FirstLastTextBox" runat="server" ErrorMessage="FirstName LastName" ValidationExpression="[a-zA-Z]{1,20}[\s][A-Za-z]{1,20}"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email Address:"></asp:Label><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Phone:"></asp:Label><asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PhoneTextBox"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="###-###-####" ControlToValidate="PhoneTextBox" ValidationExpression="\d{3}\d{3}\d{4}"></asp:RegularExpressionValidator>

    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" GroupingText="Room Information">

        <asp:Label ID="Label6" runat="server" Text="Arrival Date:"></asp:Label><asp:TextBox ID="ArvDateTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ArvDateTextBox"></asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="Label7" runat="server" Text="Arrival Time:"></asp:Label><asp:TextBox ID="ArvTimeTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ArvTimeTextBox"></asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="Label8" runat="server" Text="Select a room type:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Luxury" Value="Luxury"></asp:ListItem>
            <asp:ListItem Text="Standard" Value="Standard"></asp:ListItem>
            <asp:ListItem Text="Economic" Value="Economic"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="Label9" runat="server" Text="Number of nights (valid number is from 1 to 30):"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="11">11</asp:ListItem>
            <asp:ListItem Value="12">12</asp:ListItem>
            <asp:ListItem Value="13">13</asp:ListItem>
            <asp:ListItem Value="14">14</asp:ListItem>
            <asp:ListItem Value="15">15</asp:ListItem>
            <asp:ListItem Value="16">16</asp:ListItem>
            <asp:ListItem Value="17">17</asp:ListItem>
            <asp:ListItem Value="18">18</asp:ListItem>
            <asp:ListItem Value="19">19</asp:ListItem>
            <asp:ListItem Value="20">20</asp:ListItem>
            <asp:ListItem Value="21">21</asp:ListItem>
            <asp:ListItem Value="22">22</asp:ListItem>
            <asp:ListItem Value="23">23</asp:ListItem>
            <asp:ListItem Value="24">24</asp:ListItem>
            <asp:ListItem Value="25">25</asp:ListItem>
            <asp:ListItem Value="26">26</asp:ListItem>
            <asp:ListItem Value="27">27</asp:ListItem>
            <asp:ListItem Value="28">28</asp:ListItem>
            <asp:ListItem Value="29">29</asp:ListItem>
            <asp:ListItem Value="30">30</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="Label10" runat="server" Text="Number of guests (the maximum guest is three):"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">

            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>

        </asp:DropDownList>

    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" GroupingText="Other Information">
        <asp:Label ID="Label11" runat="server" Text="PromoCode:"></asp:Label><asp:TextBox ID="PromoTextBox" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="[a-zA-Z0-9]{4}" ControlToValidate="PromoTextBox" ErrorMessage="Invalid"></asp:RegularExpressionValidator>
        <br />

        <asp:Label ID="Label12" runat="server" Text="Special Note:"></asp:Label><asp:TextBox ID="SpecNoteTextBox" runat="server" Height="100px" Width="250px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Clear Form" OnClientClick="theForm.reset();return false;" />
        <asp:Button ID="Button2" runat="server" Text="Request Reservation" />


    </asp:Panel>



</asp:Content>

