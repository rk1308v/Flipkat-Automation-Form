<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDAltVh.aspx.cs" Inherits="Flipkart_Form.AddDAltVh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Alternate Dedicated Vehicle</title>
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
                        width: 208px;
                }
        </style>
</head>
<body>
        <center>
                <form id="form1" runat="server">
                <div style="border: solid 1px green; width: 652px">
                        <asp:Label ID="Label1" Style="font-size: 30px;" runat="server" Text="Add Dedicated Alternate Vehicle"></asp:Label>
                        <hr />
                        <br />
                        &nbsp;<asp:Label ID="Label24" runat="server" ForeColor="Red" Text="Enter all * marked fields"></asp:Label>
                        <br />
                        <br />
                        <table style="width: 66%;" cellpadding="4px">
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label2" runat="server" Text="Date "></asp:Label>
                                                <asp:Label ID="Label17" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox placeholder="MM/DD/YY" ID="txtdate" runat="server" Height="27px" Width="140px"
                                                        ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label3" runat="server" Text="Vehicle Number"></asp:Label>
                                                <asp:Label ID="Label18" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtvhno" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label4" runat="server" Text="Alternate Vehicle Number"></asp:Label>
                                                <asp:Label ID="Label19" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtaltvhno" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label5" runat="server" Text="Vendor Name"></asp:Label>
                                                <asp:Label ID="Label20" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtvname" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label6" runat="server" Text="Vendor Contact"></asp:Label>
                                                <asp:Label ID="Label21" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtvcontact" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label7" runat="server" Text="Driver Name"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtdname" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label8" runat="server" Text="Driver Contact"></asp:Label>
                                                <asp:Label ID="Label23" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtdcontact" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label25" runat="server" Text="Vehicle Type"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtvhtype" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label27" runat="server" Text="Reporting time"></asp:Label>
                                                <asp:Label ID="Label28" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtreptime" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label29" runat="server" Text="Opening KM"></asp:Label>
                                                <asp:Label ID="Label30" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtopenkm" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label31" runat="server" Text="Closing Time"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtclosetime" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Label ID="Label33" runat="server" Text="Closing KM"></asp:Label>
                                        </td>
                                        <td>
                                                <asp:TextBox ID="txtclosekm" runat="server" Height="27px" Width="140px" ValidationGroup="form1"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                &nbsp;
                                        </td>
                                        <td>
                                                &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                        <td class="style1">
                                                <asp:Button ID="submit" OnClientClick="return dvalidate();" runat="server" Height="30px"
                                                        Text="Submit" Width="120px" OnClick="submit_Click" />
                                        </td>
                                        <td>
                                                <asp:Button ID="reset" runat="server" Height="30px" Text="Reset" Width="120px" OnClick="reset_Click" />
                                        </td>
                                </tr>
                        </table>
                        <br />
                </div>
                </form>
        </center>
</body>
</html>
