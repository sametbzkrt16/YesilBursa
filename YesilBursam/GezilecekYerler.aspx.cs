using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YesilBursam
{
    public partial class GezilecekYerler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGezilecekYerler();
            }
        }
            private void LoadGezilecekYerler()
            {
                string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = "SELECT YerAdi, Aciklama , ResimYolu FROM GezilecekYerler";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                        GezilecekYerRepeater.DataSource = dt;
                        GezilecekYerRepeater.DataBind();
                        }
                    }
                }
            }
        }
    }