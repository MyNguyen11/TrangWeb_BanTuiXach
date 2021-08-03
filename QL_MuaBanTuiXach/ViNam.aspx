<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="ViNam.aspx.cs" Inherits="ViNam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
     <div class="sp" style="text-align: center; margin-left: 31px;">
                    <asp:DataList ID="DataList1" runat="server" style="margin-top: 25px; margin-left: 23px;" RepeatColumns="3" Width="1177px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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
                            </div>
                        </ItemTemplate>

                    </asp:DataList>

            </div>
 </div>
</asp:Content>

