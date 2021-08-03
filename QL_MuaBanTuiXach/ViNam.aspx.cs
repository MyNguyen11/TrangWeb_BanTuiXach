using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViNam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String strsp = "select tensp,giaban,giagoc,hinhanh,tinhtrang,cuaphai from SanPham,ct_sanpham where  cuaphai=N'Nam' and  sanpham.masp=CT_SanPham.MASP";
        SqlDataAdapter db = new SqlDataAdapter(strsp, cn);
        DataSet dssp = new DataSet();
        db.Fill(dssp, "sp3");

        DataList1.DataSource = dssp.Tables["sp3"];
        DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}