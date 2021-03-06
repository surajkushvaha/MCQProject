<%@ Page Title="" Language="C#" MasterPageFile="~/Content/UserPanel.master" AutoEventWireup="true"
    CodeFile="Feedback.aspx.cs" Inherits="UserPanel_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row gy-5 g-xl-8">
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
    <div class="card">
        <!--begin::Body-->
        <div class="card-body p-lg-17">
            <!--begin::Row-->
            <div class="row mb-3">
                <!--begin::Col-->
                <div class="col-md-6 pe-lg-10">
                    <!--begin::Form-->
                    <div class="form mb-15 fv-plugins-bootstrap5 fv-plugins-framework" id="kt_contact_form">
                        <h1 class="fw-bolder text-dark mb-9">Give Us Your Valuable Feedback</h1>
                        <!--begin::Input group-->
                        <div class="row mb-5">
                            <!--begin::Col-->
                            <div class="col-md-6 fv-row fv-plugins-icon-container">
                                <!--begin::Label-->
                                <label class="fs-5 fw-bold mb-2 required">Name</label>
                                <!--end::Label-->
                                <!--begin::Input-->
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-control-solid" placeholder="" name="name" />
                                <!--end::Input-->
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                            <!--begin::Col-->
                            <div class="col-md-6 fv-row fv-plugins-icon-container">
                                <!--end::Label-->
                                <label class="fs-5 fw-bold mb-2 required">Email</label>
                                <!--end::Label-->
                                <!--end::Input-->
                                <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" type="text" class="form-control form-control-solid" placeholder="" name="email" />
                                <!--end::Input-->
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <!--end::Col-->
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="d-flex flex-column mb-5 fv-row">
                            <!--begin::Label-->
                            <label class="fs-5 fw-bold mb-2 required">Subject</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <asp:TextBox  runat="server" ID="txtSubject" class="form-control form-control-solid" placeholder="" name="subject" />
                        </div>
                        <div class="d-flex flex-column mb-10 fv-row fv-plugins-icon-container">
                            <label class="fs-6 fw-bold mb-2 required">Message</label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control form-control-solid" Rows="6" name="message" TextMode="MultiLine" placeholder=""></asp:TextBox>
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <asp:Button runat="server"  CssClass="btn btn-primary" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Send Feeddback">
                        </asp:Button>
                        <div></div>
                    </div>
                </div>
                <div class="col-md-6 ps-lg-10">
                    <div id="kt_contact_map" class="w-100 rounded mb-2 mb-lg-0 mt-2 leaflet-container leaflet-touch leaflet-retina leaflet-fade-anim leaflet-grab leaflet-touch-drag leaflet-touch-zoom"
                        style="height: 486px; position: relative;" tabindex="0">
                        <iframe width="100%" height="100%" class="absolute inset-0" 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118083.18443359637!2d70.7332460004713!3d22.34987104391885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959c7a3ba783351%3A0x28dc6eea8324e9d2!2sDarshan%20University!5e0!3m2!1sen!2sin!4v1650643414116!5m2!1sen!2sin"></iframe>

                    </div>
                </div>
            </div>
            <div class="row g-5 mb-5 mb-lg-15">
                <div class="col-sm-6 pe-lg-10">
                    <div class="text-center bg-light card-rounded d-flex flex-column justify-content-center p-10 h-100">
                                                <span class="svg-icon svg-icon-3tx svg-icon-primary">

<svg  width="24" height="24" viewBox="0 0 20 20">
							<path d="M13.372,1.781H6.628c-0.696,0-1.265,0.569-1.265,1.265v13.91c0,0.695,0.569,1.265,1.265,1.265h6.744c0.695,0,1.265-0.569,1.265-1.265V3.045C14.637,2.35,14.067,1.781,13.372,1.781 M13.794,16.955c0,0.228-0.194,0.421-0.422,0.421H6.628c-0.228,0-0.421-0.193-0.421-0.421v-0.843h7.587V16.955z M13.794,15.269H6.207V4.731h7.587V15.269z M13.794,3.888H6.207V3.045c0-0.228,0.194-0.421,0.421-0.421h6.744c0.228,0,0.422,0.194,0.422,0.421V3.888z"></path>
						</svg>                                                    </span>
                        <h1 class="text-dark fw-bolder my-5">Let’s Speak</h1>
                        <div class="text-gray-700 fw-bold fs-2">1 (234) 567-8901</div>

                    </div>
                </div>
                <div class="col-sm-6 ps-lg-10">
                    <div class="text-center bg-light card-rounded d-flex flex-column justify-content-center p-10 h-100">
                        <span class="svg-icon svg-icon-3tx svg-icon-primary">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                fill="none">
                                <path opacity="0.3" d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z"
                                    fill="black"></path>
                                <path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z"
                                    fill="black"></path>
                            </svg>
                        </span>
                        <h1 class="text-dark fw-bolder my-5">Our Head Office</h1>
                        <div class="text-gray-700 fs-3 fw-bold">Rajkot - Morbi Hwy, Rajkot, Gujarat 363650
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

