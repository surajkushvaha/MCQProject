<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="UserPanel_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                    <div class="card-header">
                                        <h3 class="card-title">Title</h3>

                                    </div>
                                    <div class="card-body">
                                        <label class="d-flex flex-stack mb-5 cursor-pointer">
                                            <!--begin:Label-->
                                            <span class="d-flex align-items-center me-2">
                                                <!--begin:Icon-->
                                                <span class="symbol symbol-50px me-6">
                                                    <span class="symbol-label bg-light-primary">
                                                        <!--begin::Svg Icon | path: icons/duotune/maps/map004.svg-->
                                                        <span class="svg-icon svg-icon-1 svg-icon-primary">A
                                                        </span>
                                                        <!--end::Svg Icon-->
                                                    </span>
                                                </span>
                                                <!--end:Icon-->

                                                <!--begin:Info-->
                                                <span class="d-flex flex-column">
                                                    <span class="fw-bolder fs-6">Quick Online Courses</span>
                                                    <span class="fs-7 text-muted">Creating a clear text structure is just one SEO</span>
                                                </span>
                                                <!--end:Info-->
                                            </span>
                                            <!--end:Label-->

                                            <!--begin:Input-->
                                            <span class="form-check form-check-custom form-check-solid">
                                                <input class="form-check-input" type="radio" name="category" value="1" />
                                            </span>
                                            <!--end:Input-->
                                        </label>
                                        <!--end::Option-->

                                        <!--begin:Option-->
                                        <label class="d-flex flex-stack mb-5 cursor-pointer">
                                            <!--begin:Label-->
                                            <span class="d-flex align-items-center me-2">
                                                <!--begin:Icon-->
                                                <span class="symbol symbol-50px me-6">
                                                    <span class="symbol-label bg-light-danger">
                                                        <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                                        <span class="svg-icon svg-icon-1 svg-icon-danger">B
                                                        </span>
                                                        <!--end::Svg Icon-->
                                                    </span>
                                                </span>
                                                <!--end:Icon-->

                                                <!--begin:Info-->
                                                <span class="d-flex flex-column">
                                                    <span class="fw-bolder fs-6">Face to Face Discussions</span>
                                                    <span class="fs-7 text-muted">Creating a clear text structure is just one aspect</span>
                                                </span>
                                                <!--end:Info-->
                                            </span>
                                            <!--end:Label-->

                                            <!--begin:Input-->
                                            <span class="form-check form-check-custom form-check-solid">
                                                <input class="form-check-input" type="radio" name="category" value="2" />
                                            </span>
                                            <!--end:Input-->
                                        </label>
                                        <!--end::Option-->

                                        <!--begin:Option-->
                                        <label class="d-flex flex-stack cursor-pointer">
                                            <!--begin:Label-->
                                            <span class="d-flex align-items-center me-2">
                                                <!--begin:Icon-->
                                                <span class="symbol symbol-50px me-6">
                                                    <span class="symbol-label bg-light-success">
                                                        <!--begin::Svg Icon | path: icons/duotune/general/gen013.svg-->
                                                        <span class="svg-icon svg-icon-1 svg-icon-danger">C
                                                        </span>
                                                        <!--end::Svg Icon-->
                                                    </span>
                                                </span>
                                                <!--end:Icon-->

                                                <!--begin:Info-->
                                                <span class="d-flex flex-column">
                                                    <span class="fw-bolder fs-6">Full Intro Training</span>
                                                    <span class="fs-7 text-muted">Creating a clear text structure copywriting</span>
                                                </span>
                                                <!--end:Info-->
                                            </span>
                                            <!--end:Label-->

                                            <!--begin:Input-->
                                            <span class="form-check form-check-custom form-check-solid">
                                                <input class="form-check-input" type="radio" name="category" value="3" />
                                            </span>
                                            <!--end:Input-->
                                        </label>
                                        <!--end::Option-->
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
</asp:Content>

