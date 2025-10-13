Public Class Personas
    Inherits System.Web.UI.Page
    Public persona As New Persona()
    Protected dbHelper As New DataBaseHelper()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_guardar_Click(sender As Object, e As EventArgs)
        Persona.Nombre = txt_nombre.Text
        Persona.Apellido = txt_apellido.Text
        persona.Edad = txt_edad.Text

        lbl_mensaje.Text = dbHelper.create(persona)
        Gv_Personas.DataBind()
    End Sub

    Protected Sub Gv_Personas_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)

        Try
            Dim id As Integer = Convert.ToInt32(Gv_Personas.DataKeys(e.RowIndex).Value)
            dbHelper.delete(id)
            e.Cancel = True
            Gv_Personas.DataBind()
        Catch ex As Exception
            lbl_mensaje.Text = "Error al eliminar la persona: " & ex.Message
        End Try


    End Sub

    Protected Sub Gv_Personas_RowEditing(sender As Object, e As GridViewEditEventArgs)



    End Sub

    Protected Sub Gv_Personas_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)

        Gv_Personas.EditIndex = -1 ' Salir del modo de edición
        Gv_Personas.DataBind()


    End Sub

    Protected Sub Gv_Personas_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)

        Dim id As Integer = Convert.ToInt32(Gv_Personas.DataKeys(e.RowIndex).Value)
        Dim persona As Persona = New Persona With {
            .Nombre = e.NewValues("Nombre"),
            .Apellido = e.NewValues("Apellido"),
            .Edad = e.NewValues("Edad"),
            .id = id
        }
        dbHelper.update(persona)
        Gv_Personas.DataBind()
        e.Cancel = True
        Gv_Personas.EditIndex = -1 ' Salir del modo de edición

    End Sub

    Protected Sub Gv_Personas_SelectedIndexChanged(sender As Object, e As EventArgs)

        Dim row As GridViewRow = Gv_Personas.SelectedRow()
        Dim id As Integer = Convert.ToInt32(row.Cells(2).Text)
        Dim persona As Persona = New Persona()

        txt_nombre.Text = row.Cells(3).Text
        txt_apellido.Text = row.Cells(4).Text
        txt_edad.Text = row.Cells(5).Text

        editando.Value = id


    End Sub

    Protected Sub btn_actualizar_Click(sender As Object, e As EventArgs)

        Dim persona As Persona = New Persona With {
            .Nombre = txt_nombre.Text(),
            .Apellido = txt_apellido.Text(),
            .Edad = txt_edad.Text(),
            .id = editando.Value()
        }

        dbHelper.update(persona)
        Gv_Personas.DataBind()
        Gv_Personas.EditIndex = -1 ' Salir del modo de edición

    End Sub
End Class