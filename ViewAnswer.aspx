<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="ViewAnswer.aspx.cs" Inherits="ViewAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" BorderStyle="None" ForeColor="White">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                
                <asp:Label ID="QuestionsLabel" CssClass="Ques" runat="server" Text='<%# Eval("Question") %>' />
                <br />
                <span class="cat">Category:</span>
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                <hr />
                
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT [Question], [Category] FROM [Question_tb] WHERE ([QId] = @QId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="QId" QueryStringField="QId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Width="100%" ForeColor="White"  CellPadding="4">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                
                
                <asp:Label ID="NameLabel" CssClass="Name" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <span class="cat">Answer</span>
                <asp:Label ID="AnswerLabel" CssClass="Ans" runat="server" Text='<%# Eval("Answer") %>' />
                <br />
                <span class="cat">Time</span>
                <asp:Label ID="ATimeLabel" CssClass="Ans" runat="server" Text='<%# Eval("ATime") %>' />
                <br />
                <hr/>
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT Answer_tb.Answer, [User_tb].Name, Answer_tb.ATime FROM Answer_tb INNER JOIN [User_tb] ON Answer_tb.UId = [User_tb].UId WHERE ([QId] = @QId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="QId" QueryStringField="QId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
</asp:Content>

