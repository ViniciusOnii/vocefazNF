<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Topo.Master" CodeBehind="empresa.aspx.vb" Inherits="VoceFazNfe.empresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox class="layouttexto" ID="TextBox1" runat="server" onmouseOver="SetTextIn(this,1)"></asp:TextBox>
   
    <asp:Button ID="Button1" runat="server" Text="Button" />

</asp:Content>
