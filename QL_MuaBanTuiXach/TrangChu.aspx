<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<%-- Add content controls here --%>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

                <div class="content2">
                    <div class="gachchan"></div>        
                    <div class="contenttc">
                        TẤT CẢ CÁC SẢN PHẨM
                    </div>
                    
               <div class="boloc"> 
                  &nbsp;&nbsp;<img class="pheu" src="Hinh/caipheu.JPG" />Giá Bán:
                   <div class="giohang"> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Giohang.aspx">Xem giỏ hàng</asp:HyperLink>
                       <img class="hinhgiohang" src="Hinh/gio.jpg" />&nbsp;
                       <br />
                       <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                   </div>

        <asp:TextBox ID="gb1" runat="server" Width="125px" Height="20px"></asp:TextBox>
&nbsp; -&nbsp;
        <asp:TextBox ID="gb2" runat="server" Width="115px" Height="21px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Tìm Kiếm" Width="103px" BackColor="Black" Font-Bold="True" Font-Size="18px" ForeColor="Yellow" OnClick="Button1_Click" />

                   <br />
                   <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

               </div>
             <div class="sp" style="text-align: center; margin-left: 31px;">
                    <asp:DataList ID="DataList1" runat="server" style="margin-top: 25px; margin-left: 23px;" RepeatColumns="3" Width="1177px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <div class=".khungsp" >
                            <asp:Image ID="Image1" runat="server" Height="198px" Width="183px" ImageUrl='<%# "Hinh/"+Eval("HinhAnh") %>' style="margin-top: 15px" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                <br />
                            <br />
                                Giá bán:<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("GiaBan") %>'></asp:Label>
                                &nbsp; -&nbsp; Giá cũ:<asp:Label ID="Label3" runat="server" EnableTheming="True" Font-Bold="True" Font-Strikeout="False" Font-Underline="False" ForeColor="Red" Text='<%# Eval("GiaGoc") %>'></asp:Label>
                                <br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="Blue" Text='<%# Eval("TinhTrang") %>'></asp:Label>
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#66FF99" NavigateUrl='<%# "ChiTiet_SP.aspx?masp=" + Eval("MaSP") %>' Text='<%# "Chi tiết" %>'></asp:HyperLink>
                            <br />
                            <br />
                            </div>
                            <div class="nutmua">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" ImageUrl="~/Hinh/ChonMua.jpg" style="margin-bottom: 0px" Width="110px" CommandArgument='<%# Eval("MaSP") %>' OnDataBinding="ImageButton1_DataBinding" OnClick="ImageButton1_Click" />
                                &nbsp;
                                </div>
                        </ItemTemplate>

                    </asp:DataList>

            </div>




                </div>

            
                <div class="content3">
                    <div class="gachchan"></div>

                    <div class="phk">Tin Tức</div>

                    <img src="Hinh/hinhquangcao.JPG" style="width: 579px; height: 184px; margin-left: 46px" />
                    <img src="Hinh/hihqc1.JPG" style="height: 184px; width: 577px; margin-left: 41px" />

                </div>

            
                <div class="content4" style="background-image: url('Hinh/backround2.jpg')">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>

                <div class="content5">
                    <div class="gachchan"></div>
                    <div class="phk">PHẢN HỒI CỦA KHÁCH</div>
                    <div class="nghesy" style="font-weight: normal">

                        <br />
                        <img alt="" src="Hinh/ngoctrinh.jpg" /><br />
                        <br />
                        <p style="margin: 0px; font-weight: bold">Người Mẫu - Ngọc Trinh</p>Là một người khá kỹ tính, tôi luôn luôn lựa chọn những sản phẩm tốt nhất và tinh tế nhất. Và đây là nơi tôi đặt trọng niềm tin</div>

                    <div class="nghesy">

                      <br />
                            <img alt="" src="Hinh/phuongtrinh.jpg"/><br />
                        <br />
                        <p style="margin: 0px; font-weight: bold">Diễn viên -Phương Trinh</p>Tôi là người hay lưu diễn xa, cần những sản phẩm bền bỉ và chất lượng tốt. Tôi đã lựa chọn MT Fashion</div>

                    <div class="nghesy">
                         <br />
                        <img src="Hinh/hoangyen.jpg"  />
                         <br />
                         <br />
                        <p style="margin: 0px; font-weight: bold">Ca sĩ - Hoàng Yến</p>Tôi yêu thích những vật nhỏ nhẹ và tiện tích, tôi thích các món đồ cá tính và tôi yêu thích các sản phẩm của shop</div>
                    </div>
 

</asp:Content>


