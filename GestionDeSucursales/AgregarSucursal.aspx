<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="GestionDeSucursales.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 186px;
        }
        .auto-style5 {
            width: 175px;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            width: 186px;
            font-size: x-large;
        }
        .auto-style9 {
            width: 53px;
        }
        .auto-style10 {
            width: 135px;
        }
        .auto-style11 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlListadoSucursal" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7" colspan="2"><strong>GRUPO Nº12</strong></td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8"><strong style="font-size: large">Agregar Sucursal</strong></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Nombre sucursal:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ForeColor="Red">Debe ingresar un nombre de sucursal</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Descripción:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDescripción" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvDescripción" runat="server" ControlToValidate="txtDescripción" ForeColor="Red">Debe ingresar una descripción</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Provincia:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlProvincia" runat="server" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" Width="124px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="La Provincia debe seleccionarse" ForeColor="Red"> 
                        </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Dirección:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="La Direccion es Obligatoria" ForeColor="Red"> 
  </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        -</p>
</body>
</html>
