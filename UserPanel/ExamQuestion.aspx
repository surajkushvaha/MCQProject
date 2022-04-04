<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true"
    CodeFile="ExamQuestion.aspx.cs" Inherits="UserPanel_ExamQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--begin::Aside mobile toggle-->
    <div class="d-flex align-items-center d-lg-none  position-absolute  fw-bolder z-index-3  top-50 start-0   gap-2" style="transform:rotate(180deg)"     title="Show aside menu">
        <div class="btn btn-icon btn-active-light-primary w-20px h-20px w-md-40px h-md-40px"
            id="kt_aside_mobile_toggle">
            <!--begin::Svg Icon | path: icons/duotune/abstract/abs015.svg-->
            <span class="svg-icon " style="z-index:1000;">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAACKElEQVRoge2Zu5ITQQxFj/gDQvNhEJDwWGac7dNrMhzifRky9+zySPkyZ6SQgAi8QNXuqD3q0RRV1Nz8tu5Vq9U9GhgxYsSI/xtJFzT6dnDOIEi6IKmSVDsLcnKkt8icEHhzJ9qSSl5Hch70EukRAqB8D+UwxA5YQuCMWuZOzjm1nObCxRqIFK9cMJXZrpBxBkqyaHMuqeWkS9gYAyVZtMWvqOWoa+j+BmLFv6OWQ0/4fgZKSsA2/J6pHHgllBuwhAhXVHLs4kBDxRQR9cooMxApXrmmpi4Rvw3pRcnhszk3VFSl4sF7E0eKFz6wKc/832W6oqRz2JyPbHjFQn52jm+gm4FY8Z/YsBchHrqUUK7tVfjKRvkcKR527UBJ27M5X3jIUx7LjxKhFvI7oHxzr1jC6YG8gaksUdo+JioSK1Tv76DNecJXblho6DfI7sUsQcI+DVdOzjMmsSa6LWRn9YCkKyfnOROuo0x0XyRvwrcT8IJHNBEmfAvYgg7dJpSXTEit58gBfwZyJhq9dHL2SP1MlLtf6xzh/twm9yK1OD2e0+U1aJfGEUkvXJzfbbkA/Q6RLeiYtZ67OMK+2dEy6N/KbEEnbhO5jmYg5kLJmUh65uJsO1p7CbYg7lq3Bc1IunRy7BK8g/jRot1p7Omczdk5Wowf7tpZPb19ans4M5Nzi2Gm07Ygu8+XcAbHWud/flYkbfvIieEMiu0fl2wZhHBGjBgx4p/gF8kJYfbbc1z2AAAAAElFTkSuQmCC"/>
            </span>
            <!--end::Svg Icon-->
        </div>
    </div>
    <!--end::Aside mobile toggle-->
    <!--begin::Page-->
    <div class="page d-flex flex-row flex-column-fluid">
        <!--begin::Aside-->
        <div id="kt_aside" class="aside bg-white rounded aside-hoverable" data-kt-drawer="true"
            data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}"
            data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}"
            data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle">

            <!--begin::Aside menu-->
            <div class="aside-menu flex-column-fluid">
                <!--begin::Aside Menu-->
                <div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true"
                    data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto"
                    data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu"
                    data-kt-scroll-offset="0" style="height: 161px;">
                    <!--begin::Menu-->
                    <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500"
                        id="#kt_aside_menu" data-kt-menu="true" data-kt-menu-expand="false">

                        <div class="menu-item">
                            <div class="menu-content pt-5 pb-2">
                                <span class="menu-section text-muted text-uppercase fs-4 ls-1">Subjects</span>
                            </div>
                        </div>

                        <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                            <span class="menu-link">
                                <span class="menu-icon">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen022.svg-->
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
                                    <!--end::Svg Icon-->
                                </span>
                                <span class="menu-title">Subject Name</span>
                                <span class="menu-arrow"></span>
                            </span>
                            <div class="menu-sub menu-sub-accordion menu-active-bg">
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/lists.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">All</span>
                                    </a>
                                </div>
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/statistics.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">Topic Name</span>
                                    </a>
                                </div>
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/charts.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">Charts</span>
                                    </a>
                                </div>
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/mixed.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">Mixed</span>
                                    </a>
                                </div>
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/tables.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">Tables</span>
                                    </a>
                                </div>
                                <div class="menu-item">
                                    <a class="menu-link" href="../../demo1/dist/widgets/feeds.html">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">Feeds</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--end::Menu-->
                </div>
                <!--end::Aside Menu-->
            </div>
            <!--end::Aside menu-->

        </div>
        <!--end::Aside-->
        <div class="wrapper d-flex flex-column flex-row-fluid pt-0" id="kt_wrapper">
            <div class="content d-flex flex-column flex-column-fluid pt-0" id="kt_content">
                <div class="post d-flex flex-column-fluid" id="kt_post">
                    <!--begin::Container-->
                    <div id="kt_content_container" class="container-xxl">
                        <!--begin::Row-->
                        <div class="row gy-5 g-xl-8">

                            <!--begin::Col-->
                            <div class="col-xl-12">
                                <!--begin::List Widget 5-->
                                <div class="card shadow-sm">
                                    <div class="card-header d-flex justify-content-start">
                                        <h2 class="card-title text-primary">Question 1</h2>
                                        <h5 class="card-title">Lorem Ipsum sdcxnzvjn  sgvn fd lorem jbghjfvtygc hfgvhgf6yfvfvb
                                            bfvghvyf</h5>

                                    </div>
                                    <div class="card-body pb-0">
                                        <ul class="list-group-flush">
                                            <li class="list-group-item">A)  ABCDE</li>
                                            <li class="list-group-item">B)  ABCDE</li>
                                            <li class="list-group-item">C)  ABCDE</li>
                                            <li class="list-group-item">D)  ABCDE</li>
                                            <li class="list-group-item">E)  ABCDE</li>

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
                                                Lorem Ipsum is simply dummy text...
                                                <p><span class="text-primary">Solution : </span> No Solution Available</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <!--end: List Widget 5-->
                            </div>
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

