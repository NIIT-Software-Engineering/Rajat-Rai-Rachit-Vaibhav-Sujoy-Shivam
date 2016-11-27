<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="UpdateFIRbyStaff.aspx.cs" Inherits="UpdateFIRbyStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Panel ID="Panel1" runat="server">

        <table>
            <tr><td>Update FIR</td></tr>
            <tr>
                <td>
                    <asp:Label ID="lblid" runat="server" Text="FIR ID :"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="dlistfid" runat="server" DataSourceID="SqlDataSource1" DataTextField="fir_id" DataValueField="fir_id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT [fir_id] FROM [FIR1]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select FIR ID" ControlToValidate="dlistfid" ValidationGroup="G1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblstatus" runat="server" Text="Status"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlist_status" runat="server">
                        <asp:ListItem>Registered</asp:ListItem>
                        <asp:ListItem>Investigation in process</asp:ListItem>
                        <asp:ListItem>Criminal Arrested</asp:ListItem>
                        <asp:ListItem>Case Closed</asp:ListItem>
                    </asp:DropDownList>
                  </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select current status of FIR" ControlToValidate="dlist_status" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update"  ValidationGroup="G1" OnClick="btnUpdate_Click" />
                </td>
                <td>
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

