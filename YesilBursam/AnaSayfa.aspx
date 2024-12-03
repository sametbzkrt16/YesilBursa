<%@ Page Title="Bursa Bilgileri" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YesilBursam.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h2 {
            color: #4CAF50;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 10px;
        }
        .container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        p {
            font-size: 16px;
            margin: 5px 0;
        }
    </style>

<body>
    
        <div class="container">
            <h2>Bursa Belediyesi</h2>
            <p>Belediye: Bursa Büyükşehir Belediyesi</p>
            <p>Başkan: MUSTAFA BOZBEY</p>
            <p>Parti: CUMHURİYET HALK PARTİSİ</p>

            <h2>Bursa Nüfusu</h2>
            <p>Nüfus: 3,101,551</p>

            <h2>Bursa İlçeleri</h2>
            <table>
                <thead>
                    <tr>
                        <th>İlçe Adı</th>
                        <th>İlçe Başkanı</th>
                        <th>Parti</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Osmangazi</td>
                        <td>Erkan Aydın</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>Nilüfer</td>
                        <td>Şadi Özdemir</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>Yıldırım</td>
                        <td>Oktay Yılmaz</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Gemlik</td>
                        <td>Şükrü Deviren</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>Mudanya</td>
                        <td>Deniz Dalgıç</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>Mustafakemalpaşa</td>
                        <td>Şükrü Erdem</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>İnegöl</td>
                        <td>Alper Taban</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Kestel</td>
                        <td>Ferhat Erol</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Orhaneli</td>
                        <td>Ali Osman Tayır</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Orhangazi</td>
                        <td>Bekir Aydın</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Büyükorhan</td>
                        <td>Kamil Turhan</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Harmancık</td>
                        <td>Haşim Ali Arıkan</td>
                        <td>CHP</td>
                    </tr>
                    <tr>
                        <td>Gürsu</td>
                        <td>Mustafa Işık</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Karacabey</td>
                        <td>Fatih Karabatı</td>
                        <td>İYİ Parti</td>
                    </tr>
                    <tr>
                        <td>Keles</td>
                        <td>Ali Doğru</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>İznik</td>
                        <td>Kağan Mehmet Usta</td>
                        <td>AK Parti</td>
                    </tr>
                    <tr>
                        <td>Yenişehir</td>
                        <td>Ercan Özel</td>
                        <td>İYİ Parti</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

</asp:Content>
