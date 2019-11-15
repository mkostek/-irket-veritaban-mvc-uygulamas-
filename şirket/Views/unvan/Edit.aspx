<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.unvan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>unvan</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.unvan_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.unvan_no) %>
            <%: Html.ValidationMessageFor(model => model.unvan_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.unvan_ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.unvan_ad) %>
            <%: Html.ValidationMessageFor(model => model.unvan_ad) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
