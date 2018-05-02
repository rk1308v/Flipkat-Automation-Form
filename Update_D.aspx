<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_D.aspx.cs" Inherits="Flipkart_Form.Update_D" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Dedicated Vehicle update</title>
        <script src="Scripts\uservalidation.js" type="text/javascript">
        </script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
        
        <script type="text/javascript">

                $(document).ready(function () {
                        $('#txtdate').datepicker({
                                changeMonth: true,
                                changeYear: true,
                                dateFormat: 'dd/mm/yy'
                        }).datepicker("setDate", new Date())

                });
        
        </script>
        <style type="text/css">
                .style1
                {
                        width: 226px;
                }
                .style19
                {
                        width: 120px;
                }
                .style18
                {
                        width: 130px;
                }
        </style>
</head>
<body>
        <form id="form1" runat="server">
        <div style="height: auto">
                <asp:Label ID="Label1" runat="server" Text="Update Dedicated " Style="font-size: 30px;"
                        ForeColor="#66FF33"></asp:Label>
                <br />
                <br />
                <hr />
                <table style="width: 61%;" cellpadding="4px">
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label3" runat="server" Text="Select Zone"></asp:Label>
                                </td>
                                <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="136px" AutoPostBack="True"
                                                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem Value="0">--Select Zone--</asp:ListItem>
                                                <asp:ListItem>East</asp:ListItem>
                                                <asp:ListItem>West</asp:ListItem>
                                                <asp:ListItem>North</asp:ListItem>
                                                <asp:ListItem>South</asp:ListItem>
                                        </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label6" runat="server" Text="Vehicle No."></asp:Label>
                                </td>
                                <td>
                                        <asp:DropDownList ID="ddlvhno" runat="server" Height="30px" Width="136px" AutoPostBack="True"
                                                Style="font-weight: 700" 
                                                onselectedindexchanged="ddlvhno_SelectedIndexChanged"  >
                                        </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label13" runat="server" Text="Alternate Vehicle Number"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtaltvhno" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label12" runat="server" Text="Run Sheet ID"></asp:Label>
                                                <asp:Label ID="Label17" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                </td>
                                <td class="style19">
                                        <asp:TextBox ID="txtrunid" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                                <td class="style18">
                                        &nbsp;
                                </td>
                                <td class="style18">
                                        &nbsp;
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label7" runat="server" Text="Reporting Time"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtreptime" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                                <td>
                                        <asp:Label ID="Label9" runat="server" Text="Opening KM"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtopenkm" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label8" runat="server" Text="Closing Time"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtctime" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                                </td>
                                <td>
                                        <asp:Label ID="Label10" runat="server" Text="Closing KM"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtckm" runat="server" Height="30px" Width="136px"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Label ID="Label4" runat="server" Text="Remarks"></asp:Label>
                                </td>
                                <td>
                                        <asp:TextBox ID="txtremarks" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                </td>
                                <td>
                                </td>
                        </tr>
                        <tr>
                                <td class="style1">
                                        <asp:Button ID="btnadd" runat="server" Height="30px" OnClick="btnadd_Click" OnClientClick="return dupdate();"
                                                Text="Add New Entry" Width="125px" />
                                </td>
                                <td>
                                        <asp:Button ID="btnreset" runat="server" Height="30px" OnClick="btnreset_Click" Text="Reset"
                                                Width="125px" />
                                </td>
                                <td>
                                        <asp:Button ID="btnupdate" runat="server" Height="30px" OnClientClick="return dupdate();"
                                                Text="Update" Width="125px" OnClick="btnupdate_Click" />
                                </td>
                                <td>
                                        <asp:Button ID="btndelete" runat="server" Height="29px" OnClientClick="return dupdate();"
                                                Text="Delete" Width="125px" OnClick="btndelete_Click" />
                                </td>
                        </tr>
                </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        AllowPaging="True" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="vhno" HeaderText="vhno" SortExpression="vhno" />
                                <asp:BoundField DataField="altvhno" HeaderText="altvhno" 
                                        SortExpression="altvhno" />
                                <asp:BoundField DataField="runid" HeaderText="runid" SortExpression="runid" />
                                <asp:BoundField DataField="reptime" HeaderText="reptime" 
                                        SortExpression="reptime" />
                                <asp:BoundField DataField="openkm" HeaderText="openkm" 
                                        SortExpression="openkm" />
                                <asp:BoundField DataField="closetime" HeaderText="closetime" 
                                        SortExpression="closetime" />
                                <asp:BoundField DataField="closekm" HeaderText="closekm" 
                                        SortExpression="closekm" />
                                <asp:BoundField DataField="remarks" HeaderText="remarks" 
                                        SortExpression="remarks" />
                        </Columns>
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
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlipkartForm %>"
                        
                        SelectCommand="SELECT [date], [vhno], [altvhno], [runid], [reptime], [openkm], [closetime], [closekm], [remarks] FROM [UpdateD] WHERE ([vhno] = @vhno)">
                        <SelectParameters>
                                <asp:ControlParameter ControlID="ddlvhno" Name="vhno" PropertyName="SelectedValue"
                                        Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
        </div>
        </form>
</body>
</html>
