using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{

    DataTable objDT = new DataTable("Cart");
    DataRow objDR;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)//Hace que no se cree un nuevo carro cada vez que se pulse algun boton de esa pagina o se actualice
        {

            if (Session["Cart"] == null)//Si ya existe un carrito para un usuario pues solo se agregaran filas al carrito existente
                //si no existe un carrito creado para ese usuario pues se crea uno.
            {
                Session["Cart"] = makeCart();
                lblMensajes.Text = " Carrito creado ";
             
            }
           
        }

        if (Convert.ToString(Session["Rol"]) != "U")
        {
            Response.Redirect("~/Default.aspx");
        }
        lblDatosUsuario.Text = Convert.ToString(Session["Rol"]) +
              " - " + Convert.ToString(Session["Nombre"]);

    }
    protected void AddToCart(object sender, EventArgs e)
    {


        addCart();

    }

    DataTable makeCart()
    {

        
        objDT = new System.Data.DataTable("Cart");
        objDT.Columns.Add("ID", typeof(int));
            objDT.Columns["ID"].AutoIncrement = true;
            objDT.Columns["ID"].AutoIncrementSeed = 1;
            objDT.Columns.Add("Quantity", typeof(int));
            objDT.Columns.Add("Product", typeof(string));
            objDT.Columns.Add("Cost", typeof(Decimal));
        objDT.Columns.Add("TotalCost", typeof(string));
        
        return objDT;
    }

  public void addCart()
    {
       
        objDT =(DataTable)Session["Cart"];
        string Product = "";
        decimal total;
        decimal monto = decimal.Parse(grdProductos.SelectedRow.Cells[3].Text, NumberStyles.Currency, CultureInfo.GetCultureInfo("es-ES"));
        Product = grdProductos.SelectedRow.Cells[2].Text;
        bool blnMatch = false;
        int x ;
        if (string.IsNullOrEmpty(txtQuantity.Text))
        {
            lblMensajes.Text = " * Solo se admiten números";
        }
        else
        {
            foreach (DataRow s in objDT.Rows)
            {

                objDR = s;

                if (Convert.ToString(objDR["Product"]) == Product)
                {

                    objDR["Quantity"] = Convert.ToInt32(objDR["Quantity"]) + int.Parse(txtQuantity.Text);
                    total = Convert.ToDecimal(objDR["Cost"]) * Convert.ToDecimal(objDR["Quantity"]);
                    objDR["TotalCost"] = string.Format("{0:C2}", total);
                    blnMatch = true;                
                    break;
                }


            }

            if (!blnMatch)
            {
                objDR = objDT.NewRow();
                objDR["Quantity"] = Convert.ToInt32(txtQuantity.Text);
                objDR["Product"] = grdProductos.SelectedRow.Cells[2].Text;
                objDR["Cost"] = monto;
                total = Convert.ToDecimal(monto) * Convert.ToDecimal(txtQuantity.Text);
                objDR["TotalCost"] = string.Format("{0:C2}", total);
                objDT.Rows.Add(objDR);
            }          
            Session.Add("Cart", objDT);
            dg.DataSource = objDT;
            dg.DataBind();
            lblTotal.Text = string.Format("{0:C2}", ObtenerTotal());
            Session.Add("Total", lblTotal.Text);
            lblMensajes.Text = "Producto Añadido al Carrito";
            btnMostrar.Text = "Ver Carrito (" + objDT.Rows.Count + ")";


        }

    }
    Decimal ObtenerTotal()
    {
        
        decimal total = 0;
        for (int i = 0; i < objDT.Rows.Count; i++)
        {
            objDR = objDT.Rows[i];
            total += Convert.ToDecimal(objDR["Cost"]) * Convert.ToDecimal(objDR["Quantity"]);
        }
  
       
        return total;
    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Default.aspx", false);

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnAdd.Visible = true;
       // ValQuant.Enabled = true;
        txtQuantity.Visible = true;
        lblMensajes.Text = "";
        string StrIdProducto = grdProductos.SelectedRow.Cells[1].Text;
        string StrCadenaConexion = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=" +
            Server.MapPath("~/App_Data/Tienda.mdf") +
            ";Integrated Security=True;Connect Timeout=30";
        string StrComandoSql = "SELECT IdProducto,DesPro,PrePro,IdUnidad,PRODUCTO.IdTipo,DesTip,Foto " +
             " FROM PRODUCTO INNER JOIN TIPO ON PRODUCTO.IdTipo = TIPO.IdTipo " +
             "WHERE PRODUCTO.IdProducto = '" + StrIdProducto + "';";
        try
        {
            SqlConnection conexion = new SqlConnection(StrCadenaConexion);
            SqlCommand comando = new SqlCommand(StrComandoSql, conexion);
            conexion.Open();
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
            }
            else
            {
                lblMensajes.Text = "No existen registros resultantes de la consulta";
            }
            reader.Close();
            comando.Dispose();
            conexion.Close();
        }
        catch (SqlException ex)
        {
            string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
            StrError = StrError + "<div>Código: " + ex.Number + "</div>";
            StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
            lblMensajes.Text = StrError;
            return;
        }
    }






    protected void btnMostrar_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/VerCarro.aspx");
    }
}