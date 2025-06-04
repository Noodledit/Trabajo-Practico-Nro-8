<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="GestionDeSucursales.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            width: 53px;
        }
        .auto-style5 {
            width: 175px;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            width: 248px;
            font-size: x-large;
            height: 1px;
        }
        .auto-style12 {
            width: 159px;
        }
        .auto-style13 {
            width: 248px;
        }
        .auto-style14 {
            width: 53px;
            height: 11px;
        }
        .auto-style15 {
            width: 248px;
            height: 11px;
        }
        .auto-style16 {
            width: 159px;
            height: 11px;
        }
        .auto-style18 {
            width: 175px;
            height: 11px;
        }
        .auto-style20 {
            height: 11px;
        }
        .auto-style21 {
            width: 53px;
            height: 1px;
        }
        .auto-style22 {
            width: 159px;
            height: 1px;
        }
        .auto-style24 {
            width: 175px;
            height: 1px;
        }
        .auto-style26 {
            height: 1px;
        }
        .auto-style27 {
            width: 92px;
        }
        .auto-style28 {
            width: 92px;
            height: 11px;
        }
        .auto-style29 {
            width: 92px;
            height: 1px;
        }
        .auto-style30 {
            width: 112px;
        }
        .auto-style31 {
            width: 112px;
            height: 11px;
        }
        .auto-style32 {
            width: 112px;
            height: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style27"></td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlListadoSucursal" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style30"></td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7" colspan="2">Eliminar Sucursal</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style8">Ingresar ID Sucursal:</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="txtEliminar" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="revIdSucursalIng" runat="server" ControlToValidate="txtEliminar" ForeColor="#CC0000">Se debe ingresar un ID</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revidSucursalOnlyNum" runat="server" ControlToValidate="txtEliminar" ValidationExpression="^\d+$" ForeColor="#CC0000">Se debe ingresar un ID válido</asp:RegularExpressionValidator>

                        </td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>
</body>
</html>
