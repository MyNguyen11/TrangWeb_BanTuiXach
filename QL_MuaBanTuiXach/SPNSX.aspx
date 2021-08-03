<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="SPNSX.aspx.cs" Inherits="SPNSX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="color: #FF0000; font-family: VnKoala; font-weight: bold; width: 604px; margin-left: 48px; margin-top: 4px; font-size: 18px;">
        SẢN PHẨM CỦA NHÀ SẢN XUẤT</div>

    <div style="margin-top: 22px">
        <asp:DataList ID="DataList1" runat="server" style="margin-left:48px" RepeatColumns="4" Width="1098px">
            <ItemTemplate>
                <div style="border: thin solid #00FFFF; text-align: center; margin-right: 4px; margin-bottom: 4px; margin-left: 4px;">
                     <asp:Image ID="Image1" runat="server" Height="184px" Width="162px" ImageUrl='<%# "Hinh/"+Eval("hinhanh") %>' style="margin-top: 11px" />
                     <br />
                     <br />
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                     <br />
                     <br />
                     Giá bán:
                     <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("Giaban") %>'></asp:Label>
                     -Giá cũ:
                     <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Eval("Giaban") %>'></asp:Label>
                     <br />
                     <br />
                     <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Blue" Text='<%# Eval("Tinhtrang") %>'></asp:Label>
                </div>
            </ItemTemplate>

        </asp:DataList>
    </div>

     </asp:Content>

