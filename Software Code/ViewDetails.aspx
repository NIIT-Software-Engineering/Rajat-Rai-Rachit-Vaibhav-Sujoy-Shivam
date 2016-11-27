<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel2" runat="server" Height="193px" style="margin-left: 151px">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">Citizen</asp:ListItem>
            <asp:ListItem Value="2">Staff</asp:ListItem>
            <asp:ListItem Value="3">Criminal</asp:ListItem>
            <asp:ListItem Value="4">Victim</asp:ListItem>
            <asp:ListItem Value="5">Witness</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Button ID="Button1" runat="server" Text="Show Details" OnClick="Button1_Click" />
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    </asp:Panel>
</asp:Content>

