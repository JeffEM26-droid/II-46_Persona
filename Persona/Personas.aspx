<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Personas.aspx.vb" Inherits="Persona.Personas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

