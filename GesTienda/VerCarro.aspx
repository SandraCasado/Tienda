 <%@ OutputCache Duration="1" VaryByParam="None" %><%@ Page Language="C#" AutoEventWireup="true" CodeFile="VerCarro.aspx.cs" Inherits="_Default" %>

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
                   <asp:MenuItem Text="Ventas" Value="Ventas" NavigateUrl="~/WebFormPlantilla.aspx"></asp:MenuItem>
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
           <asp:Label ID="lblCarro" runat="server" Text="Label"></asp:Label>
           <br />
            <asp:GridView ID="dg" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowDeleting="dg_RowDeleting">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <columns>         
                    <asp:ButtonField CommandName="Delete" Text="X" />     
                </columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
           <br />
           <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
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
