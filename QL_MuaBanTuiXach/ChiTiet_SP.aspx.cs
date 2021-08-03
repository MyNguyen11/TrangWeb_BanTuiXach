using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTiet_GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //String str_sel = "";
        //if (Request.QueryString["masp"] == null)
        //{
        //    str_sel = "select*from SanPham";
        //}
        //else
        //{
            
        //}
        String masp = Request.QueryString["masp"];

        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
     
        String  str_sel = "select SanPham.MaSP,TenSP,GiaBan,GiaGoc,MaLoai,CuaPhai,MoTa,'Hinh/' + HinhAnh as AAA from SanPham,CT_SanPham where CT_SanPham.MASP = SanPham.MaSP and SanPham.MASP =" + masp;
        SqlDataAdapter da = new SqlDataAdapter(str_sel, cn);

        DataSet ds = new DataSet();
        da.Fill(ds,"chitiet");

        GridView2.DataSource = ds.Tables["chitiet"];
        GridView2.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}