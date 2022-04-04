<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="UserPanel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="kt_carousel_2_carousel" class="carousel carousel-custom slide mb-4" data-bs-ride="carousel"
        data-bs-interval="8000">
        <!--begin::Heading-->
        <div class="d-flex align-items-center justify-content-between flex-wrap">
            <!--begin::Label-->
            <span class="fs-2 fw-bolder pe-2">GEMS - Government Exams & Aptitude MCQ</span>
            <!--end::Label-->

            <!--begin::Carousel Indicators-->
            <ol class="p-0 m-0 carousel-indicators carousel-indicators-bullet">
                <li data-bs-target="#kt_carousel_2_carousel" data-bs-slide-to="0" class="ms-1 active">
                </li>
                <li data-bs-target="#kt_carousel_2_carousel" data-bs-slide-to="1" class="ms-1"></li>
            </ol>
            <!--end::Carousel Indicators-->
        </div>
        <!--end::Heading-->

        <!--begin::Carousel-->
        <div class="carousel-inner pt-8 rounded">
            <!--begin::Item-->
            <div class="carousel-item rounded active">
                <div class="card shadow-sm bg-primary">

                    <div class="card-body">
                        <h3 class="card-title text-white">Prepare MCQ</h3>

                        <p class=" text-white">Lorem Ipsum is simply dummy text...</p>

                        <button class="btn btn-light-primary ">Explore</button>
                    </div>

                </div>
            </div>
            <!--end::Item-->

            <!--begin::Item-->
            <div class="carousel-item rounded">
                <div class="card shadow-sm bg-primary">

                    <div class="card-body">
                        <h3 class="card-title text-white">Take a Quiz</h3>

 <p class=" text-white">Lorem Ipsum is simply dummy text...</p>

                        <button class="btn btn-light-primary ">Explore</button>                    </div>

                </div>
            </div>
            <!--end::Item-->

           
        </div>
        <!--end::Carousel-->
    </div>
    <div class="row g-5 g-xl-8">
        <!--begin::Col-->
        <div class="col-xl-4">
            <!--begin::Mixed Widget 1-->
            <div class="card card-xl-stretch mb-xl-8">

                <!--begin::Body-->
                <div class="card-body p-0">

                    <!--begin::Header-->
                    <style>
                        #diffrentBoy {
                            background-image: url("data:image/svg+xml, %3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 320'%3E%3Cpath fill='%230099ff' fill-opacity='1' d='M0 64L34.3 96C68.6 128 137 192 206 197.3C274.3 203 343 149 411 128C480 107 549 117 617 144C685.7 171 754 213 823 240C891.4 267 960 277 1029 245.3C1097.1 213 1166 139 1234 122.7C1302.9 107 1371 149 1406 170.7L1440 192L1440 320L1405.7 320C1371.4 320 1303 320 1234 320C1165.7 320 1097 320 1029 320C960 320 891 320 823 320C754.3 320 686 320 617 320C548.6 320 480 320 411 320C342.9 320 274 320 206 320C137.1 320 69 320 34 320L0 320Z'%3E%3C/path%3E%3C/svg%3E");
                            background-repeat: no-repeat;
                            background-size: cover;
                        }
                    </style>
                    <div id="diffrentBoy" class="px-9 pt-7 card-rounded h-275px w-100 ">

                        <!--begin::Heading-->
                        <div class="d-flex flex-stack">
                            <h3 class="m-0 text-primary fw-bolder fs-3">Exam Name</h3>

                        </div>
                        <!--end::Heading-->
                        <!--begin::Balance-->
                        <div class="d-flex text-center flex-column text-primary pt-8">

                            <span class="fw-bold fs-7">Total MCQs</span>
                            <span class="fw-bolder fs-2x pt-1">1000</span>
                        </div>

                        <!--end::Balance-->

                    </div>
                    <!--end::Header-->
                    <!--begin::Items-->
                    <div class="bg-body shadow-sm card-rounded mx-9 mb-9 px-6 py-9 position-relative z-index-1"
                        style="margin-top: -100px">
                       
                        <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       <!--begin::Item-->
                        <div class="d-flex align-items-center mb-6">
                            <!--begin::Symbol-->
                            <div class="symbol symbol-45px w-40px me-5">
                                <span class="symbol-label bg-lighten">
                                    <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                    <span class="svg-icon svg-icon-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                            fill="none">
                                            <rect x="2" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="2" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="13" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                            <rect opacity="0.4" x="2" y="13" width="9" height="9" rx="2" fill="blue"></rect>
                                        </svg>
                                    </span>
                                    <!--end::Svg Icon-->
                                </span>
                            </div>
                            <!--end::Symbol-->
                            <!--begin::Description-->
                            <a href="#" class="d-flex text-primary-800 text-hover-danger align-items-center flex-wrap w-100">
                                <!--begin::Title-->
                                <div class="mb-1 pe-3 flex-grow-1">
                                    <span  class="fs-5  fw-bolder">Subject Name</span>                            
                                </div>
                                <!--end::Title-->
                                <!--begin::Label-->
                                <div class="d-flex align-items-center">
                                    <div class="fw-bolder fs-5 pe-1"><span class="fas fa-arrow-right"></span></div>
                                    

                                </div>
                                <!--end::Label-->
                            </a>
                            <!--end::Description-->
                        </div>
                        <!--end::Item-->
                       
                       
                       
                    </div>
                    <!--end::Items-->
                </div>
                <!--end::Body-->
            </div>
            <!--end::Mixed Widget 1-->
        </div>
        <!--end::Col-->
       
    </div>

</asp:Content>

