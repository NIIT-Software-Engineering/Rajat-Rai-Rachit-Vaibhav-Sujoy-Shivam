<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     
    <asp:Panel ID="Panel1" runat="server" Height="378px">
        <asp:PlaceHolder ID="PlaceHolder2" runat="server">
            <asp:Image ID="Image2" runat="server" Height="380" ImageUrl="~/images/mst.jpg" width="720" />
        </asp:PlaceHolder>
        &nbsp;&nbsp;&nbsp;
<asp:PlaceHolder ID="PlaceHolder3" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="380" Width="550" ReadOnly="True" Text="Our Aim is crime investigation and solving using online web application.
The proposed system is to provide the facility to the customer to lodge their complaints about a particular crime or criminal act.The system should keep track of lodged complaints and within no time customer/victim should get the solution for his/her problem. We provide better service with data efficiency that comes with user friendly time managed and minimum data entry environment. " Font-Italic="True" Font-Size="16" BorderStyle="Groove" BorderColor="#000066" BackColor="Black" ForeColor="White"></asp:TextBox>
                                            </asp:PlaceHolder>
       
    </asp:Panel>
</asp:Content>

