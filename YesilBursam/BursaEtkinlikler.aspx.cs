using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace YesilBursam
{
    public partial class BursaEtkinlikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBursaEtkinlikleri();
            }
        }

        private void LoadBursaEtkinlikleri()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM BursaEtkinlikleri ORDER BY Tarih DESC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptBursaEtkinlikleri.DataSource = dt;
                rptBursaEtkinlikleri.DataBind();
            }
        }
    }
}
