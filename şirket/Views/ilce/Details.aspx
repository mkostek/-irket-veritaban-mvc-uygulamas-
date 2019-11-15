<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.ilce>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>ilce</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ilce_no) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ilce_no) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ilce_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ilce_ad) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.il.il_ad) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.il.il_ad) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new {  id=Model.ilce_no }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
