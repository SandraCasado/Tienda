 <%@ OutputCache Duration="1" VaryByParam="None" %> <%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductosVer.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>On-line shop</title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />  
    <script runat="server">
    </script>
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
                   <asp:MenuItem Text="Inicio" Value="Inicio" NavigateUrl="~/ProductosVer.aspx"></asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Productos" Value="Productos">
                       <asp:MenuItem Text="Ver Productos" Value="Ver Productos" NavigateUrl="~/ProductosVer.aspx"></asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem Selectable="False" Text="Ventas" Value="Ventas"></asp:MenuItem>
                   <asp:MenuItem Text="Compras" Value="Compras"></asp:MenuItem>
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
            <div id="contenidotitulo">Título</div>
            <br />
           <p>Ver contenido</p>
           <asp:Label ID="lblResultado" runat="server" Text="Label"></asp:Label>
            
            <asp:GridView ID="grdProductos" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdProducto" HeaderText="IdProducto" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="DesPro" HeaderText="DesPro" SortExpression="DesPro" />
                    <asp:BoundField DataField="PrePro" HeaderText="PrePro" SortExpression="PrePro" />
                    <asp:BoundField DataField="IdUnidad" HeaderText="IdUnidad" SortExpression="IdUnidad" />
                    <asp:BoundField DataField="IdTipo" HeaderText="IdTipo" SortExpression="IdTipo" />
                 
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
         <!--  <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/Images/{0}" HeaderText="Foto">
                    </asp:ImageField>-->
           <br />
            <asp:Label ID="Label1" runat="server" Text="Introduzca cantidad"></asp:Label>
           <asp:TextBox ID="txtQuantity" runat="server" MaxLength="2" Width="19px" Visible="true"></asp:TextBox>
           <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtQuantity" ForeColor="Red" MaximumValue="99" MinimumValue="1"></asp:RangeValidator>
           <br />
           <asp:Button ID="btnAdd" runat="server" Text="Añadir al carrito" onClick="AddToCart" Visible="false"/>
            <br /> 

            <asp:GridView ID="dg" runat="server">
            </asp:GridView>
            <br />
           <asp:Button ID="btnMostrar" runat="server" Text="Ver Carrito" OnClick="btnMostrar_Click" />
           <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
           <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRODUCTO]"></asp:SqlDataSource>
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
