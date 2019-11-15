<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.ilce>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ilce</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ilce_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ilce_no) %>
            <%: Html.ValidationMessageFor(model => model.ilce_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ilce_ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ilce_ad) %>
            <%: Html.ValidationMessageFor(model => model.ilce_ad) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.il_no, "il") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("il_no", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.il_no) %>
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
