using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Sucursal
    {
        private int IdSucursal;
        private int IdProvinciaSucursal;
        private String NombreSucursal;

        public int getIdSucursal()
        {
            return IdSucursal;
        }
        public void setIdSucursal(int idSucursal)
        {
            IdSucursal = idSucursal;
        }
        public int getIdProvinciaSucursal()
        {
            return IdProvinciaSucursal;
        }
        public void setIdProvinciaSucursal(int idProvinciaSucursal)
        {
            IdProvinciaSucursal = idProvinciaSucursal;
        }
        public String getNombre()
        {
            return NombreSucursal;
        }
        public void setNombre(string nombre)
        {
            NombreSucursal = nombre;
        }
    }
}
