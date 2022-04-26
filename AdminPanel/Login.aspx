<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="AdminPanel_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href="../../AdminPanel/" />
    <title>GEAMs - Government Exams Aptitude & MCQ</title>
    <meta charset="utf-8" />
    <meta name="description" content="#" />
    <meta name="keywords" content="#" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <link href="~/Content/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <style>
        .unique {
            position: fixed;
            margin: 0% -100%;
            height: 100vh;
            width: 100%;
            text-align: center;
            animation: fadeInAnimation ease 3s;
            animation-iteration-count: 1;
            background: #fff;
            transition: all 0.5s;
            background-color: #0099ff;
            z-index: 9999;
        }

        @keyframes fadeInAnimation {
            0% {
                margin: 0;
            }

            50% {
                background-color: #0000ff;
            }

            100% {
                background-color: #0099ff;
            }
        }
    </style>
</head>
<body id="kt_body" class="bg-body">
    <div class="unique">
    </div>

    <div class="d-flex flex-column flex-root">
        <div class="d-flex flex-column flex-lg-row flex-column-fluid">
            <div class="d-flex flex-column flex-lg-row-auto w-xl-600px positon-xl-relative" style="background-color: #e9f6ff">
                <div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px scroll-y">
                    <div class="d-flex flex-row-fluid flex-column text-center p-10 pt-lg-20">
                        <div class="py-9 mb-5">
                            <img alt="Logo" src="../Content/media/illustrations/sketchy-1/17.png" class="h-60px" />
                        </div>
                        <h1 class="fw-bolder fs-2qx pb-5 pb-md-10" style="color: #0099ff;">Welcome to AdminPanel
                        </h1>
                    </div>
                    <div class="d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px"
                        style="background-image: url('../Content/media/illustrations/sketchy-1/17.png')">
                    </div>
                </div>
            </div>
            <div class="d-flex flex-column flex-lg-row-fluid py-10">
                <div class="d-flex flex-center flex-column flex-column-fluid">
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
                    <div class="w-lg-500px p-10 p-lg-15 mx-auto">
                        <form class="form w-100" id="kt_sign_in_form" runat="server">
                            <div class="text-center mb-10">
                                <h1 class="text-dark mb-3">Sign In to MCQProject</h1>

                                <%-- <div class="text-gray-400 fw-bold fs-4">
                                    New Here?
									<a href="../../demo1/dist/authentication/layouts/aside/sign-up.html" class="link-primary fw-bolder">
                                        Create an Account</a>
                                </div>--%>
                            </div>
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                <label class="fs-6 fw-bold form-label mt-3">
                                    <span class="required">Email</span>
                                    <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                        data-bs-original-title="Enter the Email." aria-label="Enter the Email."></i>
                                </label>
                                <asp:TextBox runat="server" ID="txtEmail" class="form-control form-control-solid"
                                    name="Email" value="" />
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            <div class="fv-row mb-7 fv-plugins-icon-container">
                                 <div class="d-flex flex-stack mb-2">
                                    <label class="fs-6 fw-bold form-label mt-3">
                                        <span class="required">Password</span>
                                        <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                            data-bs-original-title="Enter the Password." aria-label="Enter the Password.">
                                        </i>
                                    </label>
                                    <div class="link-primary fs-6 fw-bolder">
                                        Forgot Password ?
                                    </div>
                                </div>
                                <asp:TextBox runat="server" ID="txtPassword" class="form-control form-control-solid"
                                    name="Password" value="" />
                                <div class="fv-plugins-message-container invalid-feedback"></div>
                            </div>
                            
                            <div class="text-center">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-lg btn-primary w-100 mb-5"
                        Text="Continue" onclick="btnLogin_Click"/>
                                   <span class="indicator-label"></span>
                                    <span class="indicator-progress">Please wait...
										<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src='<%= ResolveUrl("~/Content/plugins/global/plugins.bundle.js") %>'></script>
    <script src='<%= ResolveUrl("~/Content/js/scripts.bundle.js")%>'></script>
</body>
</html>
