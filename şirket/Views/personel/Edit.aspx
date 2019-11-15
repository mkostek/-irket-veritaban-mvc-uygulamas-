<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.personel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>personel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.personel_no) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.personel_no) %>
            <%: Html.ValidationMessageFor(model => model.personel_no) %>
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
            <%: Html.LabelFor(model => model.dogum_yeri, "ilce") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("dogum_yeri", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.dogum_yeri) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.baslama_tarihi) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.baslama_tarihi) %>
            <%: Html.ValidationMessageFor(model => model.baslama_tarihi) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.birim_no, "birim") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("birim_no", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.birim_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.unvan_no, "unvan") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("unvan_no", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.unvan_no) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.calisma_saati) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.calisma_saati) %>
            <%: Html.ValidationMessageFor(model => model.calisma_saati) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.maas) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.maas) %>
            <%: Html.ValidationMessageFor(model => model.maas) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.prim) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.prim) %>
            <%: Html.ValidationMessageFor(model => model.prim) %>
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
