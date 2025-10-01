<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Personas.aspx.vb" Inherits="Persona.Personas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txt_nombre" placeholder ="Nombre" runat="server"></asp:TextBox>
    <asp:TextBox ID="txt_apellido" placeholder ="Apelido" runat="server"></asp:TextBox>
    <asp:TextBox ID="txt_edad" placeholder ="Edad" runat="server"></asp:TextBox>
    <asp:Button ID="btn_guardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btn_guardar_Click" />
    <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
    <asp:GridView ID="Gv_Personas" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>
</asp:Content>

