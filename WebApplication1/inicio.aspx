<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="inicio.aspx.vb" Inherits="WebApplication1.incio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 302px; background-color: lightblue; width: 1260px;">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#0066FF" Text="INICIO"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario"></asp:Label>
&nbsp;&nbsp; &nbsp;<asp:TextBox ID="usuario" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Error... Introduce el nombre de usuario" Font-Bold="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Error... El nombre de usuario debe contener entre 6 y 20 caracteres" ValidationExpression="[a-zA-Z0-9]{6,20}" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Error... Introduce la contraseña" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Error... La contraseña debe contener entre 6 y 20 caracteres" ValidationExpression="[a-zA-Z0-9]{6,20}" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" Width="200px" Height="45px" />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" CausesValidation="False" PostBackUrl="~/registro.aspx">Registrarse</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" PostBackUrl="~/cambiarpass.aspx">Recuperar Contraseña</asp:LinkButton>
    </div>
    </form>

   
   
</body>
</html>
