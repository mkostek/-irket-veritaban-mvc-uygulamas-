<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.proje>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>proje</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.proje_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.proje_no) %>
            <%: Html.ValidationMessageFor(model => model.proje_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.proje_ad) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.proje_ad) %>
            <%: Html.ValidationMessageFor(model => model.proje_ad) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.baslama_tarihi) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.baslama_tarihi) %>
            <%: Html.ValidationMessageFor(model => model.baslama_tarihi) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.planlanan_bitis_tarihi) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.planlanan_bitis_tarihi) %>
            <%: Html.ValidationMessageFor(model => model.planlanan_bitis_tarihi) %>
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
