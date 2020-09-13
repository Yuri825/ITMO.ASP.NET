<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestFive.aspx.cs" Inherits="ITMO.Course.ASP.NET.FinalTask.BestFive" MasterPageFile="~/Site.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server"> 
    <h1 class="title">Лучшие студенты</h1>
    <div>
       <asp:SqlDataSource 
           ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:Hogwards.mdfConnectionString %>" 
           SelectCommand="
           SELECT TOP (5) [SurnameStudent], [NameStudent], [MiddlenameStudent],  
           [EmailStudent], [Phone], [AchieveStudent]  FROM [ListStudents] ORDER BY [AchieveStudent] DESC"
          
          
           
          
       >

       </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="90%" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="50px">
            <Columns>
                <asp:BoundField DataField="SurnameStudent" HeaderText="Фамилия" SortExpression="SurnameStudent" />
                <asp:BoundField DataField="NameStudent" HeaderText="Имя" SortExpression="NameStudent" />
                <asp:BoundField DataField="MiddlenameStudent" HeaderText="Отчество" SortExpression="MiddlenameStudent" />
                <asp:BoundField DataField="EmailStudent" HeaderText="Email" SortExpression="EmailStudent" />
                <asp:BoundField DataField="Phone" HeaderText="Телефон" SortExpression="Phone" />
                <asp:BoundField DataField="AchieveStudent" HeaderText="Балл" SortExpression="AchieveStudent" />
            </Columns>
            <HeaderStyle Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />


        </asp:GridView>

   </div>
    </asp:Content>
        
    