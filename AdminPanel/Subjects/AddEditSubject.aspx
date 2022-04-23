<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="AddEditSubject.aspx.cs" Inherits="AdminPanel_Subjects_AddEditSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-xl-12">
        <div class="card card-flush h-lg-100" id="kt_contacts_main">
            <div class="card-header pt-7" id="kt_chat_contacts_header">
                <div class="card-title">
                    <span class="svg-icon svg-icon-1 me-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none">
                            <path d="M20 14H18V10H20C20.6 10 21 10.4 21 11V13C21 13.6 20.6 14 20 14ZM21 19V17C21 16.4 20.6 16 20 16H18V20H20C20.6 20 21 19.6 21 19ZM21 7V5C21 4.4 20.6 4 20 4H18V8H20C20.6 8 21 7.6 21 7Z"
                                fill="black">
                            </path>
                            <path opacity="0.3" d="M17 22H3C2.4 22 2 21.6 2 21V3C2 2.4 2.4 2 3 2H17C17.6 2 18 2.4 18 3V21C18 21.6 17.6 22 17 22ZM10 7C8.9 7 8 7.9 8 9C8 10.1 8.9 11 10 11C11.1 11 12 10.1 12 9C12 7.9 11.1 7 10 7ZM13.3 16C14 16 14.5 15.3 14.3 14.7C13.7 13.2 12 12 10.1 12C8.10001 12 6.49999 13.1 5.89999 14.7C5.59999 15.3 6.19999 16 7.39999 16H13.3Z"
                                fill="black">
                            </path>
                        </svg>
                    </span>
                    <h2><asp:Label ID="lblMode" runat="server">Add</asp:Label> Subject</h2>
                </div>
            </div>
            <div class="card-body pt-5">
                <div id="kt_ecommerce_settings_general_form" class="form fv-plugins-bootstrap5 fv-plugins-framework">
                    <div class="fv-row mb-7 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold form-label mt-3">
                            <span class="required">Subject Name</span>
                            <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Enter the Subject Name." aria-label="Enter the Subject Name.">
                            </i>
                        </label>
                        <asp:TextBox ID="txtSubjectName" runat="server"  CssClass="form-control form-control-solid" name="Subject_Name" value=""/>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <div class="fv-row mb-7">
                        <label class="fs-6 fw-bold form-label mt-3">
                            <span>Remarks</span>
                            <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Enter the subject remarks." aria-label="Enter the subject remarks.">
                            </i>
                        </label>
                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control form-control-solid" name="Remarks" value=""/>
                    </div>
                    <div class="row row-cols-1 row-cols-sm-2 rol-cols-md-1 row-cols-lg-2">
                        <div class="col" data-select2-id="select2-data-123-07xa">
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="required">Exam Name</span>
                                    <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Select the Exam name." aria-label="Select the Exam name.">
                            </i>
                                </label>
                                <div class="w-100" data-select2-id="select2-data-122-g4yb">
                                    <asp:DropDownList ID="ddlExam" runat="server" class="form-select form-select-solid" name="Exam">                                        
                                    </asp:DropDownList>
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="fv-row mb-7">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span>Visibility</span>
                                    <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                        data-bs-original-title="Select the Visibility." aria-label="Select the Visibility.">
                                    </i>
                                </label>
                                <div class="d-flex flex-stack w-lg-50">
                                    <div class="me-5">
                                        <label class="fs-8 fw-bold form-label">Are you want to Visible for everyone?</label>
                                    </div>
                                    <label class="form-check form-switch form-check-custom form-check-solid">
                                        <input id="cbVisible" runat="server" class="form-check-input" type="checkbox" value="1" checked="checked" />
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="separator mb-6"></div>
                    <div class="d-flex justify-content-end">
                        <asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Subject/SubjectList.aspx" data-kt-contacts-type="cancel" class="btn btn-light me-3">Cancel</asp:HyperLink>
                        <asp:Button runat="server" ID="btnSave" Text="Save" class="btn btn-primary" OnClick="btnSave_Click">
                            
                        </asp:Button>
                            <span class="indicator-progress">Please wait...
							    <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                            </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

