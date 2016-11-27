<%@ Page Title="" Language="C#" MasterPageFile="~/CitizenMaster.master" AutoEventWireup="true" CodeFile="RegisterFIRbyCitizen.aspx.cs" Inherits="RegisterFIRbyCitizen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" Height="216px">

        <table>
            <tr><td>Register FIR : </td></tr>
            <tr>
                <td>
                    <asp:Label ID="lblcid" runat="server" Text="Citizen Id :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtid" ErrorMessage="Enter Citizen ID" ValidationGroup="G1"></asp:RequiredFieldValidator>
                    
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
                <td></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

