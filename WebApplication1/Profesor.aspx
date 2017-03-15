<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="WebApplication1.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 18%;
            height: 136px;
        }
        .auto-style2 {
            height: 136px;
        }
    </style>
</head>
<body style="height: 505px">
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 511px;">
            <tr>
                <td style="background-color:#FFCC66; font-size: 30px;" class="auto-style1">
                    <asp:LinkButton ID="LinkButtonCerrarSesion" runat="server">Cerrar Sesion</asp:LinkButton><br />
                    <br />
                    <br /><br />
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="TareasProfesor.aspx">Gestion de Tareas</asp:LinkButton><br />
                    <br />
                </td>
                <td style="background-color:#FFFFFF; text-align:center; font-size: 50px; color: #000000;" class="auto-style2">Gestión Web de Tareas-Dedicación <br />
                    <br />
&nbsp;Profesores</td>
            </tr>            
        </table>
    
        </div>
    </form>
</body>
</html>