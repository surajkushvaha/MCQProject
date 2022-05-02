<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="UserPanel_Test" %>

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

        <div class="d-flex flex-column justify-content-center">
            <div class="card">50 marks</div>
        </div>
        <div class="post d-flex flex-column-fluid" id="kt_post">
            <div id="kt_content_container" class="container-xxl">
                <div class="row gy-5 g-xl-8">

                     <asp:Repeater ID="rpQuestion" runat="server" OnItemDataBound="rpQuestion_ItemDataBound" >
                            <ItemTemplate>
                            <div class="col-xl-12">
                                <div class="card shadow-sm">
                                    <div class="p-5">
                                        <h2 class="card-title text-primary">Question <%#Convert.ToInt32( DataBinder.Eval(Container, "ItemIndex", "") ) + 1%>
                                        </h2>
                                        <p class="">
                                            <%# Eval("Question") %>
                                        </p>
                                    </div>
                                    <div class="card-body py-0">
                                        <ul class="list-group-flush p-0">
                                            <li class="list-group-item">A)  <%# Eval("OptionA") %></li>
                                            <li class="list-group-item">B)  <%# Eval("OptionB") %></li>
                                            <li class="list-group-item">C)  <%# Eval("OptionC") %></li>
                                            <li class="list-group-item">D)  <%# Eval("OptionD") %></li>
                                            <li class="list-group-item">E)  <%# Eval("OptionE") %></li>

                                        </ul>
                                    </div>
                                    <div class="card">
                                        <div class="card-header collapsible cursor-pointer rotate" data-bs-toggle="collapse"
                                            data-bs-target="#kt_docs_card_collapsible">
                                            <h3 class="card-title text-success">Answer</h3>
                                            <div class="card-toolbar rotate-180">
                                                <span class="svg-icon svg-icon-1">
                                                    <i class="fas fa-arrow-down"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div id="kt_docs_card_collapsible" class="collapse">
                                            <div class="card-body">
<%# Eval("Remarks") %>                                                <p><span class="text-primary">Solution : </span><%# Eval("Solution") %></p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                                </ItemTemplate>
                            </asp:Repeater>
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
