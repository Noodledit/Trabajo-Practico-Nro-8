<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="GestionDeSucursales.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 80px;
            height: 23px;
        }
        .auto-style3 {
            width: 157px;
            height: 23px;
        }
        .auto-style4 {
            width: 197px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
               <tr>
    <td class="auto-style2"></td>
    
    <td class="auto-style3">
        <asp:HyperLink ID="hlAgregarSucursal" runat="server" 
            NavigateUrl="#AgregarSucursal" 
            ForeColor="Blue"
            Text="Agregar Sucursal">
        </asp:HyperLink>
    </td>
    
    <td class="auto-style4">
        <asp:HyperLink ID="hlListadoDeSucursales" runat="server" 
            NavigateUrl="#ListadoDeSucursales" 
            ForeColor="Blue"
            Text="Listado De Sucursales">
        </asp:HyperLink>
    </td>
    
    <td class="auto-style5">
        <asp:HyperLink ID="hlEliminarSucursal" runat="server" 
            NavigateUrl="#EliminarSucursal" 
            ForeColor="Blue"
            Text="Eliminar sucursal">
        </asp:HyperLink>
    </td>
</tr>
            </table>
        </div>
        <asp:Label ID="lblListadoSucursales" runat="server" Font-Bold="True" Font-Size="23pt" Text="Listado de sucursales"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblBuscarIdSucursal" runat="server" Text="Busqueda Ingrese Id Sucursal:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtbBuscarSucursales" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFiltrar" runat="server" Height="20px" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMostrarTodo" runat="server" Height="21px" Text="Mostrar todo" />
        <br />
        <br />
        <asp:GridView ID="gvSucursales" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Id_Sucursal">
                    <ItemTemplate>
                        <asp:Label ID="lblIdSucursal" runat="server" Text='<%# Bind("Id_Sucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="lblNombreSucursal" runat="server" Text='<%# Bind("NombreSucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Descripción">
                    <ItemTemplate>
                        <asp:Label ID="lblDescripcionSucursal" runat="server" Text='<%# Bind("DescripcionSucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Provincia">
                    <ItemTemplate>
                        <asp:Label ID="lblProvinciaSucursal" runat="server" Text='<%# Bind("Id_ProvinciaSucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dirección">
                    <ItemTemplate>
                        <asp:Label ID="lblDireccionSucursal" runat="server" Text='<%# Bind("DireccionSucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
