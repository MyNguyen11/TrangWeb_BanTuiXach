using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void butondangky_Click(object sender, EventArgs e)
    {
        //tạo kết nối với SQL
        String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        cn.Open();

        //Tạo cmd
        String dieukhoan = "";
        if ( CheckBoxdongy.Checked)
        {
            dieukhoan = CheckBoxdongy.Text + " ";
        }

        String strcmd = "insert into ThanhVien values(N'" + tenthanhvien.Text + "',N'"+tendn.Text+"',N'"+matkhau.Text+"','" + email.Text + "',N'" + DropDownListGioitinh.SelectedValue + "',N'"+congviechientai.Text+"',N'"+dieukhoan+"')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        //thực thi

        int rs = cmd.ExecuteNonQuery();

        if (rs == 1)
            thongbaothanhcong.Text = "Chúc mừng bạn đã đăng ký thành công";

        cn.Close();
    }
}