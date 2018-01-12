 <%@ OutputCache Duration="1" VaryByParam="None" %> <%@ Page Language="C#" AutoEventWireup="true" CodeFile="PedidosPorCliente.aspx.cs" Inherits="_Default" %>

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
            <div id="contenidotitulo">Pedidos Realizados por los clientes</div>
            <br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NomCli], [CorCli], [PobCli], [Login], [IdCliente] FROM [CLIENTE]"></asp:SqlDataSource>
           <asp:GridView ID="grdClientes" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnPageIndexChanged="grdClientes_PageIndexChanged" OnSelectedIndexChanged="grdClientes_SelectedIndexChanged" AllowPaging="True" DataKeyNames="IdCliente" Height="223px" Width="470px">
               <AlternatingRowStyle BackColor="PaleGoldenrod" />
               <Columns>
                   <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                   <asp:BoundField DataField="IdCliente" HeaderText="Id. Cliente" ReadOnly="True" SortExpression="IdCliente" />
                   <asp:BoundField DataField="NomCli" HeaderText="Nombre" SortExpression="NomCli" />
                   <asp:BoundField DataField="PobCli" HeaderText="Población" SortExpression="PobCli" />
                   <asp:BoundField DataField="CorCli" HeaderText="Correo Electrónico" SortExpression="CorCli" />
                   <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
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
           <br />
           <asp:Label ID="lblResultado" runat="server" Text="Label" Visible="False"></asp:Label>
           <br />
           <asp:Label ID="lblTotal" runat="server" Text="Label" Visible="False"></asp:Label>
           <br />
           <br />
           <asp:Label ID="lblMensajes" runat="server" ForeColor="Red"></asp:Label>
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
