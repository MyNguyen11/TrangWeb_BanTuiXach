<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table class="trangdn">
            <tr>
                <td colspan="2" style="height: 54px; font-size: 24px; color: #FF0000; font-weight: bold; text-align: center; font-family: .VnKoala;">ĐĂNG NHẬP THẺ THÀNH VIÊN</td>
            </tr>
            <tr>
                <td style="font-weight: bold; text-align: right; width: 576px;">Tên Đăng Nhập:</td>
                <td style="height: 49px; width: 640px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="249px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; text-align: right; width: 576px;">Mật Khẩu:</td>
                <td style="width: 640px; height: 50px;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="249px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td style="width: 576px; height: 54px"></td>
                <td style="width: 640px; height: 54px;">
                    <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" Font-Size="15px" ForeColor="Red" Height="31px" OnClick="Button1_Click" style="margin-left: 67px" Text="Đăng Nhập" Width="121px" />
                </td>
            </tr>
             <tr>
                <td style="width: 576px">&nbsp;</td>
                <td style="width: 640px">
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="#66FF33" Text="Label"></asp:Label>
                 </td>
            </tr>

             </table>
    </div>
</asp:Content>

