<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2" style="font-size: 32px; font-family: .VnKoala; font-weight: bold; text-align: center; background-color: #000000; color: #FFFFFF; height: 25px;">Thêm Sản Phẩm</td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 43px;">Mã Sản Phẩm:</td>
                        <td style="height: 43px">
                            <asp:TextBox ID="masp" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 8px" Width="272px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="masp" Display="Dynamic" ErrorMessage="Không được để trống" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 45px;">Tên Sản Phẩm: </td>
                        <td style="height: 45px">
                            <asp:TextBox ID="tensp" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 8px" Width="272px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 42px;">Giá Bán:</td>
                        <td style="height: 42px">
                            <asp:TextBox ID="giaban" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 8px" Width="272px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 40px;">Giá Gốc:</td>
                        <td style="height: 40px">
                            <asp:TextBox ID="giagoc" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 8px" Width="272px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 38px;">Mã Loại:</td>
                        <td style="height: 38px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="105px" style="margin-left: 10px">
                                <asp:ListItem Value="ML01">Balo</asp:ListItem>
                                <asp:ListItem Value="ML02">Túi Xách</asp:ListItem>
                                <asp:ListItem Value="ML03">Ví</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 42px;">Của Phái:</td>
                        <td style="height: 42px">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="20px" RepeatColumns="2" Width="224px" style="margin-left: 11px">
                                <asp:ListItem>Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 44px;">Mô tả Sản Phẩm:</td>
                        <td style="height: 44px">
                            <asp:TextBox ID="motasp" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-left: 8px" Width="272px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 328px; text-align: right; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; height: 40px;">
                            </td>
                        <td style="height: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Yellow" Text="Thêm Sản Phẩm" Width="131px" OnClick="Button1_Click" />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td style="height: 3px; font-size: 32px; color: #FFFFFF; background-color: #000000; font-family: .VnFree; font-weight: bold; text-align: center;" colspan="2">Thêm Chi Tiết Sản Phẩm</td>
                    </tr>
                    <tr>
                        <td style="width: 329px; font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; height: 41px;">Mã Sản Phẩm:</td>
                        <td style="height: 41px">
                            <asp:TextBox ID="masp1" runat="server" Width="258px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="masp1" Display="Dynamic" ErrorMessage="Không được để trống" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="masp" ControlToValidate="masp1" Display="Dynamic" ErrorMessage="sai mã sản phẩm"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 329px; font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; height: 45px;">Mã Nhà Sản Xuất:</td>
                        <td style="height: 45px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="147px">
                                <asp:ListItem Value="LF">La Force</asp:ListItem>
                                <asp:ListItem Value="FR">France.</asp:ListItem>
                                <asp:ListItem Value="TV">Thái Việt</asp:ListItem>
                                <asp:ListItem Value="SY">SYMANTEC</asp:ListItem>
                                <asp:ListItem Value="HT">Hưng Thịnh</asp:ListItem>
                                <asp:ListItem Value="GC">Gucci</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                        <tr>
                            <td style="font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; width: 329px; height: 42px;">Màu</td>
                            <td style="height: 42px">
                                <asp:TextBox ID="mau" runat="server" Width="258px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; width: 329px; height: 41px;">Kích thước:</td>
                            <td style="height: 41px">
                                <asp:TextBox ID="kichthuoc" runat="server" Width="258px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; width: 329px; height: 38px;">Tình trạng:</td>
                            <td style="height: 38px">
                                <asp:TextBox ID="tinhtrang" runat="server" Width="258px"></asp:TextBox>
                            </td>
                        </tr>
                    
                    <tr>
                        <td style="font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; width: 329px; height: 41px;">Hình Ảnh:</td>
                        <td style="height: 41px">
                            <asp:TextBox ID="hinhanh" runat="server" Width="258px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 18px; font-style: italic; color: #000080; text-align: right; font-weight: bold; width: 329px; height: 40px;">
                            <asp:Button ID="Button4" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Yellow" OnClick="Button4_Click" Text="Quay Lại" Width="119px" />
                            &nbsp;&nbsp;&nbsp; </td>
                        <td style="height: 40px">
                            <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Yellow" OnClick="Button2_Click" Text="Thêm chi tiết" Width="136px" />
                        </td>
                    </tr>
                    
                </table>
            </asp:View>

            <asp:View ID="View3" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2" style="font-size: 32px; font-weight: bold; font-style: italic; color: #FFFFFF; background-color: #000000; font-family: .VnFree; text-align: center;">Thêm Hình Sản Phẩm</td>
                    </tr>
                    <tr>
                        <td style="width: 331px; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; text-align: right; height: 39px;">Mã Sản Phẩm</td>
                        <td style="height: 39px">
                            <asp:TextBox ID="masp2" runat="server" Width="269px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="masp2" Display="Dynamic" ErrorMessage="Không được để trống" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="masp1" ControlToValidate="masp2" Display="Dynamic" ErrorMessage="sai mã sản phẩm"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 331px; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; text-align: right; height: 50px;">Hình Chi Tiết Mã Sản Phẩm 1:</td>
                        <td style="height: 50px">
                            <asp:TextBox ID="hinhct1" runat="server" Width="267px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                            <td style="width: 331px; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; text-align: right; height: 42px;">Hình Chi Tiết Mã Sản Phẩm 2:</td>
                            <td style="height: 42px">
                                <asp:TextBox ID="hinhct2" runat="server" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                    <tr>
                            <td style="width: 331px; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; text-align: right; height: 55px;">Hình Chi Tiết Mã Sản Phẩm 3:</td>
                            <td style="height: 55px">
                                <asp:TextBox ID="hinhct3" runat="server" Width="267px"></asp:TextBox>
                            </td>
                        </tr>
                    <tr>
                            <td style="width: 331px; font-size: 18px; font-weight: bold; font-style: italic; color: #000080; text-align: right; height: 45px;">Hình Chi Tiết Mã Sản Phẩm 4:</td>
                            <td style="height: 45px">
                                <asp:TextBox ID="hinhct4" runat="server" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                    <tr>
                            <td style="width: 331px; height: 39px">
                                <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Yellow" OnClick="Button5_Click" style="margin-left: 202px" Text="Quay Lại" Width="124px" />
                            </td>
                            <td style="height: 39px">
                                <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Bold="True" ForeColor="Yellow" OnClick="Button3_Click" Text="Thêm Hình" Width="137px" />
                                &nbsp;</td>
                        </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>

