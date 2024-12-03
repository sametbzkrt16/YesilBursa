<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminGiris.aspx.cs" Inherits="YesilBursam.adminGiris" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Girişi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Girişi</h2>
            <asp:Label ID="lblHata" runat="server" CssClass="error" Visible="false"></asp:Label>
            <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
            <input type="text" id="txtKullaniciAdi" runat="server" />
            <label for="txtSifre">Şifre:</label>
            <input type="password" id="txtSifre" runat="server" />
            <button type="submit" id="btnGiris" runat="server" onserverclick="btnGiris_Click">Giriş Yap</button>
        </div>
    </form>
</body>
</html>