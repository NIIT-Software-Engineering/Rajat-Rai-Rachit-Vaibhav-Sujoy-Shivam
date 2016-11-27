<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="UpdateStaffDetailsbyStaff.aspx.cs" Inherits="UpdateStaffDetailsbyStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" style="margin-top: 0px">
       <table>
           <tr><td>Update Details</td></tr>
          
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
               <td style="width: 152px">
                   <asp:Label ID="lbl" runat="server"></asp:Label>
               </td>
           </tr>
           
       </table>

    </asp:Panel>

</asp:Content>

