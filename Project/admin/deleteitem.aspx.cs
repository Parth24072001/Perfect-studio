using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_deleteitem : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);

        String qry = "delete from venders where id='" + Request.QueryString["id"] + "'";

         cn.Open();
         SqlCommand cmd = new SqlCommand(qry, cn);
         Response.Write(qry);
         int res = cmd.ExecuteNonQuery();
         if (res > 0)
         {
             Response.Write("<script>alert('done..')</script>");
             Response.Redirect("~/admin/showitem.aspx");
         }
         else
         {
             Response.Write("<script>alert('fail..')</script>");
         }
         cn.Close();

        
    }
}