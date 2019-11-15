<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.cocuk>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>cocuk</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.cocuk_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cocuk_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ad) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.soyad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.soyad) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.cinsiyet) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cinsiyet) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.dogum_tarihi) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.dogum_tarihi) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ilce.ilce_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ilce.ilce_ad) %>
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
