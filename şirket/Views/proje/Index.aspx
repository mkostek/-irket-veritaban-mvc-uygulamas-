<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<şirket.Models.proje>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.proje_no) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.proje_ad) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.baslama_tarihi) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.planlanan_bitis_tarihi) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.proje_no) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.proje_ad) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.baslama_tarihi) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.planlanan_bitis_tarihi) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new {  id=item.proje_no  }) %> |
            <%: Html.ActionLink("Details", "Details", new {  id=item.proje_no  }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.proje_no  }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
