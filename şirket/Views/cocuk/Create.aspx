<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.cocuk>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>cocuk</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cocuk_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cocuk_no) %>
            <%: Html.ValidationMessageFor(model => model.cocuk_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ad) %>
            <%: Html.ValidationMessageFor(model => model.ad) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.soyad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.soyad) %>
            <%: Html.ValidationMessageFor(model => model.soyad) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cinsiyet) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cinsiyet) %>
            <%: Html.ValidationMessageFor(model => model.cinsiyet) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.dogum_tarihi) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.dogum_tarihi) %>
            <%: Html.ValidationMessageFor(model => model.dogum_tarihi) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.dogu_yeri, "ilce") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("dogu_yeri", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.dogu_yeri) %>
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
