<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllStudents.aspx.cs" Inherits="ITMO.Course.ASP.NET.FinalTask.AllStudents" MasterPageFile="~/Site.master"%>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server"> 
    <h1 class="title">Студенты нашего Университета</h1>
    <div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString=
            "<%$ ConnectionStrings:Hogwards.mdfConnectionString %>" 
            SelectCommand=
            "SELECT [SurnameStudent], [NameStudent], [MiddlenameStudent], [LessonStudent], [EmailStudent], 
             [Phone], [AchieveStudent] FROM [ListStudents] ORDER BY [SurnameStudent]"
        >

        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="90%">
            <Columns>
                <asp:BoundField DataField="SurnameStudent" HeaderText="Фамилия" SortExpression="SurnameStudent" />
                <asp:BoundField DataField="NameStudent" HeaderText="Имя" SortExpression="NameStudent" />
                <asp:BoundField DataField="MiddlenameStudent" HeaderText="Отчество" SortExpression="MiddlenameStudent" />
                <asp:BoundField DataField="LessonStudent" HeaderText="Предмет" SortExpression="LessonStudent" />
                <asp:BoundField DataField="EmailStudent" HeaderText="Email" SortExpression="EmailStudent" />
                <asp:BoundField DataField="Phone" HeaderText="Телефон" SortExpression="Phone" />
                <asp:BoundField DataField="AchieveStudent" HeaderText="Балл" SortExpression="AchieveStudent" />
            </Columns>
         </asp:GridView>
    </div>
</asp:Content>


        
   
