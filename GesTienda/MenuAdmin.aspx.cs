using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Te redirige a la pagina de login porque el usuario no es administrador

        string rol = Convert.ToString(Session["Rol"]);
        if ( rol != "A")
        {
            Response.Redirect("~/Default.aspx");
        }

        lblDatosUsuario.Text = Convert.ToString(Session["Rol"]) +
            " - " + Convert.ToString(Session["Nombre"]);

        string strCadenaConexion = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=" +
    Server.MapPath("~/App_Data/Tienda.mdf") +
     ";Integrated Security=True;Connect Timeout=30";
        string strComandoSql = "SELECT Nombre FROM USUARIO WHERE USUARIO.Rol= '" + rol + "' ;";
        string strError;
        try
        {
            SqlConnection conexion = new SqlConnection(strCadenaConexion);
            SqlCommand comando = new SqlCommand(strComandoSql, conexion);
            conexion.Open();
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.HasRows)
            {
                grdDatos.DataSource = reader;
                grdDatos.DataBind();
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
            strError = "<p>Se ha producido errores en el acceso a la base de datos.</p>";
            strError = strError + "<div>Código: " + ex.Number + "</div>";
            strError = strError + "<div>Descripción: " + ex.Message + "</div>";
            lblMensajes.Text = strError;
            return;
        }



    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Default.aspx", false);

    }
}