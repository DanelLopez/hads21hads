﻿Imports ClassL.accesodatosSQL
Public Class incio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim result As String
        result = conectar()

    End Sub


    Protected Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        cerrarconexion()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim result As String
        result = obtenerdatos(usuario.Text, pass.Text)

        If result = "OK" Then
            Response.Redirect("principal.aspx")
        Else
            MsgBox("Error... No existe un usuario con ese nombre de usuario y/ contraseña")
        End If
    End Sub

End Class