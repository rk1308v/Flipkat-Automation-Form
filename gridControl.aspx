<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridControl.aspx.cs" Inherits="Flipkart_Form.gridControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:TextBox ID="TextBox13" runat="server" ValidationGroup="form1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rv" runat="server" 
            ControlToValidate="TextBox13" ErrorMessage="all fields req" 
            ValidationGroup="form1"></asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="CustomValidator"></asp:CustomValidator>
    <br />
    <asp:TextBox ID="txtmobno" runat="server" ValidationGroup="form1"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtmobno" ErrorMessage="invalid mob no" 
            ValidationExpression="^([7-9]{1})([1-9]{9})$" ValidationGroup="form1"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="form1" />
    <br />
    <br />
    </form>
</body>
</html>
