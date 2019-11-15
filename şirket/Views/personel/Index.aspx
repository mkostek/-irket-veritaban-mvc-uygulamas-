<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<şirket.Models.personel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.personel_no) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.soyad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.cinsiyet) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.dogum_tarihi) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ilce.ilce_ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.baslama_tarihi) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.birim.birim_ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.unvan.unvan_ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.calisma_saati) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.maas) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.prim) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.personel_no) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.soyad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cinsiyet) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.dogum_tarihi) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ilce.ilce_ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.baslama_tarihi) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.birim.birim_ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.unvan.unvan_ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.calisma_saati) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.maas) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.prim) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.personel_no }) %> |
            <%: Html.ActionLink("Details", "Details", new {  id=item.personel_no  }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.personel_no  }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
