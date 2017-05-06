<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="MyPost.aspx.cs" Inherits="MyPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RecomConnectionString %>" DeleteCommand="DELETE FROM [Question] WHERE [QId] = @original_QId AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND [Upvote] = @original_Upvote AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))" InsertCommand="INSERT INTO [Question] ([Questions], [Upvote], [Category]) VALUES (@Questions, @Upvote, @Category)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Question], [QId], [Category],(select sum(Upvote) from Upvote_tb where Question_tb.QId=Upvote_tb.QId) AS &quot;UpVote&quot; FROM [Question_tb] WHERE ([UId] = @UId)" UpdateCommand="UPDATE [Question] SET [Questions] = @Questions, [Upvote] = @Upvote, [Category] = @Category WHERE [QId] = @original_QId AND (([Questions] = @original_Questions) OR ([Questions] IS NULL AND @original_Questions IS NULL)) AND [Upvote] = @original_Upvote AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_QId" Type="Int32" />
                <asp:Parameter Name="original_Questions" Type="String" />
                <asp:Parameter Name="original_Upvote" Type="Int32" />
                <asp:Parameter Name="original_Category" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Questions" Type="String" />
                <asp:Parameter Name="Upvote" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UId" SessionField="UId" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Questions" Type="String" />
                <asp:Parameter Name="Upvote" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="original_QId" Type="Int32" />
                <asp:Parameter Name="original_Questions" Type="String" />
                <asp:Parameter Name="original_Upvote" Type="Int32" />
                <asp:Parameter Name="original_Category" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="ui basic bordered table" runat="server" AllowPaging="True" PageSize="8" AutoGenerateColumns="False" DataKeyNames="QId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnSorted="GridView1_Sorted"  BorderColor="#bfbfbf" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="QId" HeaderText="QId" InsertVisible="False" ReadOnly="True" SortExpression="QId" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="UpVote" HeaderText="UpVote" SortExpression="UpVote" ReadOnly="True" />
            </Columns>
                        <EmptyDataTemplate>
                            
<asp:Label  runat="server" ID="lblNoRecord" Font-Italic="true" Font-Bold="true" ForeColor="White" BorderStyle="None" Font-Size="Large" Text="No Record Found!"></asp:Label>

            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="" ForeColor="#ffffff" />
            <SelectedRowStyle BackColor="#bfbfbf" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" CssClass="ui basic bordered table" runat="server" AutoGenerateRows="False" DataKeyNames="QId" DataSourceID="SqlDataSource2" Height="50px" Width="100%" OnItemUpdated="DetailsView1_ItemUpdated" OnItemDeleted="DetailsView1_ItemDeleted" BackColor="" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" GridLines="Horizontal">
            <EditRowStyle BackColor="" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="QId" HeaderText="QId" SortExpression="QId" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField ControlStyle-CssClass="form-control" DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField ControlStyle-CssClass="form-control" DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RecomConnectionString %>" DeleteCommand="DELETE FROM [Question_tb] WHERE [QId] = @original_QId AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))" InsertCommand="INSERT INTO [Question_tb] ([Question], [Category]) VALUES (@Question, @Category)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [QId], [Question], [Category] FROM [Question_tb] WHERE ([UId] = @UId)" UpdateCommand="UPDATE [Question_tb] SET [Question] = @Question, [Category] = @Category WHERE [QId] = @original_QId AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_QId" Type="Int32" />
                <asp:Parameter Name="original_Question" Type="String" />
                <asp:Parameter Name="original_Category" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UId" SessionField="UId" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="original_QId" Type="Int32" />
                <asp:Parameter Name="original_Question" Type="String" />
                <asp:Parameter Name="original_Category" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>

</asp:Content>

