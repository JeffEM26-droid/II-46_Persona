<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Personas.aspx.vb" Inherits="Persona.Personas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="container d-flex-column mb-3 gap-2">

    <asp:TextBox ID="txt_nombre" placeholder ="Nombre" runat="server"></asp:TextBox>
    <asp:TextBox ID="txt_apellido" placeholder ="Apelido" runat="server"></asp:TextBox>
    <asp:TextBox ID="txt_edad" placeholder ="Edad" runat="server"></asp:TextBox>

    

    <asp:Button ID="btn_guardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btn_guardar_Click" />

    <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>

  </div>
    <asp:GridView ID="Gv_Personas" CssClass="table table-striped table-hover table-success" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource" DatakeyNames="ID" OnRowDeleting="Gv_Personas_RowDeleting"
        OnRowEditing="Gv_Personas_RowEditing" OnRowCancelingEdit="Gv_Personas_RowCancelingEdit" OnRowUpdating="Gv_Personas_RowUpdating" OnSelectedIndexChanged="Gv_Personas_SelectedIndexChanged">
        
        <Columns>
            <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass=" btn btn-success" />
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass=" btn btn-primary" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="true" ReadOnly="true" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass=" btn btn-danger"  />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>
 
<section>
    <h1>Hola Mundo</h1>
</section>

</asp:Content>