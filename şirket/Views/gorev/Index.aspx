<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<şirket.Models.gorevlendirme>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.gorevlendirme_no) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.proje.proje_ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.personel.ad) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.gorevlendirme_no) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.proje.proje_ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.personel.ad) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new {  id=item.gorevlendirme_no  }) %> |
            <%: Html.ActionLink("Details", "Details", new {  id=item.gorevlendirme_no }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.gorevlendirme_no  }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
