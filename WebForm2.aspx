<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="adhoc.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>  
                <table style="width:100%;">  
                    <caption class="style3">  
                        
            <asp:Label ID="Label9" runat="server" ForeColor="Black" style="font-size:30px"
                    Text="Flipkart Alternate Adhoc Vehicle Form"></asp:Label>
                        <strong></strong>  
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
                            <asp:TextBox ID="txtdate" runat="server" Height="22px" MaxLength="20"   
Width="158px" OnTextChanged="txtdate_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   
ControlToValidate="txtdate" ErrorMessage="Please Enter Date!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            &nbsp;</td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label2" runat="server" Text="Vehicle Number:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvhnum" runat="server" Height="22px" MaxLength="10"   
Width="158px" OnTextChanged="txtvhnum_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="txtvhnum" ErrorMessage="Please Enter Vehicle Number!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            &nbsp;</td>  
                    </tr>  
                       <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label3" runat="server" Text="Alternate Vehicle Number:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtaltnum" runat="server" Height="22px" MaxLength="10"   
Width="158px" OnTextChanged="txtaltnum_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
ControlToValidate="txtaltnum" ErrorMessage="Please Enter Alternate Vehicle Number!"   
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
Width="158px" OnTextChanged="txtvname_TextChanged"></asp:TextBox>  
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
                            <asp:Label ID="Label5" runat="server" Text="Vendor Contact:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvnum" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtvnum_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   
ControlToValidate="txtvnum" ErrorMessage="Please Enter your Vendor Contact!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            &nbsp;</td>  
                    </tr>
                        <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label6" runat="server" Text="Driver Name:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtdname" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtdname_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="txtdname" ErrorMessage="Please Enter your Driver Name!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        <td>  
                            &nbsp;</td>  
                    </tr>    
                        <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label7" runat="server" Text="Driver Contact:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtdnum" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtdnum_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"   
ControlToValidate="txtdnum" ErrorMessage="Please Enter your Driver Contact!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        
                    </tr>  
                         <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label8" runat="server" Text="Vehicle Type:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtvhtype" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtvhtype_TextChanged"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"   
ControlToValidate="txtvhtYpe" ErrorMessage="Please Enter your Vehicle Type!"   
ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        
                    </tr
                                 <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label11" runat="server" Text="Reporting Time:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtrtime" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtrtime_TextChanged"></asp:TextBox>  
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
                            <asp:Label ID="Label10" runat="server" Text="Closing Time:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtctime" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtctime_TextChanged"></asp:TextBox>  
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
                            <asp:Label ID="Label13" runat="server" Text="Opening KM:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtokm" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtokm_TextChanged"></asp:TextBox>  
                            
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
                            <asp:Label ID="Label12" runat="server" Text="Closing KM:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="txtckm" runat="server" Height="22px" MaxLength="15"   
Width="158px" OnTextChanged="txtckm_TextChanged"></asp:TextBox>  
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
 </td>  
                                       <td class="style2">  
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                        </td>  
                        <td>  
                            <asp:Button ID="Button2" runat="server" Text="Reset" />
 </td>  
  
                    </tr>  
                </table>  
            </div>  
    </form>
</body>
</html>
