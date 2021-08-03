<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leftdky">
            
       <table style="width:100%; height: 573px; background-image: url('Hinh/bgdky.jpg');">
           <tr>
               <td colspan="2" style="height: 48px"><p class="thedky" style="color: #0000FF; font-weight: bold; margin-top: 0px;" >Đăng Ký Thẻ Thành Viên</p> </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px;">Tên Thành Viên:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tenthanhvien" ErrorMessage=" ( * )" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               </td>
               <td style="width: 313px">
                   <asp:TextBox ID="tenthanhvien" runat="server" Height="25px" Width="369px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 49px;">Tên Đăng Nhập:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tendn" ErrorMessage="( * )" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               </td>
               <td style="width: 313px; height: 49px;">
                   <asp:TextBox ID="tendn" runat="server" Height="25px" Width="369px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 51px;">Mật khẩu:</td>
               <td style="width: 313px; height: 51px;">
                   <asp:TextBox ID="matkhau" runat="server" Height="25px" Width="369px" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 47px;">Nhập lại mật khẩu:<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="matkhau" ControlToValidate="nhaplaimakhau" Display="Dynamic" ErrorMessage="sai mật khẩu" ForeColor="Red"></asp:CompareValidator>
               </td>
               <td style="width: 313px; height: 47px;">
                   <asp:TextBox ID="nhaplaimakhau" runat="server" Height="25px" Width="369px" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px;">Email:</td>
               <td style="width: 313px">
                   <asp:TextBox ID="email" runat="server" Height="25px" TextMode="Email" Width="369px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 42px;">Giới Tính:</td>
               <td style="width: 313px; height: 42px;">
                   <asp:DropDownList ID="DropDownListGioitinh" runat="server" Height="36px" Width="73px">
                       <asp:ListItem>Nữ</asp:ListItem>
                       <asp:ListItem>Nam</asp:ListItem>
                       <asp:ListItem>Khác</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px;">Công việc hiện tại:</td>
               <td style="width: 313px">
                   <asp:TextBox ID="congviechientai" runat="server" Height="25px" Width="369px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="color: #FFFF00; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 29px;">Điều khoản:</td>
               <td style="width: 313px; height: 29px;">
                   <asp:CheckBox ID="CheckBoxdongy" runat="server" Font-Bold="True" ForeColor="Red" Text="Tôi đồng ý với các điều khoảng trên" />
               </td>
           </tr>
           <tr>
               <td style="color: #FF0000; text-align: right; font-weight: bold; width: 173px; font-size: 18px; height: 33px;"></td>
               <td style="width: 313px; margin-left: 40px; height: 33px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="butondangky" runat="server" BackColor="Red" Font-Bold="True" ForeColor="Black" Height="31px" Text="Đăng Ký" Width="133px" OnClick="butondangky_Click" />
               </td>
           </tr>
           <tr>
               <td style="color: #FF0000; text-align: right; font-weight: bold; width: 173px; font-size: 18px;">&nbsp;</td>
               <td style="width: 313px; margin-left: 40px;">
                   <asp:Label ID="thongbaothanhcong" runat="server" Text="Label" ForeColor="Lime"></asp:Label>
               </td>
           </tr>
       </table>
            
    </div>

    <div class="rightdky">
        <div style="text-align: center; font-size: 27px; color: #FFFF00; background-color: #000000; font-weight: bold; font-family: .VnMysticalH"> Quyền Lợi Thành Viên</div>
        <div style="font-size: 18px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quyền riêng tư của khách hàng vô cùng quan trọng với MT Fashion, vì thế chúng tôi chỉ sử dụng thông tin cá nhân của quý khách vào những trường hợp nêu ra sau đây. 
<br/>
        Bảo vệ dữ liệu là vấn đề của sự tin tưởng và bảo mật danh tính của quý khách vô cùng quan trọng với chúng tôi. Vì thế, chúng tôi chỉ sẽ sử dụng tên và một số thông tin khác của quý khách theo cách được đề ra trong Chính sách Bảo mật này. Chúng tôi chỉ sẽ thu thập những thông tin cần thiết và có liên quan đến giao dịch giữa chúng tôi và quý khách.<br />
&nbsp;<br />
        &nbsp;&nbsp;&nbsp;
        Chúng tôi chỉ giữ thông tin của quý khách trong thời gian luật pháp yêu cầu hoặc cho mục đích mà thông tin đó được thu thập.
        Quý khách có thể ghé thăm trang web mà không cần phải cung cấp bất kỳ thông tin cá nhân nào. Khi viếng thăm trang web, quý khách sẽ luôn ở trong tình trạng vô danh trừ khi quý khách có tài khoản trên trang web và đăng nhập vào bằng tên và mật khẩu của mình.
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chúng tôi luôn sẳn sàng lắng nghe nhận xét của quý khách.
            <br />
            MT Fashion không bán, chia sẻ hay trao đổi thông tin cá nhân của khách hàng thu thập trên trang web cho một bên thứ ba nào khác.
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Thông tin cá nhân thu thập được sẽ chỉ được sử dụng trong nội bộ công ty.

         Những thông tin trên sẽ được sử dụng cho một hoặc tất cả các mục đích sau đây:

            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Giao hàng quý khách đã mua tại MT Fashion
　　 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Thông báo về việc giao hàng và hỗ trợ khách hàng
　　         
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Cung cấp thông tin liên quan đến sản phẩm
　　         
            <br />
            <br />
&nbsp;&nbsp;&nbsp; - Xử lý đơn đặt hàng và cung cấp dịch vụ và thông tin qua trang web của chúng tôi theo yêu cầu của quý khách
　　         
            <br />
&nbsp;&nbsp;&nbsp; - Ngoài ra, chúng tôi sẽ sử dụng thông tin quý khách cung cấp để hỗ trợ quản lý tài khoản khách hàng; xác nhận và thực hiện các giao dịch tài chính liên quan đến các khoản thanh toán trực tuyến của quý khách; kiểm tra dữ liệu tải từ trang web của chúng tôi</div>
    </div>
</asp:Content>

