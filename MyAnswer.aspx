<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="MyAnswer.aspx.cs" Inherits="MyAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
        <asp:GridView ID="GridView1" CssClass="ui basic bordered table" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="" BorderColor="#bfbfbf" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Question" HeaderText="Questions" SortExpression="Questions" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
            <EmptyDataTemplate>
                            
<asp:Label  runat="server" ID="lblNoRecord" Font-Italic="true" Font-Bold="true" ForeColor="White" BorderStyle="None" Font-Size="Large" Text="No Record Found!"></asp:Label>

            </EmptyDataTemplate>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="" ForeColor="White" />
            <SelectedRowStyle BackColor="#bfbfbf" Font-Bold="True" ForeColor="Black" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT Question_tb.Question, Question_tb.Category, Answer_tb.Answer, Answer_tb.ATime AS &quot;Time&quot; FROM Answer_tb INNER JOIN Question_tb ON Answer_tb.QId = Question_tb.QId WHERE (Answer_tb.UId = @UId)">
            <SelectParameters>
                <asp:SessionParameter Name="UId" SessionField="UId" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" CssClass="ui basic bordered table" runat="server" AutoGenerateRows="False" DataKeyNames="AId" DataSourceID="SqlDataSource2" Height="50px" Width="100%" OnItemDeleted="DetailsView1_ItemDeleted" OnItemUpdated="DetailsView1_ItemUpdated" BackColor="" BorderColor="" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <EditRowStyle BackColor="" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="AId" HeaderText="AId" InsertVisible="False" ReadOnly="True" SortExpression="AId" />
                <asp:BoundField DataField="Answer" ControlStyle-CssClass="form-control" HeaderText="Answer" SortExpression="Answer" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="" ForeColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:hbafusio_recomtestConnectionString %>" DeleteCommand="DELETE FROM [Answer_tb] WHERE [AId] = @original_AId AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))" InsertCommand="INSERT INTO [Answer_tb] ([Answer]) VALUES (@Answer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [AId], [Answer] FROM [Answer_tb] WHERE (Answer_tb.UId = @UId)" UpdateCommand="UPDATE [Answer_tb] SET [Answer] = @Answer WHERE [AId] = @original_AId AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_AId" Type="Int32" />
                <asp:Parameter Name="original_Answer" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Answer" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UId" SessionField="UId" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Answer" Type="String" />
                <asp:Parameter Name="original_AId" Type="Int32" />
                <asp:Parameter Name="original_Answer" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

