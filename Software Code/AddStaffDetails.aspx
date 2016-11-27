<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddStaffDetails.aspx.cs" Inherits="AddStaffDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/green.JPG" Height="270px">
    <table>
          <tr>
                <td align="center" colspan="2" style="color: White; background-color: #5D7B9D; font-size: 1.5em; font-weight: bold;">Register Citizen</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblName" runat="server" Text="Name :" Width="123px" Font-Size="15pt"></asp:Label></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter User Name" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblAge" runat="server" Font-Size="15pt" Text="Age:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV2" runat="server" ControlToValidate="txtAge" ErrorMessage="Enter Age" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGender" runat="server" Text="Gender :" Font-Size="15pt"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV3" runat="server" ControlToValidate="txtGender" ErrorMessage="M/F ?" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblAddress" runat="server" Font-Size="15pt" Text="Address :"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV4" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter Address" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone :" Font-Size="15pt"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Mobile Number" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblUserName" runat="server" Text="User Name :" Font-Size="15pt"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV6" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter City" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblPassword" runat="server" Text="Password :" Font-Size="15pt"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RV7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style8">
                    <asp:Button ID="SignUpBtn" runat="server" OnClick="SignUpBtn_Click" Text="Register" ValidationGroup="G1" Font-Size="15pt" />
                </td>
                <td class="auto-style3">
                    <asp:Label ID="s" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
    </table>
        </asp:Panel>
</asp:Content>

