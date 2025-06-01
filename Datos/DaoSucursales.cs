using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entidades;
using System.Data.SqlClient;
using System;

namespace Datos
{
    public class DaoSucursales
    {

        AccsesoDatos ds = new AccsesoDatos();

        public Sucursal getSucursal(Sucursal suc)
        {
            SqlDataAdapter adapter = ds.EjecutarConsultaDataAdapter("SELECT * FROM Sucursal WHERE Id_Sucursal = " + suc.getIdSucursal());
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);

            suc.setIdSucursal(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            suc.setIdProvinciaSucursal(Convert.ToInt32(tabla.Rows[0][1]));
            suc.setNombre(tabla.Rows[0][2].ToString());
            return suc;
        }
        public int EliminarSucursal(Sucursal sucursal)
        {
            string query = $"DELETE FROM Sucursal WHERE Id_Sucursal = {sucursal.getIdSucursal()}";
            return ds.EjecutarConsulta(query);
        }

    }
}
