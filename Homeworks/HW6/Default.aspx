<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Welcome to Homework #6</title>
    <link href="CSS/hw6.css" rel="stylesheet" />
</head>
<body>
    <h1>A Demo of Wizard Server Control</h1>
    <form id="form1" runat="server">
        <div>

            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0">
                <WizardSteps>
                    <asp:WizardStep runat="server" Title="User Information">

                        <label>Name:</label><asp:TextBox ID="NameTB" runat="server"></asp:TextBox>
                        <br />

                        <label>Address:</label><asp:TextBox ID="AddressTB" runat="server" Height="40px" Width="300px"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Finish" Title="Payment Information">
                        <asp:Label ID="Label1" runat="server" Text="Card Type:" Width="100px"></asp:Label>
                        <asp:DropDownList ID="CardTypeDDL" runat="server">
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>MasterCard</asp:ListItem>
                            <asp:ListItem>AmEX</asp:ListItem>
                            <asp:ListItem>Discover</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Card Number:" Width="100px"></asp:Label>
                        <asp:TextBox ID="CardNumTB" runat="server" MaxLength="14"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Expiration Date:"></asp:Label>
                        <br />
                        <asp:Calendar ID="ExpCalendar" runat="server"></asp:Calendar>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Done">
                        <h3>Summary of input</h3>
                        <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                        <br />
                        <asp:Label ID="CardTypeLabel" runat="server" Text="Card Type"></asp:Label>
                        <br />
                        <asp:Label ID="ExpirationLabel" runat="server" Text="Expiration Date"></asp:Label>
                        <br />
                        will be used for the payment.
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

        </div>
    </form>
</body>
</html>
