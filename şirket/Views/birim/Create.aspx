<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.birim>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>birim</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.birim_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.birim_no) %>
            <%: Html.ValidationMessageFor(model => model.birim_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.birim_ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.birim_ad) %>
            <%: Html.ValidationMessageFor(model => model.birim_ad) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
