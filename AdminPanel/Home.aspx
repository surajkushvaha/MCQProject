<%@ Page Title="" Language="C#" MasterPageFile="~/Content/AdminPanel.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="AdminPanel_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
            <div class="row gy-5 g-xl-10">
                <div class="col-xl-6 mb-xl-10">
                    <div class="card bg-primary h-md-100">
                        <div class="card-body d-flex flex-column pt-13 pb-14">
                            <div class="m-0">
                                <h1 class="fw-boldest text-white text-center lh-lg ">Questions</h1>
                                <h1 class="fw-bold text-white text-center lh-lg mb-9">
                                    <asp:Label runat="server" ID="lblQuestionCount" class="fw-bolder fs-2x pt-1">0</asp:Label>
                                    <span class="fw-bold fs-7">MCQs</span>
                                </h1>
                            </div>
                            <div class="text-center">
                                <asp:HyperLink runat="server" class="btn btn-sm btn-white btn-color-gray-800 me-2" NavigateUrl="~/AdminPanel/Questions/AddEditQuestion.aspx"
                                    >Add Question</asp:HyperLink>
                                <asp:HyperLink runat="server" class="btn btn-sm bg-white btn-color-white bg-opacity-25" NavigateUrl="~/AdminPanel/Questions/QuestionList.aspx">
                                    View Question</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mb-xl-10">
                    <div class="card bg-info h-md-100">
                        <div class="card-body d-flex flex-column pt-13 pb-14">
                            <div class="m-0">
                                <h1 class="fw-boldest text-white text-center lh-lg ">Topics</h1>
                                <h1 class="fw-bold text-white text-center lh-lg mb-9">
                                    <asp:Label runat="server" ID="lblTopicCount" class="fw-bolder fs-2x pt-1">0</asp:Label>
                                    <span class="fw-bold fs-7">Topics</span>
                                </h1>
                            </div>
                            <div class="text-center">
                                <asp:HyperLink runat="server" class="btn btn-sm btn-white btn-color-gray-800 me-2" NavigateUrl="~/AdminPanel/Topics/AddEditTopic.aspx">Add Topic</asp:HyperLink>
                                <asp:HyperLink runat="server" class="btn btn-sm bg-white btn-color-white bg-opacity-20" NavigateUrl="~/AdminPanel/Topics/TopicList.aspx">View Topics</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mb-xl-10">
                    <div class="card bg-info h-md-100">
                        <div class="card-body d-flex flex-column pt-13 pb-14">
                            <div class="m-0">
                                <h1 class="fw-boldest text-white text-center lh-lg ">Subjects</h1>
                                <h1 class="fw-bold text-white text-center lh-lg mb-9">
                                    <asp:Label runat="server" ID="lblSubjectCount" class="fw-bolder fs-2x pt-1">0</asp:Label>
                                    <span class="fw-bold fs-7">Subjects</span>
                                </h1>
                            </div>
                            <div class="text-center">
                                <asp:HyperLink runat="server" class="btn btn-sm btn-white btn-color-gray-800 me-2" NavigateUrl="~/AdminPanel/Subjects/AddEditSubject.aspx">Add Subjects</asp:HyperLink>
                                <asp:HyperLink runat="server" class="btn btn-sm bg-white btn-color-white bg-opacity-20" NavigateUrl="~/AdminPanel/Subjects/SubjectList.aspx">View Subjects</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mb-xl-10">
                    <div class="card bg-primary h-md-100">
                        <div class="card-body d-flex flex-column pt-13 pb-14">
                            <div class="m-0">
                                <h1 class="fw-boldest text-white text-center lh-lg ">Exams</h1>
                                <h1 class="fw-bold text-white text-center lh-lg mb-9">
                                    <asp:Label runat="server" ID="lblExamCount" class="fw-bolder fs-2x pt-1">0</asp:Label>
                                    <span class="fw-bold fs-7">Exams</span>
                                </h1>
                            </div>
                            <div class="text-center">
                                <asp:HyperLink runat="server" class="btn btn-sm btn-white btn-color-gray-800 me-2" NavigateUrl="~/AdminPanel/Exams/AddEditExam.aspx">Add Exams</asp:HyperLink>
                                <asp:HyperLink runat="server" class="btn btn-sm bg-white btn-color-white bg-opacity-25" NavigateUrl="~/AdminPanel/Exams/ExamList.aspx">View Exams</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>      
</asp:Content>

