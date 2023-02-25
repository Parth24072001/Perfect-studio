using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_showitem : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["perfectstudio"].ConnectionString);
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }


    protected void delete_Click(object sender, EventArgs e)
    {
        
    }
}
