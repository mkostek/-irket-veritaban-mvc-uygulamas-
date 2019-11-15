<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.gorevlendirme>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>gorevlendirme</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.gorevlendirme_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.gorevlendirme_no) %>
            <%: Html.ValidationMessageFor(model => model.gorevlendirme_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.proje_no, "proje") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("proje_no", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.proje_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.personel_no, "personel") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("personel_no", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.personel_no) %>
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
