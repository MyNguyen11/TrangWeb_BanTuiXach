using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            String strsp = "select Sanpham.MaSP,tensp,giaban,giagoc,hinhanh,tinhtrang,'ChiTiet_SP.aspx?masp='+SanPham.MaSP from sanpham,ct_sanpham where sanpham.masp=CT_SanPham.MASP";

            SqlDataAdapter db = new SqlDataAdapter(strsp, cn);

            DataSet dt = new DataSet();
            db.Fill(dt, "sp");

            DataList1.DataSource = dt.Tables["sp"];
            DataList1.DataBind();

            if (Session["kh"] != null)
            {
                DataTable ar = (DataTable)Session["kh"];
                Label4.Text = "Chào bạn: " + ar.Rows[0]["Tenthanhvien"].ToString();
            }
        }
    }

    int Contain(DataTable dt, string m)
    {

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i]["MaSP"].ToString() == m.ToString())
                return i;
        }
        return -1;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string g1 = gb1.Text;
        string g2 = gb2.Text;

        string strcn = ConfigurationManager.ConnectionStrings["qlbantx"].ToString();
        SqlConnection cn = new SqlConnection(strcn);

        String strcmd = "select SanPham.MaSP,tensp,giaban,giagoc,hinhanh,tinhtrang,'ChiTiet_SP.aspx?masp='+cast(SanPham.MaSP as nvarchar(255)) from SanPham,CT_SanPham where sanpham.masp=CT_SanPham.MASP and Giaban>='" + g1 + "' and Giaban<=" + g2;
        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);

        DataSet ds = new DataSet();
        da.Fill(ds, "TK");

        DataList1.DataSource = ds.Tables["TK"];
        DataList1.DataBind();
    }


    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {

    }
    protected void ImageButton1_DataBinding(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        // lay ma san pham
        string masp = (e.CommandArgument.ToString());
        string tensp = ((Label)e.Item.FindControl("Label1")).Text;
        string giaban =(((Label)e.Item.FindControl("Label2")).Text);



        //kiem tra co gio hang chua
     
        if (Session["giohang"] == null) //chua co gio hang
        {
            //tao vung nho
            DataTable tbGiohang = new DataTable();
            tbGiohang.Rows.Clear();
            tbGiohang.Columns.Clear();
            tbGiohang.Columns.Add("MaSP");//, typeof(string));
            tbGiohang.Columns.Add("TenSP");//, typeof(string));
            tbGiohang.Columns.Add("GiaBan");//, typeof(string));
            tbGiohang.Columns.Add("SoLuong");//, typeof(int));

            tbGiohang.Rows.Add(masp, tensp, giaban, 1);
            Session["giohang"] = tbGiohang;
        }
        else
        {
            //tbGiohang = Session["giohang"] as DataTable;
            DataTable arr = (DataTable)Session["giohang"];

            int vt = Contain(arr, masp);

            if (vt == -1)
            {
                arr.Rows.Add(masp, tensp, giaban, 1);
            }
            else
            {
                arr.Rows[vt]["soluong"] = (int)arr.Rows[vt]["soluong"] + 1;
            }
            DataTable a = (DataTable)Session["giohang"];
            Label3.Text = "Số lượng sản phẩm trong giỏ hàng là: " + a.Rows.Count;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}