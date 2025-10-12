Imports System.Data.SqlClient

Public Class DataBaseHelper

    Private ReadOnly _connectionString As String = ConfigurationManager.ConnectionStrings("II-46ConnectionString").ConnectionString

    Public Function create(Persona As Persona) As String
        Try
            Dim sql As String = "INSERT INTO Personas (Nombre, Apellido, Edad) VALUES (@Nombre,@Apellido, @Edad)"
            Dim Parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Nombre", Persona.Nombre),
                New SqlParameter("@Apellido", Persona.Apellido),
                New SqlParameter("@Edad", Persona.Edad)
            }



            Using connection As New SqlConnection(_connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(Parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()

                End Using
            End Using
        Catch ex As Exception

        End Try
        Return "Persona_Creada"
    End Function

    Public Function delete(Id As Integer) As String
        Try
            Dim sql As String = "DELETE FROM Personas WHERE ID = @Id"
            Dim Parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Id", Id)
            }

            Using connection As New SqlConnection(_connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(Parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()

                End Using
            End Using
        Catch ex As Exception

        End Try
        Return "Persona_Eliminada"
    End Function

    Public Function update(Persona As Persona) As String
        Try
            Dim sql As String = "UPDATE Personas SET Nombre = @Nombre, Apellido = @Apellido, Edad = @Edad WHERE ID = @Id"
            Dim Parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Id", Persona.id),
                New SqlParameter("@Nombre", Persona.Nombre),
                New SqlParameter("@Apellido", Persona.Apellido),
                New SqlParameter("@Edad", Persona.Edad)
            }

            Using connection As New SqlConnection(_connectionString)
                Using command As New SqlCommand(sql, connection)
                    command.Parameters.AddRange(Parametros.ToArray())
                    connection.Open()
                    command.ExecuteNonQuery()

                End Using
            End Using
        Catch ex As Exception

        End Try
        Return "Persona_Actualizada"
    End Function

End Class
