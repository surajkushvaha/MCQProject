<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="AddEditTopic.aspx.cs" Inherits="AdminPanel_Topics_AddEditTopic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div id="blockDanger" runat="server" class="alert alert-danger d-flex align-items-center p-5 mb-10" visible="false">
        <span class="svg-icon svg-icon-2hx svg-icon-danger me-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                fill="none">
                <path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"
                    fill="black"></path>
                <path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"
                    fill="black"></path>
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

    <div id="blockSuccess" runat="server" class="alert alert-primary d-flex align-items-center p-5 mb-10" visible="false">
        <span class="svg-icon svg-icon-2hx svg-icon-primary me-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                fill="none">
                <path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z"
                    fill="black"></path>
                <path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z"
                    fill="black"></path>
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
                    <h2><asp:Label ID="lblMode" runat="server">Add</asp:Label> Topic</h2>
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
                                    <asp:DropDownList ID="ddlExam" runat="server" class="form-select form-select-solid" AutoPostBack="true" name="Exam" OnSelectedIndexChanged="ddlExam_SelectedIndexChanged">                                        
                                    </asp:DropDownList>
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                        </div>
                        <div class="col" data-select2-id="select2-data-123-07xa">
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="required">Subject Name</span>
                                </label>
                                <div class="w-100" data-select2-id="select2-data-122-g4yb">
                                    <asp:DropDownList ID="ddlSubject" runat="server" class="form-select form-select-solid" name="Subject">                                        
                                    </asp:DropDownList>
                                </div>
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                        </div>
                    </div>
                    <div class="fv-row mb-7 fv-plugins-icon-container">
                        <label class="fs-6 fw-bold form-label mt-3">
                            <span class="required">Topic Name</span>
                            <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Enter the contact's name." aria-label="Enter the contact's name.">
                            </i>
                        </label>
                        <asp:TextBox ID="txtTopicName" runat="server"  CssClass="form-control form-control-solid" name="Topic_Name" value=""/>
                        <div class="fv-plugins-message-container invalid-feedback"></div>
                    </div>
                    <div class="row row-cols-1 row-cols-sm-2 rol-cols-md-1 row-cols-lg-2">
                        <div class="col">
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span>Remarks</span>
                                    <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                        data-bs-original-title="Enter the contact's email." aria-label="Enter the contact's email.">
                                    </i>
                                </label>
                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control form-control-solid" name="Remarks" value=""/>
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
                                        <input id="cbVisible" runat="server" class="form-check-input" type="checkbox" value="1"  />
                                    </label>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="separator mb-6"></div>
                    <div class="d-flex justify-content-end">
                        <asp:HyperLink runat="server" NavigateUrl="~/AdminPanel/Topics/TopicList.aspx" data-kt-contacts-type="cancel" class="btn btn-light me-3">Cancel</asp:HyperLink>
                        <asp:Button runat="server" ID="btnSave" Text="Save" class="btn btn-primary" OnClick="btnSave_Click">
                            
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

