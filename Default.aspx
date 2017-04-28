<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Pedir Tarimas a Friolala</h2>
    <div>
        <table id="tablaControles">
            <tr>
                <td class="tdIzq"><label>Seleccione la fecha de producción:</label></td>
                <td class="tdDer"><dx:ASPxDateEdit ID="dtpFechaProd" runat="server" 
                        AutoPostBack="True"></dx:ASPxDateEdit></td>
            </tr>
        </table>   
    </div>

    <dx:ASPxGridView ID="gridTarimas" runat="server" AutoGenerateColumns="False" 
        ClientIDMode="AutoID" DataSourceID="SourceTarimas" 
        CssClass="gridCentrado">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataCheckColumn FieldName="b_Seleccion" VisibleIndex="0" 
                Caption="Pedir">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="i_ID_Tarima" VisibleIndex="1" 
                Caption="# Tarima" ReadOnly="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="d_Cantidad" VisibleIndex="2" 
                Caption="Cantidad" ReadOnly="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="s_Unidad" VisibleIndex="3" 
                Caption="Unidad" ReadOnly="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="s_Clave_Articulo" VisibleIndex="4" 
                Caption="Clave Articulo" ReadOnly="True">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="s_Articulo" VisibleIndex="5" 
                Caption="Articulo" ReadOnly="True">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:ObjectDataSource ID="SourceTarimas" runat="server" 
        SelectMethod="obtenerTarimas" TypeName="ControladorTarimas">
        <SelectParameters>
            <asp:ControlParameter ControlID="dtpFechaProd" Name="dtFechaProduccion" 
                PropertyName="Value" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
