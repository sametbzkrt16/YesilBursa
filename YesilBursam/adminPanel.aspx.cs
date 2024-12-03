using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace YesilBursam
{
    public partial class adminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            // Alanları kontrol et
            if (string.IsNullOrWhiteSpace(txtYerAdi.Text))
            {
                lblError.Text = "Yer Adı boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtAciklama.Text))
            {
                lblError.Text = "Açıklama boş bırakılamaz.";
                return;
            }

            if (!fileUploadResim.HasFile)
            {
                lblError.Text = "Resim yüklenmeli.";
                return;
            }

            string yerAdi = txtYerAdi.Text;
            string aciklama = txtAciklama.Text;
            string resimYolu = null;

            // Resim yükle
            string dosyaAdi = Path.GetFileName(fileUploadResim.FileName);
            string kayitYolu = Server.MapPath("~/YuklenenResimler/" + dosyaAdi);
            fileUploadResim.SaveAs(kayitYolu);
            resimYolu = "~/YuklenenResimler/" + dosyaAdi;

            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO GezilecekYerler (YerAdi, Aciklama, ResimYolu) VALUES (@YerAdi, @Aciklama, @ResimYolu)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@YerAdi", yerAdi);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);
                    cmd.Parameters.AddWithValue("@ResimYolu", resimYolu);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMessage.Text = "Gezilecek yer başarıyla eklendi.";
                        lblError.Text = ""; // Hata mesajını temizle
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Bir hata oluştu: " + ex.Message;
                        lblMessage.Text = "";
                    }
                }
            }
        }

        protected void btnYemekEkle_Click(object sender, EventArgs e)
        {
            // Alanları kontrol et
            if (string.IsNullOrWhiteSpace(txtYemekAdi.Text))
            {
                lblYemekError.Text = "Yemek Adı boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtYemekAciklama.Text))
            {
                lblYemekError.Text = "Açıklama boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtFiyat.Text))
            {
                lblYemekError.Text = "Fiyat boş bırakılamaz.";
                return;
            }

            if (!fileUploadYemekResim.HasFile)
            {
                lblYemekError.Text = "Resim yüklenmeli.";
                return;
            }

            string yemekAdi = txtYemekAdi.Text;
            string aciklama = txtYemekAciklama.Text;
            string fiyat = txtFiyat.Text;
            string resimYolu = null;

            // Resim yükle
            string dosyaAdi = Path.GetFileName(fileUploadYemekResim.FileName);
            string kayitYolu = Server.MapPath("~/YuklenenResimler/" + dosyaAdi);
            fileUploadYemekResim.SaveAs(kayitYolu);
            resimYolu = "~/YuklenenResimler/" + dosyaAdi;

            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Yemekler (YemekAdi, Aciklama, Fiyat, ResimYolu) VALUES (@YemekAdi, @Aciklama, @Fiyat, @ResimYolu)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@YemekAdi", yemekAdi);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);
                    cmd.Parameters.AddWithValue("@Fiyat", fiyat);
                    cmd.Parameters.AddWithValue("@ResimYolu", resimYolu);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblYemekMessage.Text = "Yemek başarıyla eklendi.";
                        lblYemekError.Text = ""; // Hata mesajını temizle
                    }
                    catch (Exception ex)
                    {
                        lblYemekError.Text = "Bir hata oluştu: " + ex.Message;
                        lblYemekMessage.Text = "";
                    }
                }
            }
        }
        protected void btnHavaEkle_Click(object sender, EventArgs e)
        {
            string tarih = txtTarih.Text; // Tarih alanı eklenmeli
            string sicaklik = txtSicaklik.Text; // Sıcaklık alanı eklenmeli
            string durum = txtDurum.Text; // Durum alanı eklenmeli

            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO HavaDurumu (Tarih, Sıcaklık, Durum) VALUES (@Tarih, @Sicaklik, @Durum)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Sicaklik", sicaklik);
                    cmd.Parameters.AddWithValue("@Durum", durum);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblHavaMessage.Text = "Hava durumu başarıyla eklendi.";
                        lblHavaError.Text = ""; // Hata mesajını temizle
                    }
                    catch (Exception ex)
                    {
                        lblHavaError.Text = "Bir hata oluştu: " + ex.Message;
                        lblHavaMessage.Text = "";
                    }
                }
            }
        }
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "UPDATE Hakkimizda SET Metin = @metin WHERE HakkimizdaId = @id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@metin", txtHakkimizda.Text); // Metin kutusundan gelen değer
                    cmd.Parameters.AddWithValue("@id", 1); // Güncellenmesi gereken kayıt ID'si

                    try
                    {
                        con.Open();
                        int result = cmd.ExecuteNonQuery(); // Güncelleme işlemi

                        if (result > 0)
                        {
                            lblMessage.Text = "Hakkımızda metni başarıyla güncellendi.";
                        }
                        else
                        {
                            lblError.Text = "Güncelleme işlemi başarısız oldu. Kayıt bulunamadı.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Bir hata oluştu: " + ex.Message;
                    }
                }
            }
        }

        protected void btnBursaEkle_Click(object sender, EventArgs e)
        {
            // Alanları kontrol et
            if (string.IsNullOrWhiteSpace(txtBursaEtkinlikAdi.Text))
            {
                lblBursaError.Text = "Etkinlik Adı boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBursaTarih.Text))
            {
                lblBursaError.Text = "Tarih boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBursaAciklama.Text))
            {
                lblBursaError.Text = "Açıklama boş bırakılamaz.";
                return;
            }

            string etkinlikAdi = txtBursaEtkinlikAdi.Text;
            string tarih = txtBursaTarih.Text;
            string aciklama = txtBursaAciklama.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO BursaEtkinlikleri (EtkinlikAdi, Tarih, Aciklama) VALUES (@EtkinlikAdi, @Tarih, @Aciklama)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@EtkinlikAdi", etkinlikAdi);
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblBursaMessage.Text = "Bursa etkinliği başarıyla eklendi.";
                        lblBursaError.Text = ""; // Hata mesajını temizle
                    }
                    catch (Exception ex)
                    {
                        lblBursaError.Text = "Bir hata oluştu: " + ex.Message;
                        lblBursaMessage.Text = "";
                    }
                }
            }
        }

        protected void btnBelediyeEkle_Click(object sender, EventArgs e)
        {
            // Alanları kontrol et
            if (string.IsNullOrWhiteSpace(txtBelediyeEtkinlikAdi.Text))
            {
                lblBelediyeError.Text = "Etkinlik Adı boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBelediyeTarih.Text))
            {
                lblBelediyeError.Text = "Tarih boş bırakılamaz.";
                return;
            }

            if (string.IsNullOrWhiteSpace(txtBelediyeAciklama.Text))
            {
                lblBelediyeError.Text = "Açıklama boş bırakılamaz.";
                return;
            }

            string etkinlikAdi = txtBelediyeEtkinlikAdi.Text;
            string tarih = txtBelediyeTarih.Text;
            string aciklama = txtBelediyeAciklama.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["bursaDBConnaction"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO BelediyeEtkinlikleri (EtkinlikAdi, Tarih, Aciklama) VALUES (@EtkinlikAdi, @Tarih, @Aciklama)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@EtkinlikAdi", etkinlikAdi);
                    cmd.Parameters.AddWithValue("@Tarih", tarih);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblBelediyeMessage.Text = "Belediye etkinliği başarıyla eklendi.";
                        lblBelediyeError.Text = ""; // Hata mesajını temizle
                    }
                    catch (Exception ex)
                    {
                        lblBelediyeError.Text = "Bir hata oluştu: " + ex.Message;
                        lblBelediyeMessage.Text = "";
                    }
                }
            }
        }


        protected void btnAnaSayfa_Click(object sender, EventArgs e)
        {
            // AnaSayfa.aspx sayfasına yönlendirme
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}
