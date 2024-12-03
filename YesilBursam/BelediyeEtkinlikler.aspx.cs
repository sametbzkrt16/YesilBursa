using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Web.UI;

namespace YesilBursam
{
    public partial class BelediyeEtkinlikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBelediyeEtkinlikleri();
            }
        }
        [System.Web.Services.WebMethod]
        public static string GetBelediyeEtkinlikleri()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM BelediyeEtkinlikleri";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                var eventsList = new System.Collections.Generic.List<object>();
                foreach (DataRow row in dt.Rows)
                {
                    eventsList.Add(new
                    {
                        EtkinlikAdi = row["EtkinlikAdi"].ToString(),
                        Tarih = Convert.ToDateTime(row["Tarih"]).ToString("dd.MM.yyyy"),
                        Aciklama = row["Aciklama"].ToString()
                    });
                }
                return new JavaScriptSerializer().Serialize(eventsList);
            }
        }
    }
}
