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
        .auto-style5 {
            height: 23px;
        }
        .auto-style7 {
            width: 303px;
            height: 23px;
        }
        .auto-style8 {
            width: 179px;
            height: 23px;
        }
        .auto-style9 {
            width: 287px;
            height: 23px;
        }
        .auto-style10 {
            width: 148px;
        }
        .auto-style13 {
            height: 23px;
            width: 148px;
        }
        .auto-style14 {
            width: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
               <tr>
    <td class="auto-style7"></td>
    
    <td class="auto-style8">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
    </td>
    
    <td class="auto-style9">
                        <asp:HyperLink ID="hlListadoSucursal" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
    </td>
    
                   <td class="auto-style10">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar Sucursal</asp:HyperLink>
                   </td>
    
    <td class="auto-style5">
                        &nbsp;</td>
</tr>
               <tr>
    <td class="auto-style7">
        <asp:Label ID="lblListadoSucursales" runat="server" Font-Bold="True" Font-Size="23pt" Text="Listado de sucursales"></asp:Label>
                   </td>
    
    <td class="auto-style8">
                        &nbsp;</td>
    
    <td class="auto-style9">
                        &nbsp;</td>
    
    <td class="auto-style13">
                        &nbsp;</td>
</tr>
               <tr>
    <td class="auto-style7">&nbsp;</td>
    
    <td class="auto-style8">
                        &nbsp;</td>
    
    <td class="auto-style9">
                        &nbsp;</td>
    
    <td class="auto-style13">
                        &nbsp;</td>
</tr>
               <tr>
    <td class="auto-style7">
        <asp:Label ID="lblBuscarIdSucursal" runat="server" Text="Busqueda Ingrese Id Sucursal:"></asp:Label>
                   </td>
    
    <td class="auto-style8">
        <asp:TextBox ID="txtbBuscarSucursales" runat="server"></asp:TextBox>
    </td>
    
    <td class="auto-style9">
        <asp:Button ID="btnFiltrar" runat="server" Height="20px" Text="Filtrar" OnClick="btnFiltrar_Click" />
    </td>
    
    <td class="auto-style13">
                        &nbsp;</td>
</tr>
               <tr>
    <td class="auto-style7">&nbsp;</td>
    
    <td class="auto-style8">
        <asp:RegularExpressionValidator ID="revIdSucursal" runat="server" ControlToValidate="txtbBuscarSucursales" ForeColor="#CC0000" ValidationExpression="^[0-9]+$">Debe ingresar un ID valido</asp:RegularExpressionValidator>
    </td>
    
    <td class="auto-style9">
        <asp:Button ID="btnMostrarTodo" runat="server" Height="21px" Text="Mostrar todo" OnClick="btnMostrarTodo_Click" />
                   </td>
    
    <td class="auto-style13">
                        &nbsp;</td>
</tr>
               <tr>
    <td class="auto-style7">
        <asp:Label ID="lblNoResultados" runat="server"></asp:Label>
                   </td>
    
    <td class="auto-style8">
                        &nbsp;</td>
    
    <td class="auto-style9">
                        &nbsp;</td>
    
    <td class="auto-style13">
                        &nbsp;</td>
</tr>
               </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                        <asp:DataList ID="DlProvincias" runat="server">
                            <ItemTemplate>
                                <asp:Button ID="btnProvincia" runat="server" Text='<%# Eval("DescripcionProvincia") %>' CommandName="ComandProvinciaS"  CommandArgument='<%# Eval("Id_Provincia") %>' OnCommand="btnProvincia_Command" />
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                </td>
                <td>
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
                        <asp:Label ID="lblProvinciaSucursal" runat="server" Text='<%# Bind("DescripcionProvincia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dirección">
                    <ItemTemplate>
                        <asp:Label ID="lblDireccionSucursal" runat="server" Text='<%# Bind("DireccionSucursal") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
    </form>
</body>
</html>
