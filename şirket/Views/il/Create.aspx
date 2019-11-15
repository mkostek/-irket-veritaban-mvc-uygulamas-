<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.il>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>il</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.il_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.il_no) %>
            <%: Html.ValidationMessageFor(model => model.il_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.il_ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.il_ad) %>
            <%: Html.ValidationMessageFor(model => model.il_ad) %>
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
