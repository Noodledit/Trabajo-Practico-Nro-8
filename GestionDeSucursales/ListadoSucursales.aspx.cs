using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using Gestor;

namespace GestionDeSucursales
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        private GestorSucursales gestor = new GestorSucursales();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tabla = gestor.ObtenerTabla();
                gvSucursales.DataSource = tabla;
                gvSucursales.DataBind();
            }
        }
    }
}