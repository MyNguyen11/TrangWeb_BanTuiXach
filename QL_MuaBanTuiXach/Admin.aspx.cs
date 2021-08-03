using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        //tạo kết nối với SQL
        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        cn.Open();

        string strsel = "select count(*) from SanPham where MaSP='"+masp.Text+"'";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;

        int bktra = (int)cmd.ExecuteScalar();

        if (bktra == 0)
        {
            String strcmd = "insert into SanPham  Values(N'" + masp.Text + "',N'" + tensp.Text + "','" + giaban.Text + "','" + giagoc.Text + "',N'" + DropDownList1.SelectedValue + "',N'" + RadioButtonList1.SelectedValue + "',N'" + motasp.Text + "')";

            cmd.CommandText = strcmd;

            int rs = cmd.ExecuteNonQuery();

            MultiView1.ActiveViewIndex = 1;
        }
        else
            Label1.Text = "Trùng mã sản phẩm";

        cn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;

        //tạo kết nối với SQL

        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        cn.Open();

        String strcmdCT = "insert into CT_SanPham values (N'"+masp1.Text+"',N'"+DropDownList2.SelectedValue+"',N'"+mau.Text+"',N'"+kichthuoc.Text+"',N'"+tinhtrang.Text+"','"+hinhanh.Text+"')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmdCT;

        //thực thi

        int rs = cmd.ExecuteNonQuery();

            cn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        cn.Open();

        String strcmdHinh = "insert into HinhSP values (N'" + masp2.Text + "',N'" +hinhct1.Text+ "',N'" +hinhct2.Text+ "',N'" +hinhct3.Text + "',N'" + hinhct4.Text + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmdHinh;

        //thực thi

        int rs = cmd.ExecuteNonQuery();

            cn.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        //SqlConnection cn = new SqlConnection(strcn);

        //String str_sel = "select *from Admin where tendn=N'" + tendn.Text + "' and matkhau='" + mkad.Text + "'";
       
        //SqlCommand cmd = new SqlCommand();
        //cmd.Connection = cn;
        //cmd.CommandText = str_sel;

        //int ktra = (int)cmd.ExecuteScalar();

        //if (ktra == 1)
        //{
        //    MultiView1.ActiveViewIndex = 1;
        //}
        //else
        //{
        //    Label2.Text = "Thong tin dang nhap sai";
        //}
    }
}