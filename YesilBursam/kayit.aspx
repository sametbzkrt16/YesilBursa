<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="YesilBursam.kayit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Ol</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #form1 {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
            display: block;
            text-align: center;
            margin-top: 15px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Kayıt Ol</h2>
                        <asp:Label ID="lblHata" runat="server" CssClass="error" Visible="false"></asp:Label>

            <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
            <input type="text" id="txtKullaniciAdi" runat="server" />
            <label for="txtEmail">Email:</label>
            <input type="email" id="txtEmail" runat="server" />
            <label for="txtSifre">Şifre:</label>
            <input type="password" id="txtSifre" runat="server" />
            <label for="txtSifreTekrar">Şifre (Tekrar):</label>
            <input type="password" id="txtSifreTekrar" runat="server" />
            <button type="submit" id="btnKayit" runat="server" onserverclick="btnKayit_Click">Kayıt Ol</button>
            <a href="giris.aspx">Üyeyseniz giriş yap</a>
        </div>
    </form>
</body>
</html>
