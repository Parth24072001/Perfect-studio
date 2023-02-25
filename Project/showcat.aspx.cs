using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class showcat : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);

        string id = Request.QueryString["id"];
        string qry = "select * from venders WHERE main_cat='" + Request.QueryString["id"] + "'";

        //if (id == "wedding")
        //{
        //    Response.Write("<script>alert('wedding..')</script>");
            
         
        //}
        //else if(id == "prewedding")
        //{
        //    Response.Write("<script>alert('pre-wedding..')</script>");
            
        //}
        //else if(id == 3.ToString())
        //{
        //    Response.Write("<script>alert('birthday..')</script>");

        //}
    }
}