using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);
    }

    protected void login_Click(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string qry = "select * from userdata WHERE username='" + name.Text + "' AND password='" + password.Text + "'";
        
        cn.Open();
        SqlCommand cmd = new SqlCommand(qry, cn);
        Response.Write(qry);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr[7].ToString() == "User")
            {
                Session["user"] = dr["username"];
                Response.Write("<script>alert('Sucessfully Log In');</script>");
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Redirect("admin//index.aspx");
            }

        }
        else
        {
            Response.Write("<script>alert('fail..')</script>");
        }
        cn.Close();
    }
}