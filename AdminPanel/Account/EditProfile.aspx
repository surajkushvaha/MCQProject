﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="AdminPanel_Account_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
            <form id="kt_account_profile_details_form" class="form fv-plugins-bootstrap5 fv-plugins-framework"
                novalidate="novalidate">
                <!--begin::Card body-->
                <div class="card-body border-top p-9">
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Avatar</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <!--begin::Image input-->
                            <div class="image-input image-input-outline" data-kt-image-input="true" style="background-image: url('assets/media/svg/avatars/blank.svg')">
                                <!--begin::Preview existing avatar-->
                                <div class="image-input-wrapper w-125px h-125px" style="background-image: url(assets/media/avatars/300-1.jpg)">
                                </div>
                                <!--end::Preview existing avatar-->
                                <!--begin::Label-->
                                <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow"
                                    data-kt-image-input-action="change" data-bs-toggle="tooltip" title="" data-bs-original-title="Change avatar">
                                    <i class="bi bi-pencil-fill fs-7"></i>
                                    <!--begin::Inputs-->
                                    <input type="file" name="avatar" accept=".png, .jpg, .jpeg">
                                    <input type="hidden" name="avatar_remove">
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
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Full Name</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8">
                            <!--begin::Row-->
                            <div class="row">
                                <!--begin::Col-->
                                <div class="col-lg-6 fv-row fv-plugins-icon-container">
                                    <input type="text" name="fname" class="form-control form-control-lg form-control-solid mb-3 mb-lg-0"
                                        placeholder="First name" value="Max">
                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                </div>
                                <!--end::Col-->
                                <!--begin::Col-->
                                <div class="col-lg-6 fv-row fv-plugins-icon-container">
                                    <input type="text" name="lname" class="form-control form-control-lg form-control-solid"
                                        placeholder="Last name" value="Smith">
                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                </div>
                                <!--end::Col-->
                            </div>
                            <!--end::Row-->
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Company</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <input type="text" name="company" class="form-control form-control-lg form-control-solid"
                                placeholder="Company name" value="Keenthemes">
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">
                            <span class="required">Contact Phone</span>
                            <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Phone number must be active" aria-label="Phone number must be active">
                            </i>
                        </label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <input type="tel" name="phone" class="form-control form-control-lg form-control-solid"
                                placeholder="Phone number" value="044 3276 454 935">
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Company Site</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row">
                            <input type="text" name="website" class="form-control form-control-lg form-control-solid"
                                placeholder="Company website" value="keenthemes.com">
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">
                            <span class="required">Country</span>
                            <i class="fas fa-exclamation-circle ms-1 fs-7" data-bs-toggle="tooltip" title=""
                                data-bs-original-title="Country of origination" aria-label="Country of origination">
                            </i>
                        </label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <select name="country" aria-label="Select a Country" data-control="select2" data-placeholder="Select a country..."
                                class="form-select form-select-solid form-select-lg fw-bold select2-hidden-accessible"
                                data-select2-id="select2-data-10-dvii" tabindex="-1" aria-hidden="true">
                                <option value="" data-select2-id="select2-data-12-341w">Select a Country...</option>
                                <option data-kt-flag="flags/afghanistan.svg" value="AF">Afghanistan</option>
                                <option data-kt-flag="flags/aland-islands.svg" value="AX">Aland Islands</option>
                                <option data-kt-flag="flags/albania.svg" value="AL">Albania</option>
                                <option data-kt-flag="flags/algeria.svg" value="DZ">Algeria</option>
                                <option data-kt-flag="flags/american-samoa.svg" value="AS">American Samoa</option>
                                <option data-kt-flag="flags/andorra.svg" value="AD">Andorra</option>
                                <option data-kt-flag="flags/angola.svg" value="AO">Angola</option>
                                <option data-kt-flag="flags/anguilla.svg" value="AI">Anguilla</option>
                                <option data-kt-flag="flags/antigua-and-barbuda.svg" value="AG">Antigua and Barbuda</option>
                                <option data-kt-flag="flags/argentina.svg" value="AR">Argentina</option>
                                <option data-kt-flag="flags/armenia.svg" value="AM">Armenia</option>
                                <option data-kt-flag="flags/aruba.svg" value="AW">Aruba</option>
                                <option data-kt-flag="flags/australia.svg" value="AU">Australia</option>
                                <option data-kt-flag="flags/austria.svg" value="AT">Austria</option>
                                <option data-kt-flag="flags/azerbaijan.svg" value="AZ">Azerbaijan</option>
                                <option data-kt-flag="flags/bahamas.svg" value="BS">Bahamas</option>
                                <option data-kt-flag="flags/bahrain.svg" value="BH">Bahrain</option>
                                <option data-kt-flag="flags/bangladesh.svg" value="BD">Bangladesh</option>
                                <option data-kt-flag="flags/barbados.svg" value="BB">Barbados</option>
                                <option data-kt-flag="flags/belarus.svg" value="BY">Belarus</option>
                                <option data-kt-flag="flags/belgium.svg" value="BE">Belgium</option>
                                <option data-kt-flag="flags/belize.svg" value="BZ">Belize</option>
                                <option data-kt-flag="flags/benin.svg" value="BJ">Benin</option>
                                <option data-kt-flag="flags/bermuda.svg" value="BM">Bermuda</option>
                                <option data-kt-flag="flags/bhutan.svg" value="BT">Bhutan</option>
                                <option data-kt-flag="flags/bolivia.svg" value="BO">Bolivia, Plurinational State of</option>
                                <option data-kt-flag="flags/bonaire.svg" value="BQ">Bonaire, Sint Eustatius and Saba</option>
                                <option data-kt-flag="flags/bosnia-and-herzegovina.svg" value="BA">Bosnia and Herzegovina</option>
                                <option data-kt-flag="flags/botswana.svg" value="BW">Botswana</option>
                                <option data-kt-flag="flags/brazil.svg" value="BR">Brazil</option>
                                <option data-kt-flag="flags/british-indian-ocean-territory.svg" value="IO">British Indian
                                    Ocean Territory</option>
                                <option data-kt-flag="flags/brunei.svg" value="BN">Brunei Darussalam</option>
                                <option data-kt-flag="flags/bulgaria.svg" value="BG">Bulgaria</option>
                                <option data-kt-flag="flags/burkina-faso.svg" value="BF">Burkina Faso</option>
                                <option data-kt-flag="flags/burundi.svg" value="BI">Burundi</option>
                                <option data-kt-flag="flags/cambodia.svg" value="KH">Cambodia</option>
                                <option data-kt-flag="flags/cameroon.svg" value="CM">Cameroon</option>
                                <option data-kt-flag="flags/canada.svg" value="CA">Canada</option>
                                <option data-kt-flag="flags/cape-verde.svg" value="CV">Cape Verde</option>
                                <option data-kt-flag="flags/cayman-islands.svg" value="KY">Cayman Islands</option>
                                <option data-kt-flag="flags/central-african-republic.svg" value="CF">Central African
                                    Republic</option>
                                <option data-kt-flag="flags/chad.svg" value="TD">Chad</option>
                                <option data-kt-flag="flags/chile.svg" value="CL">Chile</option>
                                <option data-kt-flag="flags/china.svg" value="CN">China</option>
                                <option data-kt-flag="flags/christmas-island.svg" value="CX">Christmas Island</option>
                                <option data-kt-flag="flags/cocos-island.svg" value="CC">Cocos (Keeling) Islands</option>
                                <option data-kt-flag="flags/colombia.svg" value="CO">Colombia</option>
                                <option data-kt-flag="flags/comoros.svg" value="KM">Comoros</option>
                                <option data-kt-flag="flags/cook-islands.svg" value="CK">Cook Islands</option>
                                <option data-kt-flag="flags/costa-rica.svg" value="CR">Costa Rica</option>
                                <option data-kt-flag="flags/ivory-coast.svg" value="CI">Côte d'Ivoire</option>
                                <option data-kt-flag="flags/croatia.svg" value="HR">Croatia</option>
                                <option data-kt-flag="flags/cuba.svg" value="CU">Cuba</option>
                                <option data-kt-flag="flags/curacao.svg" value="CW">Curaçao</option>
                                <option data-kt-flag="flags/czech-republic.svg" value="CZ">Czech Republic</option>
                                <option data-kt-flag="flags/denmark.svg" value="DK">Denmark</option>
                                <option data-kt-flag="flags/djibouti.svg" value="DJ">Djibouti</option>
                                <option data-kt-flag="flags/dominica.svg" value="DM">Dominica</option>
                                <option data-kt-flag="flags/dominican-republic.svg" value="DO">Dominican Republic</option>
                                <option data-kt-flag="flags/ecuador.svg" value="EC">Ecuador</option>
                                <option data-kt-flag="flags/egypt.svg" value="EG">Egypt</option>
                                <option data-kt-flag="flags/el-salvador.svg" value="SV">El Salvador</option>
                                <option data-kt-flag="flags/equatorial-guinea.svg" value="GQ">Equatorial Guinea</option>
                                <option data-kt-flag="flags/eritrea.svg" value="ER">Eritrea</option>
                                <option data-kt-flag="flags/estonia.svg" value="EE">Estonia</option>
                                <option data-kt-flag="flags/ethiopia.svg" value="ET">Ethiopia</option>
                                <option data-kt-flag="flags/falkland-islands.svg" value="FK">Falkland Islands (Malvinas)</option>
                                <option data-kt-flag="flags/fiji.svg" value="FJ">Fiji</option>
                                <option data-kt-flag="flags/finland.svg" value="FI">Finland</option>
                                <option data-kt-flag="flags/france.svg" value="FR">France</option>
                                <option data-kt-flag="flags/french-polynesia.svg" value="PF">French Polynesia</option>
                                <option data-kt-flag="flags/gabon.svg" value="GA">Gabon</option>
                                <option data-kt-flag="flags/gambia.svg" value="GM">Gambia</option>
                                <option data-kt-flag="flags/georgia.svg" value="GE">Georgia</option>
                                <option data-kt-flag="flags/germany.svg" value="DE">Germany</option>
                                <option data-kt-flag="flags/ghana.svg" value="GH">Ghana</option>
                                <option data-kt-flag="flags/gibraltar.svg" value="GI">Gibraltar</option>
                                <option data-kt-flag="flags/greece.svg" value="GR">Greece</option>
                                <option data-kt-flag="flags/greenland.svg" value="GL">Greenland</option>
                                <option data-kt-flag="flags/grenada.svg" value="GD">Grenada</option>
                                <option data-kt-flag="flags/guam.svg" value="GU">Guam</option>
                                <option data-kt-flag="flags/guatemala.svg" value="GT">Guatemala</option>
                                <option data-kt-flag="flags/guernsey.svg" value="GG">Guernsey</option>
                                <option data-kt-flag="flags/guinea.svg" value="GN">Guinea</option>
                                <option data-kt-flag="flags/guinea-bissau.svg" value="GW">Guinea-Bissau</option>
                                <option data-kt-flag="flags/haiti.svg" value="HT">Haiti</option>
                                <option data-kt-flag="flags/vatican-city.svg" value="VA">Holy See (Vatican City State)</option>
                                <option data-kt-flag="flags/honduras.svg" value="HN">Honduras</option>
                                <option data-kt-flag="flags/hong-kong.svg" value="HK">Hong Kong</option>
                                <option data-kt-flag="flags/hungary.svg" value="HU">Hungary</option>
                                <option data-kt-flag="flags/iceland.svg" value="IS">Iceland</option>
                                <option data-kt-flag="flags/india.svg" value="IN">India</option>
                                <option data-kt-flag="flags/indonesia.svg" value="ID">Indonesia</option>
                                <option data-kt-flag="flags/iran.svg" value="IR">Iran, Islamic Republic of</option>
                                <option data-kt-flag="flags/iraq.svg" value="IQ">Iraq</option>
                                <option data-kt-flag="flags/ireland.svg" value="IE">Ireland</option>
                                <option data-kt-flag="flags/isle-of-man.svg" value="IM">Isle of Man</option>
                                <option data-kt-flag="flags/israel.svg" value="IL">Israel</option>
                                <option data-kt-flag="flags/italy.svg" value="IT">Italy</option>
                                <option data-kt-flag="flags/jamaica.svg" value="JM">Jamaica</option>
                                <option data-kt-flag="flags/japan.svg" value="JP">Japan</option>
                                <option data-kt-flag="flags/jersey.svg" value="JE">Jersey</option>
                                <option data-kt-flag="flags/jordan.svg" value="JO">Jordan</option>
                                <option data-kt-flag="flags/kazakhstan.svg" value="KZ">Kazakhstan</option>
                                <option data-kt-flag="flags/kenya.svg" value="KE">Kenya</option>
                                <option data-kt-flag="flags/kiribati.svg" value="KI">Kiribati</option>
                                <option data-kt-flag="flags/north-korea.svg" value="KP">Korea, Democratic People's Republic
                                    of</option>
                                <option data-kt-flag="flags/kuwait.svg" value="KW">Kuwait</option>
                                <option data-kt-flag="flags/kyrgyzstan.svg" value="KG">Kyrgyzstan</option>
                                <option data-kt-flag="flags/laos.svg" value="LA">Lao People's Democratic Republic</option>
                                <option data-kt-flag="flags/latvia.svg" value="LV">Latvia</option>
                                <option data-kt-flag="flags/lebanon.svg" value="LB">Lebanon</option>
                                <option data-kt-flag="flags/lesotho.svg" value="LS">Lesotho</option>
                                <option data-kt-flag="flags/liberia.svg" value="LR">Liberia</option>
                                <option data-kt-flag="flags/libya.svg" value="LY">Libya</option>
                                <option data-kt-flag="flags/liechtenstein.svg" value="LI">Liechtenstein</option>
                                <option data-kt-flag="flags/lithuania.svg" value="LT">Lithuania</option>
                                <option data-kt-flag="flags/luxembourg.svg" value="LU">Luxembourg</option>
                                <option data-kt-flag="flags/macao.svg" value="MO">Macao</option>
                                <option data-kt-flag="flags/madagascar.svg" value="MG">Madagascar</option>
                                <option data-kt-flag="flags/malawi.svg" value="MW">Malawi</option>
                                <option data-kt-flag="flags/malaysia.svg" value="MY">Malaysia</option>
                                <option data-kt-flag="flags/maldives.svg" value="MV">Maldives</option>
                                <option data-kt-flag="flags/mali.svg" value="ML">Mali</option>
                                <option data-kt-flag="flags/malta.svg" value="MT">Malta</option>
                                <option data-kt-flag="flags/marshall-island.svg" value="MH">Marshall Islands</option>
                                <option data-kt-flag="flags/martinique.svg" value="MQ">Martinique</option>
                                <option data-kt-flag="flags/mauritania.svg" value="MR">Mauritania</option>
                                <option data-kt-flag="flags/mauritius.svg" value="MU">Mauritius</option>
                                <option data-kt-flag="flags/mexico.svg" value="MX">Mexico</option>
                                <option data-kt-flag="flags/micronesia.svg" value="FM">Micronesia, Federated States
                                    of</option>
                                <option data-kt-flag="flags/moldova.svg" value="MD">Moldova, Republic of</option>
                                <option data-kt-flag="flags/monaco.svg" value="MC">Monaco</option>
                                <option data-kt-flag="flags/mongolia.svg" value="MN">Mongolia</option>
                                <option data-kt-flag="flags/montenegro.svg" value="ME">Montenegro</option>
                                <option data-kt-flag="flags/montserrat.svg" value="MS">Montserrat</option>
                                <option data-kt-flag="flags/morocco.svg" value="MA">Morocco</option>
                                <option data-kt-flag="flags/mozambique.svg" value="MZ">Mozambique</option>
                                <option data-kt-flag="flags/myanmar.svg" value="MM">Myanmar</option>
                                <option data-kt-flag="flags/namibia.svg" value="NA">Namibia</option>
                                <option data-kt-flag="flags/nauru.svg" value="NR">Nauru</option>
                                <option data-kt-flag="flags/nepal.svg" value="NP">Nepal</option>
                                <option data-kt-flag="flags/netherlands.svg" value="NL">Netherlands</option>
                                <option data-kt-flag="flags/new-zealand.svg" value="NZ">New Zealand</option>
                                <option data-kt-flag="flags/nicaragua.svg" value="NI">Nicaragua</option>
                                <option data-kt-flag="flags/niger.svg" value="NE">Niger</option>
                                <option data-kt-flag="flags/nigeria.svg" value="NG">Nigeria</option>
                                <option data-kt-flag="flags/niue.svg" value="NU">Niue</option>
                                <option data-kt-flag="flags/norfolk-island.svg" value="NF">Norfolk Island</option>
                                <option data-kt-flag="flags/northern-mariana-islands.svg" value="MP">Northern Mariana
                                    Islands</option>
                                <option data-kt-flag="flags/norway.svg" value="NO">Norway</option>
                                <option data-kt-flag="flags/oman.svg" value="OM">Oman</option>
                                <option data-kt-flag="flags/pakistan.svg" value="PK">Pakistan</option>
                                <option data-kt-flag="flags/palau.svg" value="PW">Palau</option>
                                <option data-kt-flag="flags/palestine.svg" value="PS">Palestinian Territory, Occupied</option>
                                <option data-kt-flag="flags/panama.svg" value="PA">Panama</option>
                                <option data-kt-flag="flags/papua-new-guinea.svg" value="PG">Papua New Guinea</option>
                                <option data-kt-flag="flags/paraguay.svg" value="PY">Paraguay</option>
                                <option data-kt-flag="flags/peru.svg" value="PE">Peru</option>
                                <option data-kt-flag="flags/philippines.svg" value="PH">Philippines</option>
                                <option data-kt-flag="flags/poland.svg" value="PL">Poland</option>
                                <option data-kt-flag="flags/portugal.svg" value="PT">Portugal</option>
                                <option data-kt-flag="flags/puerto-rico.svg" value="PR">Puerto Rico</option>
                                <option data-kt-flag="flags/qatar.svg" value="QA">Qatar</option>
                                <option data-kt-flag="flags/romania.svg" value="RO">Romania</option>
                                <option data-kt-flag="flags/russia.svg" value="RU">Russian Federation</option>
                                <option data-kt-flag="flags/rwanda.svg" value="RW">Rwanda</option>
                                <option data-kt-flag="flags/st-barts.svg" value="BL">Saint Barthélemy</option>
                                <option data-kt-flag="flags/saint-kitts-and-nevis.svg" value="KN">Saint Kitts and Nevis</option>
                                <option data-kt-flag="flags/st-lucia.svg" value="LC">Saint Lucia</option>
                                <option data-kt-flag="flags/sint-maarten.svg" value="MF">Saint Martin (French part)</option>
                                <option data-kt-flag="flags/st-vincent-and-the-grenadines.svg" value="VC">Saint Vincent
                                    and the Grenadines</option>
                                <option data-kt-flag="flags/samoa.svg" value="WS">Samoa</option>
                                <option data-kt-flag="flags/san-marino.svg" value="SM">San Marino</option>
                                <option data-kt-flag="flags/sao-tome-and-prince.svg" value="ST">Sao Tome and Principe</option>
                                <option data-kt-flag="flags/saudi-arabia.svg" value="SA">Saudi Arabia</option>
                                <option data-kt-flag="flags/senegal.svg" value="SN">Senegal</option>
                                <option data-kt-flag="flags/serbia.svg" value="RS">Serbia</option>
                                <option data-kt-flag="flags/seychelles.svg" value="SC">Seychelles</option>
                                <option data-kt-flag="flags/sierra-leone.svg" value="SL">Sierra Leone</option>
                                <option data-kt-flag="flags/singapore.svg" value="SG">Singapore</option>
                                <option data-kt-flag="flags/sint-maarten.svg" value="SX">Sint Maarten (Dutch part)</option>
                                <option data-kt-flag="flags/slovakia.svg" value="SK">Slovakia</option>
                                <option data-kt-flag="flags/slovenia.svg" value="SI">Slovenia</option>
                                <option data-kt-flag="flags/solomon-islands.svg" value="SB">Solomon Islands</option>
                                <option data-kt-flag="flags/somalia.svg" value="SO">Somalia</option>
                                <option data-kt-flag="flags/south-africa.svg" value="ZA">South Africa</option>
                                <option data-kt-flag="flags/south-korea.svg" value="KR">South Korea</option>
                                <option data-kt-flag="flags/south-sudan.svg" value="SS">South Sudan</option>
                                <option data-kt-flag="flags/spain.svg" value="ES">Spain</option>
                                <option data-kt-flag="flags/sri-lanka.svg" value="LK">Sri Lanka</option>
                                <option data-kt-flag="flags/sudan.svg" value="SD">Sudan</option>
                                <option data-kt-flag="flags/suriname.svg" value="SR">Suriname</option>
                                <option data-kt-flag="flags/swaziland.svg" value="SZ">Swaziland</option>
                                <option data-kt-flag="flags/sweden.svg" value="SE">Sweden</option>
                                <option data-kt-flag="flags/switzerland.svg" value="CH">Switzerland</option>
                                <option data-kt-flag="flags/syria.svg" value="SY">Syrian Arab Republic</option>
                                <option data-kt-flag="flags/taiwan.svg" value="TW">Taiwan, Province of China</option>
                                <option data-kt-flag="flags/tajikistan.svg" value="TJ">Tajikistan</option>
                                <option data-kt-flag="flags/tanzania.svg" value="TZ">Tanzania, United Republic of</option>
                                <option data-kt-flag="flags/thailand.svg" value="TH">Thailand</option>
                                <option data-kt-flag="flags/togo.svg" value="TG">Togo</option>
                                <option data-kt-flag="flags/tokelau.svg" value="TK">Tokelau</option>
                                <option data-kt-flag="flags/tonga.svg" value="TO">Tonga</option>
                                <option data-kt-flag="flags/trinidad-and-tobago.svg" value="TT">Trinidad and Tobago</option>
                                <option data-kt-flag="flags/tunisia.svg" value="TN">Tunisia</option>
                                <option data-kt-flag="flags/turkey.svg" value="TR">Turkey</option>
                                <option data-kt-flag="flags/turkmenistan.svg" value="TM">Turkmenistan</option>
                                <option data-kt-flag="flags/turks-and-caicos.svg" value="TC">Turks and Caicos Islands</option>
                                <option data-kt-flag="flags/tuvalu.svg" value="TV">Tuvalu</option>
                                <option data-kt-flag="flags/uganda.svg" value="UG">Uganda</option>
                                <option data-kt-flag="flags/ukraine.svg" value="UA">Ukraine</option>
                                <option data-kt-flag="flags/united-arab-emirates.svg" value="AE">United Arab Emirates</option>
                                <option data-kt-flag="flags/united-kingdom.svg" value="GB">United Kingdom</option>
                                <option data-kt-flag="flags/united-states.svg" value="US">United States</option>
                                <option data-kt-flag="flags/uruguay.svg" value="UY">Uruguay</option>
                                <option data-kt-flag="flags/uzbekistan.svg" value="UZ">Uzbekistan</option>
                                <option data-kt-flag="flags/vanuatu.svg" value="VU">Vanuatu</option>
                                <option data-kt-flag="flags/venezuela.svg" value="VE">Venezuela, Bolivarian Republic
                                    of</option>
                                <option data-kt-flag="flags/vietnam.svg" value="VN">Vietnam</option>
                                <option data-kt-flag="flags/virgin-islands.svg" value="VI">Virgin Islands</option>
                                <option data-kt-flag="flags/yemen.svg" value="YE">Yemen</option>
                                <option data-kt-flag="flags/zambia.svg" value="ZM">Zambia</option>
                                <option data-kt-flag="flags/zimbabwe.svg" value="ZW">Zimbabwe</option>
                            </select><div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Language</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <!--begin::Input-->
                            <select name="language" aria-label="Select a Language" data-control="select2" data-placeholder="Select a language..."
                                class="form-select form-select-solid form-select-lg select2-hidden-accessible"
                                data-select2-id="select2-data-13-mpze" tabindex="-1" aria-hidden="true">
                                <option value="" data-select2-id="select2-data-15-bzie">Select a Language...</option>
                                <option data-kt-flag="flags/indonesia.svg" value="id">Bahasa Indonesia - Indonesian</option>
                                <option data-kt-flag="flags/malaysia.svg" value="msa">Bahasa Melayu - Malay</option>
                                <option data-kt-flag="flags/canada.svg" value="ca">Català - Catalan</option>
                                <option data-kt-flag="flags/czech-republic.svg" value="cs">Čeština - Czech</option>
                                <option data-kt-flag="flags/netherlands.svg" value="da">Dansk - Danish</option>
                                <option data-kt-flag="flags/germany.svg" value="de">Deutsch - German</option>
                                <option data-kt-flag="flags/united-kingdom.svg" value="en">English</option>
                                <option data-kt-flag="flags/united-kingdom.svg" value="en-gb">English UK - British English</option>
                                <option data-kt-flag="flags/spain.svg" value="es">Español - Spanish</option>
                                <option data-kt-flag="flags/philippines.svg" value="fil">Filipino</option>
                                <option data-kt-flag="flags/france.svg" value="fr">Français - French</option>
                                <option data-kt-flag="flags/gabon.svg" value="ga">Gaeilge - Irish (beta)</option>
                                <option data-kt-flag="flags/greenland.svg" value="gl">Galego - Galician (beta)</option>
                                <option data-kt-flag="flags/croatia.svg" value="hr">Hrvatski - Croatian</option>
                                <option data-kt-flag="flags/italy.svg" value="it">Italiano - Italian</option>
                                <option data-kt-flag="flags/hungary.svg" value="hu">Magyar - Hungarian</option>
                                <option data-kt-flag="flags/netherlands.svg" value="nl">Nederlands - Dutch</option>
                                <option data-kt-flag="flags/norway.svg" value="no">Norsk - Norwegian</option>
                                <option data-kt-flag="flags/poland.svg" value="pl">Polski - Polish</option>
                                <option data-kt-flag="flags/portugal.svg" value="pt">Português - Portuguese</option>
                                <option data-kt-flag="flags/romania.svg" value="ro">Română - Romanian</option>
                                <option data-kt-flag="flags/slovakia.svg" value="sk">Slovenčina - Slovak</option>
                                <option data-kt-flag="flags/finland.svg" value="fi">Suomi - Finnish</option>
                                <option data-kt-flag="flags/el-salvador.svg" value="sv">Svenska - Swedish</option>
                                <option data-kt-flag="flags/virgin-islands.svg" value="vi">Tiếng Việt - Vietnamese</option>
                                <option data-kt-flag="flags/turkey.svg" value="tr">Türkçe - Turkish</option>
                                <option data-kt-flag="flags/greece.svg" value="el">Ελληνικά - Greek</option>
                                <option data-kt-flag="flags/bulgaria.svg" value="bg">Български език - Bulgarian</option>
                                <option data-kt-flag="flags/russia.svg" value="ru">Русский - Russian</option>
                                <option data-kt-flag="flags/suriname.svg" value="sr">Српски - Serbian</option>
                                <option data-kt-flag="flags/ukraine.svg" value="uk">Українська мова - Ukrainian</option>
                                <option data-kt-flag="flags/israel.svg" value="he">עִבְרִית - Hebrew</option>
                                <option data-kt-flag="flags/pakistan.svg" value="ur">اردو - Urdu (beta)</option>
                                <option data-kt-flag="flags/argentina.svg" value="ar">العربية - Arabic</option>
                                <option data-kt-flag="flags/argentina.svg" value="fa">فارسی - Persian</option>
                                <option data-kt-flag="flags/mauritania.svg" value="mr">मराठी - Marathi</option>
                                <option data-kt-flag="flags/india.svg" value="hi">हिन्दी - Hindi</option>
                                <option data-kt-flag="flags/bangladesh.svg" value="bn">বাংলা - Bangla</option>
                                <option data-kt-flag="flags/guam.svg" value="gu">ગુજરાતી - Gujarati</option>
                                <option data-kt-flag="flags/india.svg" value="ta">தமிழ் - Tamil</option>
                                <option data-kt-flag="flags/saint-kitts-and-nevis.svg" value="kn">ಕನ್ನಡ - Kannada</option>
                                <option data-kt-flag="flags/thailand.svg" value="th">ภาษาไทย - Thai</option>
                                <option data-kt-flag="flags/south-korea.svg" value="ko">한국어 - Korean</option>
                                <option data-kt-flag="flags/japan.svg" value="ja">日本語 - Japanese</option>
                                <option data-kt-flag="flags/china.svg" value="zh-cn">简体中文 - Simplified Chinese</option>
                                <option data-kt-flag="flags/taiwan.svg" value="zh-tw">繁體中文 - Traditional Chinese</option>
                            </select>
                            <!--begin::Hint-->
                            <div class="form-text">Please select a preferred language, including date, time, and
                                number formatting.</div>
                            <!--end::Hint-->
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    
                    <!--begin::Input group-->
                    <div class="row mb-6">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label required fw-bold fs-6">Communication</label>
                        <!--end::Label-->
                        <!--begin::Col-->
                        <div class="col-lg-8 fv-row fv-plugins-icon-container">
                            <!--begin::Options-->
                            <div class="d-flex align-items-center mt-3">
                                <!--begin::Option-->
                                <label class="form-check form-check-inline form-check-solid me-5">
                                    <input class="form-check-input" name="communication[]" type="checkbox" value="1">
                                    <span class="fw-bold ps-2 fs-6">Email</span>
                                </label>
                                <!--end::Option-->
                                <!--begin::Option-->
                                <label class="form-check form-check-inline form-check-solid">
                                    <input class="form-check-input" name="communication[]" type="checkbox" value="2">
                                    <span class="fw-bold ps-2 fs-6">Phone</span>
                                </label>
                                <!--end::Option-->
                            </div>
                            <!--end::Options-->
                            <div class="fv-plugins-message-container invalid-feedback"></div>
                        </div>
                        <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-0">
                        <!--begin::Label-->
                        <label class="col-lg-4 col-form-label fw-bold fs-6">Allow Marketing</label>
                        <!--begin::Label-->
                        <!--begin::Label-->
                        <div class="col-lg-8 d-flex align-items-center">
                            <div class="form-check form-check-solid form-switch fv-row">
                                <input class="form-check-input w-45px h-30px" type="checkbox" id="allowmarketing"
                                    checked="checked">
                                <label class="form-check-label" for="allowmarketing"></label>
                            </div>
                        </div>
                        <!--begin::Label-->
                    </div>
                    <!--end::Input group-->
                </div>
                <!--end::Card body-->
                <!--begin::Actions-->
                <div class="card-footer d-flex justify-content-end py-6 px-9">
                    <button type="reset" class="btn btn-light btn-active-light-primary me-2">Discard</button>
                    <button type="submit" class="btn btn-primary" id="kt_account_profile_details_submit">
                        Save Changes</button>
                </div>
                <!--end::Actions-->
                <input type="hidden"><div></div>
            </form>
            <!--end::Form-->
        </div>
        <!--end::Content-->
    </div>
</asp:Content>

