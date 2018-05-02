<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Flipkart_Form.Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Details</title>
        <script src="Scripts\uservalidation.js" type="text/javascript">
        </script>
        
        <style type="text/css">
                .style2
                {
                        width: 196px;
                }
                .style3
                {
                        width: 244px;
                }
        </style>
</head>
<body>
        <div style="height: 712px">
                <center>
                        <asp:Label ID="Label23" runat="server" Text="Get Details" Style="font-size: 50px;"></asp:Label>
                        <br />
                        <hr />
                        <form id="form1" runat="server">
                        <div style="height: auto; width: 700px;" width="auto">
                                <table style="width: 50%;" cellpadding="4px">
                                       
                                        <tr>
                                                <td class="style2">
                                                        <asp:Label ID="Label20" runat="server" Text="Zone"></asp:Label>
                                                <asp:Label ID="Label24" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                </td>
                                                <td class="style3">
                                                        <asp:DropDownList ID="ddlzone" runat="server" Height="30px" Width="173px" 
                                                                AutoPostBack="True" onselectedindexchanged="ddlzone_SelectedIndexChanged">
                                                                <asp:ListItem Value="0">--Select Zone--</asp:ListItem>
                                                                <asp:ListItem>East</asp:ListItem>
                                                                <asp:ListItem>West</asp:ListItem>
                                                                <asp:ListItem>North</asp:ListItem>
                                                                <asp:ListItem>South</asp:ListItem>
                                                        </asp:DropDownList>
                                                </td>
                                        </tr>
                                        <tr>
                                        <td class="style2">
                                                        <asp:Label ID="Label1" runat="server" Text="Location"></asp:Label>
                                                <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                </td>
                                                <td class="style3">
                                                        <asp:DropDownList ID="ddllocation" runat="server" Height="30px" Width="173px" 
                                                                AutoPostBack="True" onselectedindexchanged="ddllocation_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                </td>
                                        
                                        
                                        </tr>
                                        <tr>
                                                <td class="style2">
                                                        <asp:Label ID="Label22" runat="server" Text="Vehicle No"></asp:Label>
                                                <asp:Label ID="Label25" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                                </td>
                                                <td class="style3">
                                                        <asp:TextBox ID="txtvhno" runat="server" Height="28px" Width="130px"></asp:TextBox>
                                                </td>
                                        </tr>
                                        <tr>
                                                <td class="style2">
                                                        <br />
                                                        <asp:Button ID="btnsubmit" runat="server" Text="Get Details" Height="41px" OnClick="btnsubmit_Click"
                                                                OnClientClick="return validate();" Width="131px" />
                                                </td>
                                                <td class="style3">
                                                        <br />
                                                        <asp:Button ID="btnreset" runat="server" Text="Reset" Height="41px" Width="131px"
                                                                OnClick="btnreset_Click" />
                                                </td>
                                        </tr>
                                </table>
                        </div>
                        </form>
                </center>
                <hr />
                <asp:Literal ID="literror" runat="server"></asp:Literal>
                <br />
                <center>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                AutoGenerateColumns="false" AllowPaging="true" PageSize="10">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                <Columns>
                                        <asp:BoundField ItemStyle-Width="120px" DataField="date" HeaderText="Date" DataFormatString="{0:d}" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="location" HeaderText="Location" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="zone" HeaderText="Zone" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="vendorname" HeaderText="Vendor Name" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="vendorcontact" HeaderText="Vendor Contact" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="drivername" HeaderText="Driver Name" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="drivercontact" HeaderText="Driver Contact" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="vehiclenumber" HeaderText="Vehicle Number" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="vehicletype" HeaderText="Vehicle Type" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="hub" HeaderText="Hub" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="hubcontact" HeaderText="Hub Contact" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="runid" HeaderText="Runsheet ID" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="optype" HeaderText="Operation Type" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="reptime" HeaderText="Reporting Time" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="openkm" HeaderText="Open KM" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="closetime" HeaderText="Closing Time" />
                                        <asp:BoundField ItemStyle-Width="120px" DataField="closekm" HeaderText="Closing KM" />
                                </Columns>
                        </asp:GridView>
                </center>
        </div>
</body>
</html>
