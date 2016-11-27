<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="DeleteUser.aspx.cs" Inherits="DeleteUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" Height="308px">
        <table style="height: 248px; width: 168px;">
            
            <tr><td "align="center" style="color: White; background-color: #5D7B9D; font-size: 1.5em; font-weight: bold;">Delete User</td></tr>
            
           <tr><td> <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">Citizen</asp:ListItem>
            <asp:ListItem Value="2">Staff</asp:ListItem>
            <asp:ListItem Value="3">Criminal</asp:ListItem>
            <asp:ListItem Value="4">Victim</asp:ListItem>
            <asp:ListItem Value="5">Witness</asp:ListItem>
        </asp:RadioButtonList></td></tr> 
            <tr><td>
                <asp:Label ID="lblUserName" runat="server" Text="Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
          <tr><td>
              <asp:Button ID="btndelete" runat="server" Text="Delete User" OnClick="btndelete_Click" /></td>
              <td>
                  <asp:Label ID="lbl" runat="server"></asp:Label></td>
          </tr>  

            
            

        </table>
    </asp:Panel>
</asp:Content>

