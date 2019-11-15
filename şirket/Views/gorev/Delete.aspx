<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.gorevlendirme>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>gorevlendirme</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.gorevlendirme_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.gorevlendirme_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.proje.proje_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.proje.proje_ad) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.personel.ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.personel.ad) %>
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
