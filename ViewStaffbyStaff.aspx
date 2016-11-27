<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="ViewStaffbyStaff.aspx.cs" Inherits="ViewStaffbyStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="sid" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Staff2] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="un" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

