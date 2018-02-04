using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Rol"]) != "U")
        {
            Response.Redirect("~/Default.aspx");
        }
        lblDatosUsuario.Text = Convert.ToString(Session["Rol"]) +
              " - " + Convert.ToString(Session["Nombre"]);
        if (!IsPostBack)
        {
          
            DataTable tablaDatos = (DataTable)Session["Cart"];
            dg.DataSource = tablaDatos;
            dg.DataBind();
            lblTotal.Text = Convert.ToString(Session["Total"]);

        }

    }

    protected void dg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tablaDatos = (DataTable)Session["Cart"];
        DataRow objDR;
        decimal total = 0;
        tablaDatos.Rows[e.RowIndex].Delete();
        Session["Cart"] = tablaDatos;
        dg.DataSource = tablaDatos;
        dg.DataBind();
      
        for (int i = 0; i < tablaDatos.Rows.Count; i++)
        {
            objDR = tablaDatos.Rows[i];
            total += Convert.ToDecimal(objDR["Cost"]) * Convert.ToDecimal(objDR["Quantity"]);
        }
        lblTotal.Text = string.Format("{0:C2}", total);
    }
}