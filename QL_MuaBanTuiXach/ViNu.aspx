<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="ViNu.aspx.cs" Inherits="ViNu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
         <ItemTemplate>
             <div style="text-align: center; width: 322px;">
                <asp:Image ID="Image1" runat="server" Height="209px" Width="203px" style="margin-top: 11px" ImageUrl='<%# "Hinh/"+Eval("Hinhanh") %>' />
                 <br />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                 <br />
                 <br />
                 Giá bán:
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("Giaban") %>'></asp:Label>
                 -Giá cũ:<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Eval("GiaGoc") %>'></asp:Label>
                 <br />
                 <br />
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Blue" Text='<%# Eval("Tinhtrang") %>'></asp:Label>
                 <br />
                 <br />
                 <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#66FF99" NavigateUrl='<%# "ChiTiet_SP.aspx?masp=" + Eval("MaSP") %>' Text='<%# "Chi tiết" %>'></asp:HyperLink>
                 <br />
            </div>
         </ItemTemplate>


     </asp:DataList>
 </div>

    <div>

 </div>

    <div>

 </div>
</asp:Content>

