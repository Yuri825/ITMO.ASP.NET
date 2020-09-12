<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterStudents.aspx.cs" Inherits="ITMO.Course.ASP.NET.FinalTask.PageNamesStudents" MasterPageFile="~/Site.master"%>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server"> 
    
         <h1 id="titleEnter">Страница ввода данных студентов</h1>
           <div id="enterData">
            <div> 
                <label>Фамилия студента:</label><asp:TextBox ID="surname" runat="server"></asp:TextBox> 
            </div>

            <div> 
                <label>Имя студента:</label><asp:TextBox ID="name" runat="server"></asp:TextBox> 
            </div>

            <div> 
                <label>Отчечтво студента:</label><asp:TextBox ID="middlename" runat="server"></asp:TextBox> 
            </div>

                <div> 
                <label>Предмет:</label><asp:TextBox ID="lesson" runat="server"></asp:TextBox> 
            </div>

            <div> 
                <label>Email студента:</label><asp:TextBox ID="email" runat="server"></asp:TextBox> 
            </div>
               
             <div> 
                <label>Номер телефона студента:</label><asp:TextBox ID="phone" runat="server"></asp:TextBox> 
            </div>

            <div> 
                <label>Балл:</label><asp:TextBox ID="achieve" runat="server"></asp:TextBox> 
            </div>

           </div>


            <div id="buttonEnter">
                <asp:Button ID="Button1" runat="server" Text="Сохранить" BackColor="#98A7AE" Font-Size="Large" ForeColor="#000066" Height="50px" />
            </div>

      

            
</asp:Content>
