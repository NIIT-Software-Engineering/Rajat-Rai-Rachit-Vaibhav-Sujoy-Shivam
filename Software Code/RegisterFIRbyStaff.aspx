<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMaster.master" AutoEventWireup="true" CodeFile="RegisterFIRbyStaff.aspx.cs" Inherits="RegisterFIRbyStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" Height="216px">

        <table>
            <tr><td>Register FIR : </td></tr>
            <tr>
                <td>
                    <asp:Label ID="lblcid" runat="server" Text="Citizen Id :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlist_cid" runat="server" DataSourceID="SqlDataSource1" DataTextField="cid" DataValueField="cid"></asp:DropDownList>   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeInvestigationDatabaseConnectionString %>" SelectCommand="SELECT [cid] FROM [Citizen2]"></asp:SqlDataSource>
                </td>
                <td style="width: 136px" >
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dlist_cid" ErrorMessage="Enter Citizen ID" ValidationGroup="G1"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblcloc" runat="server" Text="Crime Location :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlist_loc" runat="server">
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Noida</asp:ListItem>
                        <asp:ListItem>Gurgao</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Ludhiana</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Lucknow</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 136px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dlist_loc" ErrorMessage="Select Location" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="height: 26px">
                    <asp:Label ID="lblctype" runat="server" Text="Crime Type :"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:DropDownList ID="dlist_type" runat="server">
                        <asp:ListItem>Murder</asp:ListItem>
                        <asp:ListItem>Robbery</asp:ListItem>
                        <asp:ListItem>Rape</asp:ListItem>
                        <asp:ListItem>Assault</asp:ListItem>
                        <asp:ListItem>Kidnap</asp:ListItem>
                        <asp:ListItem>Homicide</asp:ListItem>
                        <asp:ListItem>Hit and run</asp:ListItem>
                        <asp:ListItem>Cyber Crime</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 26px; width: 136px" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dlist_type" ErrorMessage="Select Crime Type" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblstatus" runat="server" Text="FIR Status"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlist_status" runat="server">
                        <asp:ListItem>Registered</asp:ListItem>
                        <asp:ListItem>Investigation in process</asp:ListItem>
                        <asp:ListItem>Criminals Arrested</asp:ListItem>
                        <asp:ListItem>Case Closed</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 136px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dlist_status" ErrorMessage="Select FIR Status" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lbldesp" runat="server" Text="Description : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdesp" runat="server"></asp:TextBox>
                </td>
                <td style="width: 136px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdesp" ErrorMessage="Add Description" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnregister" runat="server" Text="Register FIR"  ValidationGroup="G1" OnClick="btnregister_Click" /></td>
                <td>
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
                <td style="width: 136px"></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

