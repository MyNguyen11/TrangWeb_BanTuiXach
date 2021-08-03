using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["kh"] != null)
        {
            DataTable ar = (DataTable)Session["kh"];
            Label4.Text = "Chào bạn: " + ar.Rows[0]["Tenthanhvien"].ToString();
        }

        if (Session["giohang"] != null)
        {
            DataTable dt = (DataTable)Session["giohang"];
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}