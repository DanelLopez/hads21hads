<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasAlumno.aspx.vb" Inherits="WebApplication1.TareasAlumno" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td style="width:20%;">
                    <table style="width:100%; height: 63px;">
                        <tr>
                            <td>
                                <br />        
                                <asp:LinkButton ID="LinkButton1" runat="server">Cerrar Sesion</asp:LinkButton>
                                <br />                     
                            </td>
                        </tr>
                     </table>                   
                </td>
                <td style="width:80%;">
    <p style="text-align: center; font-size: 40px; font-style: normal; font-variant: small-caps; color: #0000FF; background-color: #C0C0C0; font-weight: bold;"> 
        <br />
        ALUMNO:        
                                <asp:Label ID="LabelUser" runat="server"></asp:Label>&nbsp;=&gt; Gestión de Tareas Genéricas <br /><br />
    </p>
                </td>
            </tr>
        </table>
    
    </div>
    <p style="text-align: center"> 
        Seleccionar asignatura</p>
        <p style="text-align: center"> 
            <asp:DropDownList ID="DropDownListAsignaturas" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </p>
        <p style="text-align: center"> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:GridView ID="GridViewTareas" runat="server" HorizontalAlign="Center" EmptyDataText="No tienes tareas para instanciar" Height="234px" style="margin-bottom: 0px" Width="494px">
                <AlternatingRowStyle BackColor="#99CCFF" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Instanciar" ShowCancelButton="False" ShowSelectButton="True" />
                </Columns>
                <HeaderStyle BackColor="#0066FF" />
                <RowStyle BackColor="Aqua" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </form>
    

</body>
</html>             