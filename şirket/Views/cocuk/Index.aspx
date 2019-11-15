<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<şirket.Models.cocuk>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.cocuk_no) %>
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
            <%: Html.DisplayNameFor(model => model.personel.ad) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.cocuk_no) %>
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
            <%: Html.DisplayFor(modelItem => item.personel.ad) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new {  id=item.cocuk_no  }) %> |
            <%: Html.ActionLink("Details", "Details", new {  id=item.cocuk_no  }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.cocuk_no  }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
