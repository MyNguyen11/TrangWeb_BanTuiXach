<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="ChiTiet_SP.aspx.cs" Inherits="ChiTiet_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1160px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="GiaBan" HeaderText="Giá bán" />
            <asp:BoundField DataField="GiaGoc" HeaderText="Giá gốc" />
            <asp:BoundField DataField="MaLoai" HeaderText="Mã loại" />
            <asp:BoundField DataField="CuaPhai" HeaderText="Của phái" />
            <asp:BoundField DataField="Mota" HeaderText="Mô tả" />
            <asp:ImageField DataImageUrlField="AAA" HeaderText="Hình ảnh">
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
</asp:Content>

