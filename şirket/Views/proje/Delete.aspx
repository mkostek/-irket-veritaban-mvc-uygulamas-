<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.proje>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>proje</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.proje_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.proje_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.proje_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.proje_ad) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.baslama_tarihi) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.baslama_tarihi) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.planlanan_bitis_tarihi) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.planlanan_bitis_tarihi) %>
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
