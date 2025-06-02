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

        public Sucursal getSucursal(int IdSucursal)
        {
            Sucursal sucursal = new Sucursal();

            SqlParameter parametros = new SqlParameter("@IdSucursal", IdSucursal);

            DataTable tabla = ds.EjecutarConsultaDataAdapter("SELECT * FROM Sucursal WHERE Id_Sucursal = @IdSucursal", parametros);

            sucursal.setIdSucursal(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            sucursal.setIdProvinciaSucursal(Convert.ToInt32(tabla.Rows[0][1]));
            sucursal.setNombre(tabla.Rows[0][2].ToString());
            return sucursal;
        }
        public int EliminarSucursal(Sucursal sucursal)
        {
            string query = "DELETE FROM Sucursal WHERE Id_Sucursal = @IdSucursal";
            SqlParameter[] parametros = new SqlParameter[] { new SqlParameter("@IdSucursal", sucursal.getIdSucursal()) };
            return ds.EjecutarConsulta(query, parametros);
        }

        public int InsertarSucursal(Sucursal sucursal)
        {
            string query = "INSERT INTO Sucursal (Id_Provincia_Sucursal, Nombre_Sucursal, Descripcion, Direccion) "
                            + "VALUES (@IdProvinciaSucursal, @NombreSucursal, @Descripcion, @Direccion)";
            SqlParameter[] parametros = new SqlParameter[]
                {
                new SqlParameter("@IdProvinciaSucursal", sucursal.getIdProvinciaSucursal()),
                new SqlParameter("@NombreSucursal", sucursal.getNombre()),
                new SqlParameter("@Descripcion", sucursal.getDescripcion()),
                new SqlParameter("@Direccion", sucursal.getDireccion())
                };

            return ds.EjecutarConsulta(query, parametros);
        }

        public DataTable ListarSucursales()
        {
            string query = "SELECT * FROM Sucursal";
            return ds.EjecutarConsultaDataAdapter(query);
        }

        public string GetFiltrarSucursalQuery()
        {
            return "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal, S.Id_ProvinciaSucursal, S.DireccionSucursal, P.DescripcionProvincia " +
                   "FROM Sucursal S INNER JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia WHERE S.Id_Sucursal = @IdSucursal";
        }
    }
}
