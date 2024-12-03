using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace YesilBursam
{
    public partial class Yemekler : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadYemekler();
            }
        }

        private void LoadYemekler()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT YemekAdi, Aciklama, Fiyat, ResimYolu FROM Yemekler";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        RepeaterYemekler.DataSource = dt;
                        RepeaterYemekler.DataBind();
                    }
                }
            }
        }
    }
}
