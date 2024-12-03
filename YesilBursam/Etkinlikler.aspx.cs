using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace YesilBursam
{
    public partial class Etkinlikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBelediyeEtkinlikleri();
                LoadBursaEtkinlikleri();
            }
        }

        private void LoadBelediyeEtkinlikleri()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM BelediyeEtkinlikleri";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvBelediyeEtkinlikleri.DataSource = dt;
                gvBelediyeEtkinlikleri.DataBind();
            }
        }

        private void LoadBursaEtkinlikleri()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM BursaEtkinlikleri";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvBursaEtkinlikleri.DataSource = dt;
                gvBursaEtkinlikleri.DataBind();
            }
        }
    }
}
