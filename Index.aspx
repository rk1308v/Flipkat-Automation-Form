<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Flipkart_Form.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title></title>
</head>
<body>
        <center>
                <form id="form1" runat="server">
                <div style="border: 1px solid #000000; width: 501px; height: 339px; background-color: #C0C0C0;">
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Yellow" Style="font-size: 30px;"
                                Text="Flipkart Main Page"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="33px" Text="Add Dedicated Vehicle"
                                Width="197px" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Height="33px" Text="Update Dedicated Vehicle"
                                Width="197px" OnClick="Button2_Click" />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Height="33px" Text="Add ADHOC Vehicle" 
                                Width="197px" onclick="Button3_Click" />
                        <br />
                        <br />
                        <asp:Button ID="Button4" runat="server" Height="33px" Text="Show Details" Width="197px"
                                OnClick="Button4_Click" />
                        <br />
                        <br />
                        <asp:Button ID="btnmis" runat="server" Height="33px" Text="Generate MIS Report" Width="197px"
                                OnClick="btnmis_Click" />
                        <br />
                </div>
                </form>
        </center>
</body>
</html>
