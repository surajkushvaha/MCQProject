<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="QuestionList.aspx.cs" Inherits="AdminPanel_Questions_QuestionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--begin::Tables Widget 12-->
    <div class="card mb-5 mb-xl-8">
        <!--begin::Header-->
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Member Statistics</span>
                <span class="text-muted mt-1 fw-bold fs-7">Over 500 new members</span>
            </h3>
            <div class="card-toolbar">
                <a class="btn btn-sm btn-light-success btn-active-light-primary">Add</a>
            </div>
        </div>
        <!--end::Header-->
        <div class="card-body py-3">
            <!--begin::Table container-->
            <div class="table-responsive">
                <!--begin::Table-->
                <asp:GridView ID="gvQuestionList" CssClass="table align-middle gs-0 gy-4" runat="server"
                    OnRowCommand="gvQuestionList_RowCommand" AutoGenerateColumns="false" BorderWidth="0">

                    <HeaderStyle CssClass="fw-bolder text-muted" />
                    <RowStyle CssClass="text-dark fw-bolder text-hover-primary mb-1 fs-6" />
                    <Columns>
                        <asp:BoundField DataField="ExamCategoryName" HeaderText="Question Name" />
                        <asp:BoundField DataField="IsActive" HeaderText="Visibility" />


                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink runat="server" ID="btnEdit"
                                    Text="Edit" CssClass="btn btn-sm  btn-light-info btn-active-light"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-sm btn-light-danger btn-active-danger"
                                    CommandName="deleteRecord" OnClientClick="javascript : return confirm('Are you sure you want to delete?')" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
                <!--end::Table-->
            </div>
            <!--end::Table container-->
        </div>
        
    </div>
    <!--end::Tables Widget 12-->


</asp:Content>

