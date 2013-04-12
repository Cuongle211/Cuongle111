<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="CSS/hw6.css" rel="stylesheet" />
    <title>Welcome to Homework #6</title>

</head>
<body>
    <h1>A Demo of Wizard Server Control</h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0">
            <WizardSteps>
                <asp:WizardStep runat="server" title="User Information">
                    <h4>Name:</h4> <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox> 
                    <br />
                    <h4>Address:</h4>
                        <asp:TextBox ID="AddressTextBox" runat="server" Height="50px"></asp:TextBox>
                    
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" title="Payment Information">
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Done">
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
