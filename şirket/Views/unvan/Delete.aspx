<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.unvan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
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
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
