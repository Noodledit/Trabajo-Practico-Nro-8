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
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                GestorProvincias gestor = new GestorProvincias();
                DataTable provincias = gestor.ObtenerProbincias();
                ddlProvincia.DataSource = provincias;
                ddlProvincia.DataValueField = "Id_Provincia";
                ddlProvincia.DataTextField = "DescripcionProvincia";
                ddlProvincia.DataBind();
                ddlProvincia.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
            }

        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idProvincia = Convert.ToInt32(ddlProvincia.SelectedValue);
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

        }
    }
}