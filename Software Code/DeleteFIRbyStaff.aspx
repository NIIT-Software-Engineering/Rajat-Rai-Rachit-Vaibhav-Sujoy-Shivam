<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="DeleteFIRbyStaff.aspx.cs" Inherits="DeleteFIRbyStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr>
                <td>Delete FIR</td>
            </tr>
            <tr>
                <td><asp:DropDownList ID="dlistfirid" runat="server" DataSourceID="SqlDataSource1" DataTextField="fir_id" DataValueField="fir_id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT [fir_id] FROM [FIR1]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"  />
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

