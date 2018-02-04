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
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string StrCadenaConexion = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=" +
          Server.MapPath("~/App_Data/Tienda.mdf") +
          ";Integrated Security=True;Connect Timeout=30";
        string StrComandoSql = "SELECT nombre, rol FROM USUARIO ";
        StrComandoSql = StrComandoSql + " WHERE Login='" + Login1.UserName + "' ";
        StrComandoSql = StrComandoSql + "AND Password='" + Login1.Password + "';";
        try
        {
            SqlConnection conexion = new SqlConnection(StrCadenaConexion);
            SqlCommand comando = new SqlCommand(StrComandoSql, conexion);
            conexion.Open();
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.Read())
            {
                Session.Add("Nombre", reader.GetString(0));
                Session.Add("Rol", reader.GetString(1));
                e.Authenticated = true;
                reader.Close();
                comando.Dispose();
                conexion.Close();
                if (Convert.ToString(Session["Rol"]) == "A")
                    Response.Redirect("~/MenuAdmin.aspx");
                if (Convert.ToString(Session["Rol"]) == "U")
                    Response.Redirect("~/ProductosVer.aspx");
            }
            else
            {
                e.Authenticated = false;
                reader.Close();
                comando.Dispose();
                conexion.Close();
            }
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
}