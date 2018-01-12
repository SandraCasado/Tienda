 <%@ OutputCache Duration="1" VaryByParam="None" %> <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrarse.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>On-line shop</title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <form id="form1" runat="server">
    <div id="cabecera">
       <div id="cabecera1">
          <br />
       </div>
       <div id="cabecera2" style="background-image: url('Images/christmas-3013943_1920.jpg')">
       </div>
        <div id="blackline">
          <br />
       </div>
       <div id="cabecera3">
           <br />
           <asp:Label ID="lblDatosUsuario" runat="server" Font-Bold="True"></asp:Label>
           <br />
           <br />
       </div>
    </div>
    <div id="cuerpo">
       <div id="cuerpoinicio">
       </div>
       <div id="contenido">
            <div id="contenidotitulo">Registrarse</div>
            <br />
           <div id="FormularioRe">
               <asp:Table ID="Table1" runat="server" Height="321px" Width="330px">
                   <asp:TableRow runat="server">
                       <asp:TableCell runat="server">
                           <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario"></asp:Label>
                       </asp:TableCell>               
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ToolTip="El nombre de usuario es obligatorio" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                       <asp:TableCell runat="server">
                           <asp:Label ID="Label2" runat="server" Text="Número de Dni / Pasaporte"></asp:Label>
                       </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtIdCliente" ToolTip="Este campo es obligatorio"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                       <asp:TableCell runat="server">
                           <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                       </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtNomCli" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtNomCli" ToolTip="Este campo es obligatorio"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                       <asp:TableCell runat="server">
                           <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
                       </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtDirCli" runat="server"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblPobCli" runat="server" Text="Población"></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtPobCli" runat="server"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="Label6" runat="server" Text="Código Postal"></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtCopCli" ToolTip="Este campo es obligatorio"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="Label7" runat="server" Text="Teléfono"></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="Label8" runat="server" Text="Correo Electrónico"></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtCorCli" runat="server">
                           </asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtCorCli" ToolTip="Este campo es obligatorio"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="lblPassword" runat="server" Text="Contraseña" ></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtPassword1" runat="server"  TextMode="Password"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtPassword1" ToolTip="Este campo es obligatorio"></asp:RequiredFieldValidator>
                       </asp:TableCell>
                   </asp:TableRow>
                   <asp:TableRow runat="server">
                        <asp:TableCell runat="server">
                            <asp:Label ID="Label10" runat="server" Text="Repetir Contraseña"></asp:Label>
                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:TextBox ID="txtPassword2" runat="server"  TextMode="Password"></asp:TextBox>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">

                        </asp:TableCell>
                       <asp:TableCell runat="server">
                           <asp:Button ID="btnInsertar" runat="server" Text="Aceptar" OnClick="btnInsertar_Click" />
                       </asp:TableCell>
                   </asp:TableRow>
                </asp:Table>  
           </div>
           <br />
           <asp:Label ID="Label5" runat="server" Text="¿Ya tienes una cuenta? "></asp:Label>
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Inicia Sesión</asp:HyperLink>
           <br />
           <br />
           <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
            <br />
           <br />
           <br />
       </div>
       <div id="cuerpofin" class="style1">
          <br />
       </div>
    </div>
    <div id="pie">
         <br />
            <p>@2018 - Sandra Casado</p>
          <br />
    </div>
    </form>
</body>
</html>
