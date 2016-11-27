<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="ChangeStaffPassword.aspx.cs" Inherits="ChangeStaffPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr>
                <td>Enter New Password</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Re-Enter Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtpass1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Citizen ID" ControlToValidate="txtpass1" ValidationGroup="G1"></asp:RequiredFieldValidator></td>
            </tr>
           
            <tr>
                <td><asp:Button ID="changePassword" runat="server" Text="Change Password" ValidationGroup="G1" OnClick="changePassword_Click" /></td>
                <td>
                    <asp:Label ID="lbl" runat="server" ></asp:Label></td>
                </tr>
        </table>
    </asp:Panel>
</asp:Content>

