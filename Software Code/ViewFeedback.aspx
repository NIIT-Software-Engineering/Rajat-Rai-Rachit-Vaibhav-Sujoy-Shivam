<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="299px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="desp" HeaderText="desp" SortExpression="desp" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Feedback1]"></asp:SqlDataSource>

    </asp:Panel>
</asp:Content>

