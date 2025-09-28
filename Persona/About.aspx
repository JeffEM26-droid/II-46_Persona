<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Persona.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>Your app description page.</p>
        <p>Use this area to provide additional information.</p>

        <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_apellido" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_edad" runat="server"></asp:TextBox>
        <asp:Button ID="btn_guardar" runat="server" Text="Guardar" OnClick="btn_guardar_Click" /> 
        <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
    </main>
</asp:Content>
