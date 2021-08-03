using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SPNSX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String Mansx = Request.QueryString["MANSX"];

        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strcmd = "select tensp,giaban,giagoc,hinhanh,tinhtrang,NhaSX.mansx from NhaSX,CT_SanPham,SanPham where NhaSX.MANSX=CT_SanPham.MANSX and CT_SanPham.MASP=SanPham.MaSP and NhaSX.MaNSX='" + Mansx + "'";
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);

        DataSet ds = new DataSet();
        da.Fill(ds, "map");

        DataList1.DataSource = ds.Tables["map"];
        DataList1.DataBind();
    }
}