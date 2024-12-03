<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="YesilBursam.adminPanel" %>
<form id="form1" runat="server">
    <style>
        /* Stil kutucukları için */
.box {
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 8px;
}

.box h3 {
    color: #4CAF50;
    margin-bottom: 10px;
}

.box input, .box textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

.box input[type="file"] {
    border: none;
}

.box button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.box button:hover {
    background-color: #45a049;
}

.box label {
    display: block;
    margin-top: 10px;
}

.box .error {
    color: red;
}

.box .success {
    color: green;
}

    </style>
    <div>
        <h2>Admin Paneli</h2>

        <div class="box">
            <h3>Gezilecek Yer Ekle</h3>
            <asp:TextBox ID="txtYerAdi" runat="server" placeholder="Yer Adı" />
            <asp:TextBox ID="txtAciklama" runat="server" placeholder="Açıklama" TextMode="MultiLine" />
            <asp:FileUpload ID="fileUploadResim" runat="server" />
            <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <h3>Yemek Ekle</h3>
            <asp:TextBox ID="txtYemekAdi" runat="server" placeholder="Yemek Adı" />
            <asp:TextBox ID="txtYemekAciklama" runat="server" placeholder="Açıklama" TextMode="MultiLine" />
            <asp:TextBox ID="txtFiyat" runat="server" placeholder="Fiyat" />
            <asp:FileUpload ID="fileUploadYemekResim" runat="server" />
            <asp:Button ID="btnYemekEkle" runat="server" Text="Ekle" OnClick="btnYemekEkle_Click" />
            <asp:Label ID="lblYemekMessage" runat="server" ForeColor="Green" />
            <asp:Label ID="lblYemekError" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <h3>Hava Durumu Ekle</h3>
            <asp:TextBox ID="txtTarih" runat="server" placeholder="Tarih" />
            <asp:TextBox ID="txtSicaklik" runat="server" placeholder="Sıcaklık" />
            <asp:TextBox ID="txtDurum" runat="server" placeholder="Durum" />
            <asp:Button ID="btnHavaEkle" runat="server" Text="Ekle" OnClick="btnHavaEkle_Click" />
            <asp:Label ID="lblHavaMessage" runat="server" ForeColor="Green" />
            <asp:Label ID="lblHavaError" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <h3>Hakkımızda Güncelle</h3>
            <asp:TextBox ID="txtHakkimizda" runat="server" TextMode="MultiLine" placeholder="Hakkımızda metnini yazın" />
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" OnClick="btnGuncelle_Click" />
            <asp:Label ID="Label1" runat="server" ForeColor="Green" />
            <asp:Label ID="Label2" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <h3>Bursa Etkinlik Ekle</h3>
            <asp:TextBox ID="txtBursaEtkinlikAdi" runat="server" placeholder="Etkinlik Adı" />
            <asp:TextBox ID="txtBursaTarih" runat="server" placeholder="Tarih" />
            <asp:TextBox ID="txtBursaAciklama" runat="server" placeholder="Açıklama" TextMode="MultiLine" />
            <asp:Button ID="btnBursaEkle" runat="server" Text="Ekle" OnClick="btnBursaEkle_Click" />
            <asp:Label ID="lblBursaMessage" runat="server" ForeColor="Green" />
            <asp:Label ID="lblBursaError" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <h3>Belediye Etkinlik Ekle</h3>
            <asp:TextBox ID="txtBelediyeEtkinlikAdi" runat="server" placeholder="Etkinlik Adı" />
            <asp:TextBox ID="txtBelediyeTarih" runat="server" placeholder="Tarih" />
            <asp:TextBox ID="txtBelediyeAciklama" runat="server" placeholder="Açıklama" TextMode="MultiLine" />
            <asp:Button ID="btnBelediyeEkle" runat="server" Text="Ekle" OnClick="btnBelediyeEkle_Click" />
            <asp:Label ID="lblBelediyeMessage" runat="server" ForeColor="Green" />
            <asp:Label ID="lblBelediyeError" runat="server" ForeColor="Red" />
        </div>

        <div class="box">
            <asp:Button ID="btnAnaSayfa" runat="server" Text="Ana Sayfa" OnClick="btnAnaSayfa_Click" />
        </div>
    </div>
</form>
