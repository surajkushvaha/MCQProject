<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="AdminPanel_Account_EditProfile" %>

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
            <span id="msgSuccess" runat="server"></span>
        </div>
        <button type="button" class="position-absolute position-sm-relative m-2 m-sm-0 top-0 end-0 btn btn-icon ms-sm-auto"
            data-bs-dismiss="alert">
            <i class="bi bi-x fs-1 text-primary"></i>
        </button>
    </div>
    <div class="card mb-5 mb-xl-10">
        <!--begin::Card header-->
        <div class="card-header border-0 cursor-pointer" role="button" data-bs-toggle="collapse"
            data-bs-target="#kt_account_profile_details" aria-expanded="true" aria-controls="kt_account_profile_details">
            <!--begin::Card title-->
            <div class="card-title m-0">
                <h3 class="fw-bolder m-0">Profile Details</h3>
            </div>
            <!--end::Card title-->
        </div>
        <!--begin::Card header-->
        <!--begin::Content-->
        <div id="kt_account_settings_profile_details" class="collapse show">
            <!--begin::Form-->
            <div id="kt_account_profile_details_form" class="form fv-plugins-bootstrap5 fv-plugins-framework">
                <!--begin::Card body-->
                <div class="card-body border-top p-9">
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Profile Photo</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <!--begin::Image input-->
                            <div class="image-input image-input-outline" data-kt-image-input="true" style="background-image: url('../../Content/media/svg/avatars/blank.svg')">
                                <!--begin::Preview existing avatar-->
                                <div id="bgImage" runat="server" class="image-input-wrapper w-125px h-125px">
                                </div>
                                <!--end::Preview existing avatar-->
                                <!--begin::Label-->
                                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="change" data-bs-toggle="tooltip" title="" data-bs-original-title="Change avatar">
                                    <i class="bi bi-pencil-fill fs-7"></i>
                                    <!--begin::Inputs-->
                                    <asp:FileUpload ID="fuAvatar" runat="server" name="avatar" accept=".png, .jpg, .jpeg"/>
                                    <input type="hidden" name="avatar_remove"/>
                                    <!--end::Inputs-->
                                </label>
                                <!--end::Label-->
                                <!--begin::Cancel-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="" data-bs-original-title="Cancel avatar">
                                    <i class="bi bi-x fs-2"></i>
                                </span>
                                <!--end::Cancel-->
                                <!--begin::Remove-->
                                <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="" data-bs-original-title="Remove avatar">
                                    <i class="bi bi-x fs-2"></i>
                                </span>
                                <!--end::Remove-->
                            </div>
                            <!--end::Image input-->
                            <!--begin::Hint-->
                            <div class="form-text">Allowed file types: png, jpg, jpeg.</div>
                            <!--end::Hint-->
                        </div>
                        <!--end::Col-->
                    </div>
                                                    <asp:HiddenField ID="hfBgImg" runat="server" />

                    <asp:HiddenField ID="hfImgSize" runat="server" />
                    <asp:HiddenField ID="hfImgType" runat="server" />
                    <asp:HiddenField ID="hfImgExtension" runat="server" />
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Display Name</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <asp:TextBox  ID="txtDisplayName" runat="server" name="company" CssClass="form-control form-control-lg form-control-solid"/>
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Email</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg form-control-solid"
                                />
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">
                            <span >Contact Phone</span>
                            
                        </label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <asp:TextBox runat="server" ID="txtMobileNo" CssClass="form-control form-control-lg form-control-solid" />
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Address</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control form-control-lg form-control-solid"/>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                   <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Password</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control form-control-lg form-control-solid"/>
                         <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                        ErrorMessage="Enter Password to Edit Profile" ControlToValidate="txtPassword"
                        Display="Dynamic" Font-Bold="False" Font-Italic="True" 
                        ForeColor="#FF5E5E" ValidationGroup="vgRegister"></asp:RequiredFieldValidator>
                        </div>
                       
                        <!--end::Col-->
                    </div>
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">New Password</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <asp:TextBox runat="server" ID="txtNewPassword" TextMode="Password" CssClass="form-control form-control-lg form-control-solid"/>
                        </div>
                        <!--end::Col-->
                    </div>
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Confirm Password</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="form-control form-control-lg form-control-solid"/>
                       <asp:CompareValidator ID="cvConfirmPassword" runat="server"
                ErrorMessage="Password should be matched<br/>" ControlToCompare="txtNewPassword"
                ControlToValidate="txtConfirmPassword" Display="Dynamic"
                Font-Italic="True" ForeColor="#FF5E5E" ValidationGroup="vgRegister"></asp:CompareValidator>
                             </div>
                        <!--end::Col-->
                        
                    </div>
                </div>
                <!--end::Card body-->
                <!--begin::Actions-->
                <div class="card-footer d-flex justify-content-end py-6 px-9">
<asp:HyperLink ID="btnCancel" runat="server" CssClass="btn btn-light btn-active-light-primary me-2"
                        Text="Cancel" NavigateUrl="~/AdminPanel/Account/Profile.aspx" />                    
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary"
                Text="Save"   OnClick="btnSave_Click" ValidationGroup="vgRegister" />
            
                </div>
                <!--end::Actions-->
                <input type="hidden"><div></div>
            </div>
            <!--end::Form-->
        </div>
        <!--end::Content-->
    </div>
</asp:Content>

