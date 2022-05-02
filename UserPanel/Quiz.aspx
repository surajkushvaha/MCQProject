<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true"
    CodeFile="Quiz.aspx.cs" Inherits="UserPanel_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

    <div class="col-xl-12">
        <div class="card card-flush h-lg-100" id="kt_contacts_main">
            <div class="card-header pt-7" id="kt_chat_contacts_header">
                <div class="card-title">
                    <h2>Select & Give Trial Exam</h2>

                </div>

            </div>
            <div class="card-body pt-5">
                <div id="kt_ecommerce_settings_general_form" class="form fv-plugins-bootstrap5 fv-plugins-framework">
                    <div class="row row-cols-1 row-cols-sm-2 rol-cols-md-1 row-cols-lg-2">
                        <div class="col" data-select2-id="select2-data-123-07xa">
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="required">Exam Name</span>
                                </label>
                                <div class="w-100" data-select2-id="select2-data-122-g4yb">
                                    <asp:DropDownList ID="ddlExam" runat="server" class="form-select form-select-solid"
                                        AutoPostBack="true" name="Exam" OnSelectedIndexChanged="ddlExam_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                        </div>
                        <div class="col" data-select2-id="select2-data-123-07xa">
                            <div runat="server" id="subjectDD" class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="">Subject Name</span>
                                </label>
                                <div class="w-100" data-select2-id="select2-data-122-g4yb">
                                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-select form-select-solid"
                                        name="Subject">
                                    </asp:DropDownList>
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row gy-5 g-xl-8">
                        <div class="col-xl-12">
                            <div class="card ">
                                 <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="required">Choose Number of MCQ</span>
                                </label>
                                <div class="card-body">
                                    <label class="d-flex flex-stack mb-5 cursor-pointer">
                                        <span class="d-flex align-items-center me-2">
                                            <span class="symbol symbol-50px me-6">
                                                <span class="symbol-label bg-light-primary">
                                                    <span class="svg-icon svg-icon-1 svg-icon-primary">25
                                                    </span>
                                                </span>
                                            </span>
                                            <span class="d-flex flex-column">
                                                <span class="fw-bolder fs-6">25 MCQ</span>
                                                <span class="fs-7 text-muted">Timing: 30 Min</span>
                                            </span>
                                        </span>
                                        <span class="form-check form-check-custom form-check-solid">
                                            <input id="rd1" runat="server" class="form-check-input" type="radio" name="category" value="25" />
                                        </span>
                                    </label>
                                    <label class="d-flex flex-stack mb-5 cursor-pointer">
                                        <span class="d-flex align-items-center me-2">
                                            <span class="symbol symbol-50px me-6">
                                                <span class="symbol-label bg-light-danger">
                                                    <span class="svg-icon svg-icon-1 svg-icon-danger">50
                                                    </span>
                                                </span>
                                            </span>
                                            <span class="d-flex flex-column">
                                                <span class="fw-bolder fs-6">50 MCQ</span>
                                                <span class="fs-7 text-muted">Timing: 60Min</span>
                                            </span>
                                        </span>
                                        <span class="form-check form-check-custom form-check-solid">
                                            <input id="rd2" runat="server" class="form-check-input" type="radio" name="category" value="50" />
                                        </span>
                                    </label>
                                    <label class="d-flex flex-stack cursor-pointer">
                                        <span class="d-flex align-items-center me-2">
                                            <span class="symbol symbol-50px me-6">
                                                <span class="symbol-label bg-light-danger">
                                                    <span class="svg-icon svg-icon-1 svg-icon-danger">100
                                                    </span>
                                                </span>
                                            </span>
                                            <span class="d-flex flex-column">
                                                <span class="fw-bolder fs-6">100 MCQ</span>
                                                <span class="fs-7 text-muted">Timing: 120Min</span>
                                            </span>
                                        </span>
                                        <span class="form-check form-check-custom form-check-solid">
                                            <input id="rd3" runat="server" class="form-check-input" type="radio" name="category" value="100" />
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="separator mb-6"></div>
                <div class="d-flex justify-content-end">

                    <asp:Button runat="server" ID="btnSave" Text="Next" class="btn btn-primary" OnClick="btnSave_Click">
                    </asp:Button>
                    <span class="indicator-progress">Please wait...
							    <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                    </span>
                </div>
                <div></div>
            </div>
        </div>
    </div>


</asp:Content>

