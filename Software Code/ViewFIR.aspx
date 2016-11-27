<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewFIR.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" Height="298px">
        <table>
            <tr>
                <td>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text="Select FIR ID"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="fir_id" DataValueField="fir_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT [fir_id] FROM [FIR1]"></asp:SqlDataSource>
                    </td>
                </td>
                <td>
                    <asp:Button ID="btnViewSelected" runat="server" Text="View" OnClick="btnViewSelected_Click" /></td>
            </tr>
            <tr>
                <td>
                    <td>
                        <asp:Button ID="btnViewAll" runat="server" OnClick="btnViewAll_Click" Text="View All FIR" />
                    </td>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </asp:Panel>
</asp:Content>

