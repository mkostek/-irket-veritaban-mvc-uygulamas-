<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<şirket.Models.il>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.il_no) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.il_ad) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.il_no) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.il_ad) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new {  id=item.il_no  }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.il_no  }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.il_no }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
