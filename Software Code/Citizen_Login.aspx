<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Citizen_Login.aspx.cs" Inherits="Citizen_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <asp:PlaceHolder ID="PlaceHolder2" runat="server">
     <asp:Panel ID="Panel1" runat="server" style="margin-bottom: 130px" Width="600" Height="200">
       <table>
            <tr>
                 <td>
                     <asp:Label ID="Label" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#000066" Text="User Login"></asp:Label>
                 </td>
            </tr>
           <tr>
               <td class="auto-style1">
                   <asp:Label ID="lblName" runat="server" Font-Size="15pt" Text="User Name :"></asp:Label>
               </td>
               <td class="auto-style2">
                   <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
               </td>
               <td class="auto-style1">
                   <asp:RequiredFieldValidator ID="RV1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblPassword" runat="server" Font-Size="15pt" Text="Password :"></asp:Label>
               </td>
               <td class="auto-style3">
                   <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
               </td>
               <td>
                   <asp:RequiredFieldValidator ID="RV2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="G1"></asp:RequiredFieldValidator>
               </td>
           </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Login" ValidationGroup="G1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Sign Up" OnClick="Button2_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
       </table>
         <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <asp:Image ID="Image1" runat="server" width="500" Height="284" ImageUrl="~/Image/login.png" />
    </asp:PlaceHolder>
    </asp:Panel>
        
        </asp:PlaceHolder>
</asp:Content>

