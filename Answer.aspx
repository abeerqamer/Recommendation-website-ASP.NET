<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Answer.aspx.cs" Inherits="Answer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h3 >Post Your Answer</h3><br />
        <p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="702px" ForeColor="White">
                <ItemTemplate>
                    
                    <asp:Label ID="QuestionsLabel" CssClass="Ques" runat="server" Text='<%# Eval("Question") %>' />
                    <br />
                    <span class="cat">Category:</span>
                    <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT [Question], [Category] FROM [Question_tb] WHERE ([QId] = @QId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="QId" QueryStringField="QId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        
        

        <h3>Answers</h3>
        <asp:TextBox ID="txtans" CssClass="form-control post" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>

        <asp:Button ID="btnpostans" CssClass="big ui button inverted blue right floated" runat="server" Text="Post Answer" OnClick="btnpostans_Click" />

        <br />

        <br />
        
    </div>
</asp:Content>

