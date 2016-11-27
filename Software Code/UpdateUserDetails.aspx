<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateUserDetails.aspx.cs" Inherits="UpdateUserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="margin-top: 0px">
       <table>
           <tr>
               <td>
                   <asp:Label ID="lnlUser" runat="server" Text="Select User:"></asp:Label>
               </td>
               <td>
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="110px">
                       <asp:ListItem Value="1">Citizen</asp:ListItem>
                       <asp:ListItem Value="2">Staff</asp:ListItem>
                   </asp:RadioButtonList>
               </td>
               <td style="width: 152px">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select User" ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblUserName" runat="server" Text="Enter Name"></asp:Label></td>
               <td>
                   <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
               </td>
               <td style="width: 152px">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter Name: " ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblAge" runat="server" Text="New Age :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
               </td>
               <td style="width: 152px">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="Enter Age" ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblAddress" runat="server" Text="New Address :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtAddress" runat="server" Width="125px"></asp:TextBox>
               </td>
               <td style="width: 152px">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter Address" ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>

            <tr>
               <td>
                   <asp:Label ID="lblPhone" runat="server" Text="New Phone :"></asp:Label>
                </td>
               <td>
                   <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
               <td style="width: 152px">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Phone" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
           </tr>
           
           <tr>
               <td>&nbsp;</td>
               <td>
                   <asp:Button ID="btnUpdate" runat="server" Text="Update Details" OnClick="Button1_Click1" ValidationGroup="G1" />
               </td>
               <td style="width: 152px">&nbsp;</td>
           </tr>
           
       </table>

    </asp:Panel>
</asp:Content>

