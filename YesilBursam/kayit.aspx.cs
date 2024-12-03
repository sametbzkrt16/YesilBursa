using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YesilBursam
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void btnKayit_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Value;
            string email = txtEmail.Value;
            string sifre = txtSifre.Value;
            string sifreTekrar = txtSifreTekrar.Value;

            if (sifre != sifreTekrar)
            {
                // Şifreler eşleşmiyor mesajı
                lblHata.Text = "Şifreler eşleşmiyor.";
                lblHata.Visible = true;
                return;
            }

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString))
            {
                conn.Open();
                try
                {
                    // Kullanıcı adının mevcut olup olmadığını kontrol et
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Kullanici WHERE KullaniciAdi = @KullaniciAdi OR Email = @Email", conn);
                    checkCmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    checkCmd.Parameters.AddWithValue("@Email", email);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        lblHata.Text = "Kullanıcı adı veya e-posta zaten mevcut.";
                        lblHata.Visible = true;
                        return;
                    }

                    // Kullanıcıyı veritabanına ekle
                    SqlCommand cmd = new SqlCommand("INSERT INTO Kullanici (KullaniciAdi, Sifre, Email, Tarih) VALUES (@KullaniciAdi, @Sifre, @Email, @Tarih)", conn);
                    cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                    cmd.Parameters.AddWithValue("@Sifre", sifre);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Tarih", DateTime.Now);

                    cmd.ExecuteNonQuery();

                    // Kayıt başarılı olduğunda yönlendirme yapabilirsin
                    Response.Redirect("giris.aspx");
                }
                catch (SqlException ex)
                {
                    // Veritabanı hatası durumunda mesaj ver
                    lblHata.Text = "Bir hata oluştu: " + ex.Message;
                    lblHata.Visible = true;
                }
            }
        }

    }
}