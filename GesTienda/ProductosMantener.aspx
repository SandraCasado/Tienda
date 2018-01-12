 <%@ OutputCache Duration="1" VaryByParam="None" %> <%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductosMantener.aspx.cs" Inherits="_Default" %>

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
           <asp:Button ID="btnSalir" runat="server" Text="Cerrar Sesion" OnClick="btnSalir_Click" />
           <br />
           <br />
       </div>
    </div>
    <div id="cuerpo">
       <div id="cuerpoinicio">
       </div>
       <div id="menu">
           <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
               DynamicHorizontalOffset="2" Font-Names="Trebuchet MS" Font-Size="1em" 
               ForeColor="#284E98" StaticSubMenuIndent="10px" >
               <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
               <DynamicMenuItemStyle HorizontalPadding="20px" VerticalPadding="10px"  />
               <DynamicMenuStyle BackColor="#B5C7DE" />
               <DynamicSelectedStyle BackColor="#507CD1" />
               <Items>
                   <asp:MenuItem Text="Inicio" Value="Inicio" NavigateUrl="~/MenuAdmin.aspx"></asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Productos" Value="Productos">
                       <asp:MenuItem NavigateUrl="~/ProductosMantener.aspx" Text="Mantener" Value="Mantener"></asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Ventas" Value="Ventas">
                       <asp:MenuItem NavigateUrl="~/PedidosPorCliente.aspx" Text="Pedidos por Cliente" Value="Pedidos por Cliente"></asp:MenuItem>
                   </asp:MenuItem>
               </Items>
               <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
               <StaticMenuItemStyle HorizontalPadding="20px" VerticalPadding="10px" BorderWidth="5px" BorderColor="White" BorderStyle="Solid" />
               <StaticSelectedStyle BackColor="#507CD1" />
           </asp:Menu>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
       </div>
       <div id="contenido">
            <div id="contenidotitulo">Mantenimiento Productos</div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
            <asp:GridView ID="grdProductos" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Id. Producto" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
                    <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" DataFormatString="{0:C}" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#77372C" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
           <br />
           <asp:Table ID="Table1" runat="server">
               <asp:TableRow runat="server">
                   <asp:TableCell runat="server">
                        <asp:Label ID="lblIdProducto" runat="server" Text="Id. Producto "></asp:Label>                       
                   </asp:TableCell>
                   <asp:TableCell runat="server">
                       <asp:TextBox ID="txtIdProducto" runat="server" Enabled="False"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow runat="server">
                   <asp:TableCell runat="server">
                        <asp:Label ID="lblDesPro" runat="server" Text="Descripción "></asp:Label>
                   </asp:TableCell>
                   <asp:TableCell runat="server">
                       <asp:TextBox ID="txtDesPro" runat="server" Enabled="False"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow runat="server">
                   <asp:TableCell runat="server">
                       <asp:Label ID="lblPrePro" runat="server" Text="Precio"></asp:Label>
                   </asp:TableCell>
                   <asp:TableCell runat="server">
                        <asp:TextBox ID="txtPrePro" runat="server" Text="0" Enabled="False"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow runat="server">
                   <asp:TableCell runat="server">
                        <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
                   </asp:TableCell>
                   <asp:TableCell runat="server">
                       <asp:DropDownList ID="ddlIdUnidad" runat="server" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad" Enabled="False"></asp:DropDownList>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow runat="server">
                   <asp:TableCell runat="server">
                        <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
                   </asp:TableCell>
                   <asp:TableCell runat="server">
                       <asp:DropDownList ID="ddlIdTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo" Enabled="False" style="width:175px;"></asp:DropDownList>
                   </asp:TableCell>
               </asp:TableRow>
            </asp:Table>             
               <br />
               <br />
               <div id="botones">
                   <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
                   <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" OnClick="btnEditar_Click" />
                   <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" OnClick="btnEliminar_Click" />
                   <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="False" OnClick="btnInsertar_Click" />
                   <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="False" OnClick="btnModificar_Click" />
                   <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="False" OnClick="btnBorrar_Click" />
                   <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Visible="False" OnClick="btnCancelar_Click" />
               </div>
               <br />
               <br />
               <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
           </div>
           <br />
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
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
