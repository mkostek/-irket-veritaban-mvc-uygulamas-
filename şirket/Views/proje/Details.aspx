<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<şirket.Models.proje>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>
    <%: Html.ActionLink("Edit", "Edit", new {  id=Model.proje_no  }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
