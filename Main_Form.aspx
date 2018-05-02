<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Form.aspx.cs" Inherits="Flipkart_Form.Main_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="Scripts\uservalidation.js" type="text/javascript">

        </script>
        <title>Dedicated form</title>
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
                .style13
                {
                        width: 136px;
                        height: 39px;
                }
                .style15
                {
                        width: 130px;
                        height: 39px;
                }
                .style17
                {
                        width: 136px;
                }
                .style18
                {
                        width: 130px;
                }
                .style19
                {
                        width: 120px;
                }
                .style20
                {
                        width: 120px;
                        height: 39px;
                }
                .style21
                {
                        width: 76px;
                        margin-left: 40px;
                }
                .style22
                {
                        height: 41px;
                }
        </style>
</head>
<body>
        <center>
                <form id="form1" runat="server">
                <div style="border-style: solid; border-color: #000000; width: auto; height: auto;
                        margin-right: 1px; background-color: #FFFFFF;">
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="Black" Style="font-size: 30px" Text="Flipkart Dedicated Vehicle Form"></asp:Label>
                        <hr style="height: auto; width: auto; margin-left: 0px" />
                        <br />
                        <table style="width: 96%; margin-bottom: 0px; margin-left: 5px; width: 700px; height: auto;
                                margin-right: 0px;" id="tbldform" cellpadding="5px" cellspacing="2px">
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label2" runat="server" Text="Date "></asp:Label>
                                                <asp:Label ID="Label17" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox placeholder="DD/MM/YY" ID="txtdate" runat="server" Height="27px" Width="140px"
                                                        ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                        <td class="style18">
                                                &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
                                                <asp:Label ID="Label18" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox placeholder="Enter New Location" ID="txtnewlocation" runat="server"
                                                        Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                                &nbsp;&nbsp;
                                        </td>
                                        <td class="style18">
                                                &nbsp;
                                        </td>
                                        <td class="style21">
                                                &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style22">
                                                <asp:Label ID="Label27" runat="server" Text="Zone"></asp:Label>
                                                <asp:Label ID="Label28" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style22">
                                                <asp:DropDownList ID="ddlzone" runat="server" Height="33px" Style="margin-top: 0px"
                                                        Width="145px" ValidationGroup="form1">
                                                        <asp:ListItem Value="0">--Select Zone--</asp:ListItem>
                                                        <asp:ListItem Value="East">East</asp:ListItem>
                                                        <asp:ListItem Value="West">West</asp:ListItem>
                                                        <asp:ListItem Value="North">North</asp:ListItem>
                                                        <asp:ListItem Value="South">South</asp:ListItem>
                                                </asp:DropDownList>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label5" runat="server" Text="Vendor Name"></asp:Label>
                                                <asp:Label ID="Label19" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txtvname" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                        <td class="style19">
                                                <asp:Label ID="Label13" runat="server" Text="Vendor Contact"></asp:Label>
                                                <asp:Label ID="Label20" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txtvcontact" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style13">
                                                <asp:Label ID="Label14" runat="server" Text="Driver Name"></asp:Label>
                                        </td>
                                        <td class="style20">
                                                <asp:TextBox ID="txtdname" runat="server" Height="27px" Width="140px"></asp:TextBox>
                                        </td>
                                        <td class="style15">
                                                <asp:Label ID="Label15" runat="server" Text="Driver Contact"></asp:Label>
                                                <asp:Label ID="Label21" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style15">
                                                <asp:TextBox ID="txtdcontact" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label7" runat="server" Text="Vehicle Number"></asp:Label>
                                                <asp:Label ID="Label22" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txtvhnum" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                        <td class="style18">
                                                <asp:Label ID="Label6" runat="server" Text="Vehicle Type"></asp:Label>
                                        </td>
                                        <td class="style18">
                                                <asp:TextBox ID="txtvhtype" runat="server" Height="27px" Width="140px"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label8" runat="server" Text="Hub Detail"></asp:Label>
                                                <asp:Label ID="Label23" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txthub" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                        <td class="style18">
                                                &nbsp;
                                                <asp:Label ID="Label16" runat="server" Text="Hub Contact"></asp:Label>
                                        </td>
                                        <td class="style18">
                                                <asp:TextBox ID="txthubcontact" runat="server" Height="27px" Width="140px"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                <asp:Label ID="Label9" runat="server" Text="Operation Type"></asp:Label>
                                                <asp:Label ID="Label24" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:DropDownList ID="dwnoptype" runat="server" Height="33px" Style="margin-top: 0px"
                                                        Width="145px" ValidationGroup="form1">
                                                        <asp:ListItem Value="0">--Select OP--</asp:ListItem>
                                                        <asp:ListItem Value="1">LA</asp:ListItem>
                                                        <asp:ListItem Value="2">MP</asp:ListItem>
                                                        <asp:ListItem Value="3">LMD</asp:ListItem>
                                                </asp:DropDownList>
                                        </td>
                                        <td class="style18">
                                                &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                Reporting Time
                                                <asp:Label ID="Label25" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txtrtime" runat="server" Height="27px" Width="140px" placeholder="HH:MM"
                                                        ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                        <td class="style18">
                                                <asp:Label ID="Label10" runat="server" Text="Opening KM"></asp:Label>
                                                <asp:Label ID="Label26" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td class="style21">
                                                <asp:TextBox ID="txtokm" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style17">
                                                Closing Time
                                        </td>
                                        <td class="style19">
                                                <asp:TextBox ID="txtctime" runat="server" Height="27px" Width="140px" placeholder="HH:MM">
                                                </asp:TextBox>
                                        </td>
                                        <td class="style18">
                                                <asp:Label ID="Label11" runat="server" Text="Closing KM"></asp:Label>
                                        </td>
                                        <td class="style21">
                                                <asp:TextBox ID="txtckm" runat="server" Height="27px" Width="140px"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td colspan="4">
                                                <asp:RequiredFieldValidator ID="rv" runat="server" ErrorMessage="Enter All * marked fields "
                                                        ForeColor="Red" ValidationGroup="form1" ControlToValidate="txtvhnum"></asp:RequiredFieldValidator>
                                        </td>
                                </tr>
                                <tr>
                                        <td>
                                                <asp:Button ID="submit" runat="server" Height="40px" Style="margin-top: 3px" OnClick="submit_Click"
                                                        OnClientClick="return userValid();" Text="Submit" Width="124px" ValidationGroup="form1" />
                                        </td>
                                        <td>
                                                <asp:Button ID="reset" runat="server" Height="41px" OnClick="reset_Click" Style="margin-top: 0px"
                                                        Text="Reset" Width="130px" />
                                        </td>
                                        <td>
                                                <asp:Button ID="btndalternate" runat="server" Height="41px" Text="Add Alternate"
                                                        Width="139px" OnClick="btndalternate_Click1" />
                                        </td>
                                        <td>
                                                <asp:Button ID="showdetails" runat="server" Height="41px" Text="Details" Width="139px"
                                                        OnClick="showdetails_Click" />
                                        </td>
                                </tr>
                        </table>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <hr style="height: auto; width: auto; margin-left: 0px" />
                        <br />
                        <br />
                        <br />
                </div>
                </form>
        </center>
</body>
</html>
