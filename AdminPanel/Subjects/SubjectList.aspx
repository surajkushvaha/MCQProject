<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true" CodeFile="SubjectList.aspx.cs" Inherits="AdminPanel_Subjects_SubjectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card mb-5 mb-xl-8">
        <div class="card-header border-0 pt-5">
            <h3 class="card-title align-items-start flex-column">
                <span class="card-label fw-bolder fs-3 mb-1">Subject</span>
                <span class="text-muted mt-1 fw-bold fs-7">List of Subject</span>
            </h3>
            <div class="card-toolbar">
                <asp:HyperLink class="btn btn-sm btn-light-success btn-active-light-primary" runat="server" ID="hlAdd" NavigateUrl= "~/AdminPanel/Exams/AddEditExam.aspx" >Add</asp:HyperLink>
            </div>
        </div>
        <div class="card-body py-3">
            <div class="table-responsive">
                <asp:GridView ID="gvSubjectList" CssClass="table align-middle gs-0 gy-4" runat="server"
                    OnRowCommand="gvSubjectList_RowCommand" AutoGenerateColumns="false" BorderWidth="0">
                    <HeaderStyle CssClass="fw-bolder text-muted" />
                    <RowStyle CssClass="text-dark fw-bolder text-hover-primary mb-1 fs-6" />
                    <Columns>
                        <asp:BoundField DataField="ExamSubjectName" HeaderText="Subject Name" />
                        <asp:BoundField DataField="ExamCategoryName" HeaderText="Exam Name" />
                        <asp:BoundField DataField="IsActive" HeaderText="Visibility" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HyperLink runat="server" ID="hlEdit"
                                    Text="Edit" CssClass="btn btn-sm  btn-light-info btn-active-light" NavigateUrl='<%# "~/AdminPanel/Subject/AddEditSubject.aspx?SubjectID=" + Eval("ExamSubjectID").ToString().Trim() %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-sm btn-light-danger btn-active-danger"
                                    CommandName="deleteRecord" CommandArgument='<%# Eval("ExamSubjectID").ToString() %>' OnClientClick="javascript : return confirm('Are you sure you want to delete?')" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

