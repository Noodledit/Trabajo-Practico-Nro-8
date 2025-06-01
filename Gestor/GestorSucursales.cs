using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Gestor
{
    public class GestorSucursales
    {
       


        protected void AgregarSucursal(string nombre, string descripcion, int provincia, string direccion)
        {

            Sucursal sucursal = new Sucursal();

            sucursal.setNombre(nombre);
            sucursal.setDescripcion(descripcion);
            sucursal.setIdProvinciaSucursal(provincia);
            sucursal.setDireccion(direccion);

            //Aqui va la Comunicacion con Datos
           
        }


    }
}
