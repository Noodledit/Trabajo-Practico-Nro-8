using Gestor;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDeSucursales
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        private GestorSucursales gestor = new GestorSucursales();
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                DataTable tabla = gestor.ObtenerTabla();
                gvSucursales.DataSource = tabla;
                gvSucursales.DataBind();
            }
        }
        protected void btnMostrarTodo_Click(object sender, EventArgs e)
        {
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

        }
    }

}