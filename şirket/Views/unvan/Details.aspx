<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.unvan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>unvan</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.unvan_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.unvan_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.unvan_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.unvan_ad) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new {  id=Model.unvan_no }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
