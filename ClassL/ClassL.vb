Imports System.Data.SqlClient
Imports System.Data.OleDb

Public Class accesodatosSQL
    Private Shared conexion As New SqlConnection
    Private Shared comando As New SqlCommand

    Public Shared Function conectar() As String
        Try
            conexion.ConnectionString = "Server=tcp:hads21hads.database.windows.net,1433; Initial Catalog=1617hads21; Persist Security Info=False; User ID=hads21@hads21hads; Password=PerroPerro1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            conexion.Open()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION OK"
    End Function

    Public Shared Function insertar(ByVal email As String, ByVal nombre As String, ByVal apellidos As String, ByVal pregunta As String, ByVal respuesta As String, ByVal dni As String, ByVal numconfir As Integer, ByVal comfirmado As String, ByVal grupo As String, ByVal tipo As String, ByVal pass As String) As String
        Dim st = "insert into Usuarios  values ('" & email & " ', '" & nombre & " ', '" & apellidos & " ', '" & pregunta & " ', '" & respuesta & " ','" & dni & " ','" & numconfir & " ', '" & comfirmado & " ', '" & grupo & " ', '" & tipo & " ', '" & pass & " ')"
        Dim numregs As Integer
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        Return (numregs & " registro(s) insertado(s) en la BD ")
    End Function
    Public Shared Function obtenerdatos(ByVal usuario As String, ByVal pass As String) As String

        Dim num As SqlDataReader
        Dim st = "select * from Usuarios where nombre='" & usuario & " ' and pass='" & pass & "' "
        comando = New SqlCommand(st, conexion)

        Try
            num = comando.ExecuteReader()
        Catch ex As Exception
            Return ex.Message
        End Try

        If (num.HasRows) Then
            Return "OK"
        Else
            Return "FALLO"
        End If

    End Function

    Public Shared Function cambiarContraseña(ByVal pass As String, ByVal correo As String) As Integer
        Dim s As Integer
        Dim st = "Update  Usuarios Set pass='" & pass & "'Where email='" & correo & "'"
        Try
            comando = New SqlCommand(st, conexion)
            s = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return 0
        End Try

        Return s

    End Function

    Public Shared Function buscarPregunta(ByVal correo As String) As Integer
        Dim s As Integer
        Dim st = "Select pregunta From Usuarios Where email='" & correo & "'"
        Try
            comando = New SqlCommand(st, conexion)
            s = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return 0
        End Try

        Return s

    End Function

    Public Shared Function buscarRespuesta(ByVal correo As String) As Integer
        Dim s As Integer
        Dim st = "Select respuesta From Usuarios Where email='" & correo & "'"
        Try
            comando = New SqlCommand(st, conexion)
            s = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return 0
        End Try

        Return s

    End Function


    Public Shared Function setConfirmacion(ByVal email As String, ByVal num As Integer) As Integer
        Dim s As Integer
        Dim st = "UPDATE Usuarios SET confirmado=1 WHERE email='" & email & "' AND numconfir=" & num & " AND confirmado=0"
        Try
            comando = New SqlCommand(st, conexion)
            s = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return 0
        End Try

        Return s

    End Function


    Public Shared Sub cerrarconexion()
        conexion.Close()
    End Sub


End Class
