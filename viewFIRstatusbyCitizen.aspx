<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenMaster.master" AutoEventWireup="true" CodeFile="viewFIRstatusbyCitizen.aspx.cs" Inherits="viewFIRstatusbyCitizen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr><td>View FIR Status</td></tr>
            <tr><td>
                <asp:Label ID="lblcid" runat="server" Text="Citizen ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcid" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter you citizen ID" ControlToValidate="txtcid" ValidationGroup="G1"></asp:RequiredFieldValidator></td>
            </tr>
        <tr>
            
            <td><asp:Button ID="btnView" runat="server" Text="View" ValidationGroup="G1" OnClick="btnView_Click" /></td></tr>
            
            </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
  <table>
            <tr><td>View FIR Status</td></tr>
            <tr><td>
                <asp:Label ID="lblfirid" runat="server" Text="FIR ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfirid" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter you FIR ID" ControlToValidate="txtfirid" ValidationGroup="G2"></asp:RequiredFieldValidator></td>
            </tr>
        <tr>
            
            <td><asp:Button ID="btnView1" runat="server" Text="View" ValidationGroup="G3" OnClick="btnView1_Click" /></td></tr>
            
            </table>
        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
    </asp:Panel>
</asp:Content>

