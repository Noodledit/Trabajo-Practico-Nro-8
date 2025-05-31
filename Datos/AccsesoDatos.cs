using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace Datos
{
    public class AccsesoDatos
    {
        private string connectionString = "Data Source=localhost;Initial Catalog=BDSucursales;Integrated Security=True";

        private SqlConnection connection()
        {
            try
            {
                SqlConnection cnxn = new SqlConnection(connectionString);
                cnxn.Open();
                return cnxn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlCommand sqlCommand (string query, SqlConnection conexion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand(query, conexion);
                return cmd;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public int EjecutarConsulta(string query)
        {
            try
            {
                using (SqlCommand cmd = sqlCommand(query, connection()))
                {                                        
                    if (cmd == null) return -1;
                    int FilasAfectadas = cmd.ExecuteNonQuery();
                    return FilasAfectadas;
                }
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public SqlDataAdapter EjecutarConsultaDataAdapter(string query)
        {
            try
            {
                using (SqlCommand cmd = sqlCommand(query, connection()))
                {
                    if (cmd == null) return null;
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable tabla = new DataTable();
                    adapter.Fill(tabla);
                    return adapter;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
