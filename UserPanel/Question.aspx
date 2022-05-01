<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question.aspx.cs" Inherits="UserPanel_Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <link href="~/Content/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet"
        type="text/css" />
    <link href="~/Content/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet"
        type="text/css" />
    <link href="~/Content/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style>
        ::-webkit-scrollbar {
            display: none;
            overflow: hidden;
            -ms-overflow-style: none;
            width: none;
        }
    </style>
</head>
<body>
    <form runat="server" id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed"
        style="--kt-toolbar-height: 55px; --kt-toolbar-height-tablet-and-mobile: 55px">
        <div class="post d-flex flex-column-fluid" id="kt_post">
            <div id="kt_content_container" class="container-xxl">
                <div class="row gy-5 g-xl-8">
                   
                </div>
            </div>
        </div>
        <script src='<%= ResolveUrl("~/Content/plugins/global/plugins.bundle.js") %>'></script>
        <script src='<%= ResolveUrl("~/Content/js/scripts.bundle.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/plugins/custom/datatables/datatables.bundle.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/documentation/editors/quill/basic.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/widgets.bundle.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/widgets.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/apps/chat/chat.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/apps/contacts/edit-contact.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/utilities/modals/upgrade-plan.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/utilities/modals/create-app.js")%>'></script>
        <script src='<%= ResolveUrl("~/Content/js/custom/utilities/modals/users-search.js")%>'></script>

    </form>
</body>
</html>
