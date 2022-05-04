<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true"
    CodeFile="ExamQuestion.aspx.cs" Inherits="UserPanel_ExamQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="d-flex align-items-center d-lg-none  position-absolute  fw-bolder z-index-3  top-50 start-0   gap-2"
        style="transform: rotate(180deg)" title="Show aside menu">
        <div class="btn btn-icon btn-active-light-primary w-20px h-20px w-md-40px h-md-40px"
            id="kt_aside_mobile_toggle">
            <span class="svg-icon " style="z-index: 1000;">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAACKElEQVRoge2Zu5ITQQxFj/gDQvNhEJDwWGac7dNrMhzifRky9+zySPkyZ6SQgAi8QNXuqD3q0RRV1Nz8tu5Vq9U9GhgxYsSI/xtJFzT6dnDOIEi6IKmSVDsLcnKkt8icEHhzJ9qSSl5Hch70EukRAqB8D+UwxA5YQuCMWuZOzjm1nObCxRqIFK9cMJXZrpBxBkqyaHMuqeWkS9gYAyVZtMWvqOWoa+j+BmLFv6OWQ0/4fgZKSsA2/J6pHHgllBuwhAhXVHLs4kBDxRQR9cooMxApXrmmpi4Rvw3pRcnhszk3VFSl4sF7E0eKFz6wKc/832W6oqRz2JyPbHjFQn52jm+gm4FY8Z/YsBchHrqUUK7tVfjKRvkcKR527UBJ27M5X3jIUx7LjxKhFvI7oHxzr1jC6YG8gaksUdo+JioSK1Tv76DNecJXblho6DfI7sUsQcI+DVdOzjMmsSa6LWRn9YCkKyfnOROuo0x0XyRvwrcT8IJHNBEmfAvYgg7dJpSXTEit58gBfwZyJhq9dHL2SP1MlLtf6xzh/twm9yK1OD2e0+U1aJfGEUkvXJzfbbkA/Q6RLeiYtZ67OMK+2dEy6N/KbEEnbhO5jmYg5kLJmUh65uJsO1p7CbYg7lq3Bc1IunRy7BK8g/jRot1p7Omczdk5Wowf7tpZPb19ans4M5Nzi2Gm07Ygu8+XcAbHWud/flYkbfvIieEMiu0fl2wZhHBGjBgx4p/gF8kJYfbbc1z2AAAAAElFTkSuQmCC" />
            </span>
        </div>
    </div>
    <div class="toolbar" id="kt_toolbar">
        <!--begin::Container-->
        <div id="kt_toolbar_container" class="container-xxl d-flex flex-stack">
            <!--begin::Page title-->
            <div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}"
                class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
                <!--begin::Title-->
                <%--<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Home</h1>--%>
                <h2 id="hExamName" runat="server" class="d-flex align-items-center text-dark fw-bolder fs-3 my-1 text-primary ">
                    <%#Convert.ToInt32( DataBinder.Eval(Container, "ItemIndex", "") ) + 1%>
                </h2>
                <!--end::Title-->
                <!--begin::Separator-->
                <span class="h-20px border-gray-300 border-start mx-4"></span>
                <!--end::Separator-->
                <!--begin::Breadcrumb-->
                <p id="pExamDescription" runat="server" class="fw-bold fs-7 my-1">
                </p>

                <!--end::Breadcrumb-->
            </div>
            <!--end::Page title-->

        </div>
        <!--end::Container-->
    </div>

    <div class="page d-flex flex-row flex-column-fluid my-3">
        <div id="kt_aside" class="aside bg-white rounded aside-hoverable" data-kt-drawer="true"
            data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}"
            data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}"
            data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle">
            <div class="aside-menu flex-column-fluid">
                <div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true"
                    data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto"
                    data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu"
                    data-kt-scroll-offset="0" style="height: 161px;">
                    <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500"
                        id="#kt_aside_menu" data-kt-menu="true" data-kt-menu-expand="false">
                        <div class="menu-item">
                            <div class="menu-content pt-5 pb-2">
                                <span class="menu-section text-muted text-uppercase fs-4 ls-1">Subjects</span>
                            </div>
                        </div>
                        <asp:Repeater ID="rpSubjects" runat="server" OnItemDataBound="rpSubjects_ItemDataBound">
                            <ItemTemplate>
                                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                                    <span class="menu-link">
                                        <span class="menu-icon">
                                            <span class="svg-icon svg-icon-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                                    fill="none">
                                                    <path d="M11.2929 2.70711C11.6834 2.31658 12.3166 2.31658 12.7071 2.70711L15.2929 5.29289C15.6834 5.68342 15.6834 6.31658 15.2929 6.70711L12.7071 9.29289C12.3166 9.68342 11.6834 9.68342 11.2929 9.29289L8.70711 6.70711C8.31658 6.31658 8.31658 5.68342 8.70711 5.29289L11.2929 2.70711Z"
                                                        fill="black">
                                                    </path>
                                                    <path d="M11.2929 14.7071C11.6834 14.3166 12.3166 14.3166 12.7071 14.7071L15.2929 17.2929C15.6834 17.6834 15.6834 18.3166 15.2929 18.7071L12.7071 21.2929C12.3166 21.6834 11.6834 21.6834 11.2929 21.2929L8.70711 18.7071C8.31658 18.3166 8.31658 17.6834 8.70711 17.2929L11.2929 14.7071Z"
                                                        fill="black">
                                                    </path>
                                                    <path opacity="0.3" d="M5.29289 8.70711C5.68342 8.31658 6.31658 8.31658 6.70711 8.70711L9.29289 11.2929C9.68342 11.6834 9.68342 12.3166 9.29289 12.7071L6.70711 15.2929C6.31658 15.6834 5.68342 15.6834 5.29289 15.2929L2.70711 12.7071C2.31658 12.3166 2.31658 11.6834 2.70711 11.2929L5.29289 8.70711Z"
                                                        fill="black">
                                                    </path>
                                                    <path opacity="0.3" d="M17.2929 8.70711C17.6834 8.31658 18.3166 8.31658 18.7071 8.70711L21.2929 11.2929C21.6834 11.6834 21.6834 12.3166 21.2929 12.7071L18.7071 15.2929C18.3166 15.6834 17.6834 15.6834 17.2929 15.2929L14.7071 12.7071C14.3166 12.3166 14.3166 11.6834 14.7071 11.2929L17.2929 8.70711Z"
                                                        fill="black">
                                                    </path>
                                                </svg>
                                            </span>
                                        </span>
                                        <span class="menu-title"><%# Eval("ExamSubjectName") %></span>
                                        <asp:HiddenField runat="server" ID="hf" Value='<%# Eval("ExamSubjectID") %>' />

                                        <span class="menu-arrow"></span>
                                    </span>
                                    <div class="menu-sub menu-sub-accordion menu-active-bg">
                                        <div class="menu-item">
                                            <asp:HyperLink runat="server" ID="hlSubject" NavigateUrl='<%# "~/UserPanel/ExamQuestion.aspx?SubjectID="+ Eval("ExamSubjectID") %>'
                                                class="menu-link">
                                                <span class="menu-bullet">
                                                    <span class="bullet bullet-dot"></span>
                                                </span>
                                                <span class="menu-title">All</span>
                                            </asp:HyperLink>
                                        </div>
                                        <asp:Repeater ID="rpTopic" runat="server" OnItemDataBound="rpTopic_ItemDataBound">
                                            <ItemTemplate>
                                                <div class="menu-item">
                                                    <asp:HiddenField runat="server" ID="hfTopicID" Value='<%# Eval("ExamTopicID") %>' />
                                                    <asp:HyperLink runat="server" ID="hlTopic" CssClass="menu-link">>

                                                        <span class="menu-bullet">
                                                            <span class="bullet bullet-dot"></span>
                                                        </span>
                                                        <span class="menu-title"><%# Eval("ExamTopicName") %></span>
                                                    </asp:HyperLink>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <!--end::Aside-->
        <div class="wrapper d-flex flex-column flex-row-fluid pt-0" id="kt_wrapper">
            <div class="content d-flex flex-column flex-column-fluid pt-0" id="kt_content">
                <div class="post d-flex flex-column-fluid" id="kt_post">
                    <!--begin::Container-->
                    <div id="kt_content_container" class="container-xxl">
                        <!--begin::Row-->
                        <div class="row gy-5 g-xl-8">
                            <div id="blockDanger" runat="server" class="alert alert-danger d-flex align-items-center p-5 mb-10"
                                visible="false">
                                <span class="svg-icon svg-icon-2hx svg-icon-danger me-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                        fill="none">
                                        <path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"
                                            fill="black">
                                        </path>
                                        <path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"
                                            fill="black">
                                        </path>
                                    </svg>
                                </span>
                                <div class="d-flex flex-column">
                                    <h4 class="mb-1 text-danger">Important</h4>
                                    <span id="msgDanger" runat="server"></span>
                                </div>
                                <button type="button" class="position-absolute position-sm-relative m-2 m-sm-0 top-0 end-0 btn btn-icon ms-sm-auto"
                                    data-bs-dismiss="alert">
                                    <i class="bi bi-x fs-1 text-danger"></i>
                                </button>
                            </div>

                            <div id="blockSuccess" runat="server" class="alert alert-primary d-flex align-items-center p-5 mb-10"
                                visible="false">
                                <span class="svg-icon svg-icon-2hx svg-icon-primary me-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                        fill="none">
                                        <path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"
                                            fill="black">
                                        </path>
                                        <path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"
                                            fill="black">
                                        </path>
                                    </svg>
                                </span>
                                <div class="d-flex flex-column">
                                    <h4 class="mb-1 text-primary">Success</h4>
                                    <span id="msgSuccess" runat="server"></span>
                                </div>
                                <button type="button" class="position-absolute position-sm-relative m-2 m-sm-0 top-0 end-0 btn btn-icon ms-sm-auto"
                                    data-bs-dismiss="alert">
                                    <i class="bi bi-x fs-1 text-primary"></i>
                                </button>
                            </div>
                            <asp:Repeater ID="rpQuestion" runat="server" OnItemDataBound="rpQuestion_ItemDataBound">
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
                                                        <%# Eval("Remarks") %>
                                                        <p><span class="text-primary">Solution : </span><%# Eval("Solution") %></p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <!--begin::col-->

                            <!--end::Col-->
                        </div>
                        <!--end::Row-->

                    </div>
                    <!--end::Container-->
                </div>
            </div>
        </div>
    </div>

    <!--end::Page-->
</asp:Content>

