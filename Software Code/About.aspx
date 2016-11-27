<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/about us.jpg" Height="380" Width="650" />
  </asp:PlaceHolder>
    &nbsp;<asp:PlaceHolder ID="PlaceHolder3" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="380" Width="650" ReadOnly="True" Font-Italic="True" Font-Size="16" BorderStyle="Groove" BorderColor="Black" BackColor="#000066" ForeColor="White" Text="Our priority is to help protect you, your children, your communities, and your businesses from the most dangerous threats facing our nation—from international and domestic terrorists. We protect you from cyber villains to corrupt government officials…from mobsters to violent street gangs…from child predators to serial killers. Along the way, we help defend and uphold our nation’s economy, physical and electronic infrastructure, and democracy. Learn more about how we have evolved into a more proactive, threat-driven security agency in recent years."></asp:TextBox>
                                            </asp:PlaceHolder>
</asp:Content>

