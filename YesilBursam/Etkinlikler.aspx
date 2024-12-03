<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Etkinlikler.aspx.cs" Inherits="YesilBursam.Etkinlikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* Genel Sayfa Konsepti */
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        /* Flex Container */
        .container {
            display: flex;
            justify-content: space-between;
            gap: 30px;
            margin-top: 20px;
        }

        /* Sol ve Sağ Kutucuklar */
        .event-box {
            flex: 1;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
            overflow-y: auto;
            max-height: 500px;
        }

        .event-box:hover {
            transform: translateY(-5px);
        }

        h3 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #007bff;
        }

        .arama-cubugu {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 8px;
            border: 1px solid #ced4da;
        }

        .arama-button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .arama-button:hover {
            background-color: #218838;
        }

        .event-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .event-grid th, .event-grid td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .event-grid th {
            background-color: #f8f9fa;
            font-weight: bold;
        }

        .event-card {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }
    </style>

    <div class="container">
        <!-- Belediye Etkinlikleri -->
        <div class="event-box">
            <h3>Belediye Etkinlikleri Arama</h3>
            <input type="text" id="searchInput1" class="arama-cubugu" placeholder="Etkinlik Ara..." onkeyup="searchEvent('gvBelediyeEtkinlikleri', 'searchInput1')">
            <button class="arama-button">Ara</button>

            <h2>Belediye Etkinlikleri</h2>
            <asp:GridView ID="gvBelediyeEtkinlikleri" runat="server" AutoGenerateColumns="False" CssClass="event-grid">
                <Columns>
                    <asp:BoundField DataField="EtkinlikAdi" HeaderText="Etkinlik Adı" />
                    <asp:BoundField DataField="Tarih" HeaderText="Tarih" />
                    <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- Bursa Etkinlikleri -->
        <div class="event-box">
            <h3>Bursa Etkinlikleri Arama</h3>
            <input type="text" id="searchInput2" class="arama-cubugu" placeholder="Etkinlik Ara..." onkeyup="searchEvent('gvBursaEtkinlikleri', 'searchInput2')">
            <button class="arama-button">Ara</button>

            <h2>Bursa Etkinlikleri</h2>
            <asp:GridView ID="gvBursaEtkinlikleri" runat="server" AutoGenerateColumns="False" CssClass="event-grid">
                <Columns>
                    <asp:BoundField DataField="EtkinlikAdi" HeaderText="Etkinlik Adı" />
                    <asp:BoundField DataField="Tarih" HeaderText="Tarih" />
                    <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <script>
        // Arama Fonksiyonu
        function searchEvent(gridId, inputId) {
            var input = document.getElementById(inputId);
            var filter = input.value.toLowerCase();
            var grid = document.getElementById(gridId);
            var rows = grid.getElementsByTagName('tr');

            for (var i = 1; i < rows.length; i++) {
                var cols = rows[i].getElementsByTagName('td');
                var match = false;

                for (var j = 0; j < cols.length; j++) {
                    if (cols[j].innerText.toLowerCase().includes(filter)) {
                        match = true;
                        break;
                    }
                }
                rows[i].style.display = match ? '' : 'none';
            }
        }
    </script>
</asp:Content>
