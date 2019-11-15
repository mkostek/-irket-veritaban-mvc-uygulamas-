<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.gorevlendirme>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>
    <%: Html.ActionLink("Edit", "Edit", new {  id=Model.gorevlendirme_no }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
