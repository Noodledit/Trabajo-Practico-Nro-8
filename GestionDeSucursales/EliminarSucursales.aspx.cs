using Gestor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDeSucursales
{
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            GestorSucursales gestorSuc = new GestorSucursales();
            try
            {
                if (gestorSuc.EliminarSucursal(Convert.ToInt32(txtEliminar.Text)))
                {
                    lblMensaje.Text = $"Sucursal Nro. {txtEliminar.Text} fue eliminada correctamente.";
                }
                else
                {
                    lblMensaje.Text = "El ID ingresado no corresponde a una sucursal registrada";
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al eliminar la sucursal: " + ex.Message;
            }
        }
    }
}