<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="adhoc.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  
    xmlns="http://www.w3.org/1999/xhtml">  
    <head id="Head1" runat="server">  
        <title></title>  
        <style type="text/css">  
.style1  
{  
width: 122px;  
}   
.style2  
{  
width: 239px;  
}  
.style3  
{  
text-align: left;  
text-decoration: underline;  
font-family: Arial, Helvetica, sans-serif;  
font-size: large;  
}  
</style>  
    </head>  
    <body>  
        <form id="form1" runat="server">  
            <div>  
                <table style="width:100%;">  
                    <caption class="style3">  
                        <asp:label runat="server">Flipkart Adhoc Vehicle Form</asp:label>  
                    </caption>  
                    <tr>  
                        <td class="style1">  
 </td>  
                        <td class="style2">  
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label1" runat="server" Text="Date:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="Txtdate" runat="server" Height="22px" MaxLength="20"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   
ControlToValidate="Txtdate" ErrorMessage="Please Enter Date!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label2" runat="server" Text=" Add New Location:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="Txtaddloc" runat="server" Height="22px" MaxLength="10"   
Width="158px" ontextchanged="Txtaddloc_TextChanged1"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="Txtaddloc" ErrorMessage="Please Enter your Location!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>  
                    
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label4" runat="server" Text="Vendor Name:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvname" runat="server" Height="22px" MaxLength="10"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   
ControlToValidate="txtvname" ErrorMessage="Please Enter Vendor name!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label5" runat="server" Text="Vehicle Type:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvhname" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   
ControlToValidate="txtvhname" ErrorMessage="Please Enter your Vehicle type!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                        <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label6" runat="server" Text="Vehicle Number:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvhnum" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="txtvhnum" ErrorMessage="Please Enter your Vehicle number!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>    
                        <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label7" runat="server" Text="Hub Details:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txthub" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"   
ControlToValidate="txthub" ErrorMessage="Please Enter your Hub Details!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                         <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label8" runat="server" Text="Run Sheet ID:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtrun" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"   
ControlToValidate="txtrun" ErrorMessage="Please Enter your Sheet ID!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                         <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label9" runat="server" Text="Operation Type:"></asp:Label>  
                        </td>  
                        <td class="style2">  

                            
                            <asp:DropDownList ID="dwnoptype" runat="server" Height="23px" Width="163px">
                                <asp:ListItem>LMS</asp:ListItem>
                                <asp:ListItem>LA</asp:ListItem>
                                <asp:ListItem>MP</asp:ListItem>
                            </asp:DropDownList>

                            
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"   
ControlToValidate="dwnoptype" ErrorMessage="Please Select your Operation!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                             <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label10" runat="server" Text="Closing Time:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtctime" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"   
ControlToValidate="txtctime" ErrorMessage="Please Enter your Closing Time!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                             <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label11" runat="server" Text="Reporting Time:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtrtime" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"   
ControlToValidate="txtrtime" ErrorMessage="Please Enter your Reporting Time!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                             <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label12" runat="server" Text="Closing KM:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtckm" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"   
ControlToValidate="txtckm" ErrorMessage="Please Enter your Closing KM!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                             <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label13" runat="server" Text="Opening KM:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtokm" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                            
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"   
ControlToValidate="txtokm" ErrorMessage="Please Enter your Opening KM!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                             <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label14" runat="server" Text="Remarks:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtrmk" runat="server" Height="22px" MaxLength="15"   
Width="158px"></asp:TextBox>  
                            
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"   
ControlToValidate="txtrmk" ErrorMessage="Please Enter your Remarks!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                                &nbsp;</td>  
                    </tr>
                    <tr>  
                        <td class="style1">  
                                &nbsp;</td>  
                        <td class="style2">  
                                <asp:Label ID="Label15" runat="server" Text=" "></asp:Label>
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
 </td>  
                        <td>  
 </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
 </td>  
                        <td class="style2">  
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                        </td>  
                        <td>  
                            <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
 </td>  
                    </tr>  
                </table>  
            </div>  
        </form>  
    </body>  
</html> 