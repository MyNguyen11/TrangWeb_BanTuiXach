using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        String str_sel = "select *from ThanhVien where TenDN=N'" + TextBox1.Text + "' and Matkhau='" + TextBox2.Text + "'";

        SqlDataAdapter da = new SqlDataAdapter(str_sel, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            Session["kh"] = dt;
            Response.Redirect("TrangChu.aspx");

        }
        else
        {
            Label1.Text = "Thong tin dang nhap sai";
        }
    }
}