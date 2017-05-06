<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Posted.aspx.cs" Inherits="Posted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
        <div id="center" class="container">
        
        <h1 id="congo">Congratulations</h1><br />
        <h5>your answer have been posted</h5>
            <br /><br /><br />
        <div class="btn">
            <asp:Button ID="answer_more" runat="server" CssClass="ui inverted red button huge" Text="     ASK MORE QUESTION    " Height="54px" OnClick="answer_more_Click" /> <br />  <br /> <br />
            <asp:Button ID="change_cateogry" runat="server" CssClass="ui inverted red button huge" Text="      CHANGE CATEGORY     " Height="54px" OnClick="change_cateogry_Click" />
        </div>


    </div>



  
    
</asp:Content>

