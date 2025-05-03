<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>Wijaya Information Technology</title>
  <style>
    /* Reset and base */
    * {
      margin: 0; padding: 0; box-sizing: border-box;
    }
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      color: #eee;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: flex-start;
      align-items: center;
      padding: 0 15px 50px;
      line-height: 1.5;
      max-width: 100vw;
    }
    header {
      width: 100%;
      max-width: 900px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 0;
      border-bottom: 2px solid #3a9bdc;
      flex-wrap: wrap;
      gap: 10px;
    }
    .logo {
      font-weight: 900;
      font-size: 1.8rem;
      color: #3a9bdc;
      font-family: 'Courier New', Courier, monospace;
      letter-spacing: 2px;
      user-select: none;
    }
    nav {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
    }
    nav a {
      color: #9ecfff;
      text-decoration: none;
      font-weight: 600;
      font-size: 1rem;
      padding: 6px 14px;
      border-radius: 6px;
      transition: background-color 0.3s ease;
    }
    nav a:hover, nav a:focus {
      background-color: #3a9bdc;
      outline: none;
      color: #fff;
    }
    main {
      width: 100%;
      max-width: 900px;
      margin-top: 25px;
      background: rgba(255 255 255 / 0.05);
      border-radius: 12px;
      padding: 25px 30px;
      box-shadow: 0 0 18px rgba(58, 155, 220, 0.4);
    }
    .hero {
      text-align: center;
      margin-bottom: 40px;
      user-select: none;
    }
    .hero h1 {
      font-size: 2.4rem;
      color: #3a9bdc;
      margin-bottom: 10px;
      text-shadow: 0 0 10px #3a9bdc;
    }
    .hero p {
      font-size: 1.25rem;
      color: #dceeff;
      max-width: 600px;
      margin: 0 auto;
      line-height: 1.5;
    }
    section.tech-info h2, section.about h2, section.contact h2 {
      color: #3a9bdc;
      font-size: 1.8rem;
      margin-bottom: 20px;
      text-shadow: 0 0 7px #3a9bdc;
      font-weight: 700;
    }
    section.tech-info {
      margin-bottom: 40px;
    }
    .info-category {
      margin-bottom: 30px;
    }
    .info-category h3 {
      font-size: 1.3rem;
      color: #aad1ff;
      margin-bottom: 10px;
      text-shadow: 0 0 5px #3a9bdc;
      font-weight: 600;
    }
    .info-category ul {
      list-style: disc;
      padding-left: 20px;
      color: #cce2ff;
      font-size: 1rem;
      line-height: 1.5;
    }
    .info-category ul li {
      margin-bottom: 8px;
    }
    .articles-list {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 20px;
      margin-top: 15px;
    }
    .article {
      background: rgba(255 255 255 / 0.1);
      border-radius: 12px;
      padding: 15px 20px;
      box-shadow: inset 0 0 10px #3a9bdc;
      transition: transform 0.3s ease;
      cursor: pointer;
    }
    .article:hover, .article:focus-within {
      transform: translateY(-5px);
      background: rgba(58, 155, 220, 0.25);
      outline: none;
    }
    .article-title {
      font-weight: 700;
      font-size: 1.2rem;
      margin-bottom: 8px;
      color: #cce6ff;
    }
    .article-summary {
      font-size: 1rem;
      color: #dae8ff;
      margin-bottom: 10px;
    }
    .article-date {
      font-size: 0.8rem;
      color: #a3b8d1;
      font-style: italic;
      user-select: none;
    }
    section.about p {
      color: #cce6ff;
      font-size: 1.1rem;
      max-width: 680px;
      margin-bottom: 10px;
      line-height: 1.5;
    }
    section.contact p, section.contact a {
      color: #9ecfff;
      font-size: 1rem;
      margin-bottom: 8px;
      user-select: text;
      display: inline-block;
    }
    section.contact a:hover, section.contact a:focus {
      text-decoration: underline;
      color: #59a5fc;
      outline: none;
    }
    footer {
      width: 100%;
      max-width: 900px;
      margin-top: 50px;
      padding-top: 20px;
      border-top: 2px solid #3a9bdc;
      text-align: center;
      font-size: 0.95rem;
      color: #7191b3;
      user-select: none;
    }
    /* Dark mode toggle */
    .toggle-container {
      display: flex;
      justify-content: flex-end;
      margin-bottom: 18px;
      user-select: none;
    }
    .toggle-label {
      color: #cce6ff;
      padding-right: 10px;
      font-size: 1rem;
    }
    .toggle-switch {
      position: relative;
      display: inline-block;
      width: 44px;
      height: 24px;
    }
    .toggle-switch input {
      opacity: 0;
      width: 0;
      height: 0;
    }
    .slider {
      position: absolute;
      cursor: pointer;
      top: 0; left: 0; right: 0; bottom: 0;
      background-color: #bbb;
      border-radius: 34px;
      transition: .4s;
    }
    .slider:before {
      position: absolute;
      content: "";
      height: 18px;
      width: 18px;
      left: 3px;
      bottom: 3px;
      background-color: white;
      border-radius: 50%;
      transition: .4s;
    }
    input:checked + .slider {
      background-color: #3a9bdc;
    }
    input:checked + .slider:before {
      transform: translateX(20px);
    }
    /* Responsive design for mobile */
    @media (max-width: 420px) {
      body, main, header {
        padding-left: 12px;
        padding-right: 12px;
      }
      header {
        justify-content: center;
        gap: 15px;
      }
      nav a {
        font-size: 0.9rem;
        padding: 5px 10px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .hero p {
        font-size: 1rem;
        max-width: 100%;
      }
      section.tech-info h2, section.about h2, section.contact h2 {
        font-size: 1.4rem;
      }
      .info-category h3 {
        font-size: 1.1rem;
      }
      .article-title {
        font-size: 1rem;
      }
      .article-summary {
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>
  <header>
    <div class="logo" aria-label="Logo Wijaya Information Technology">Wijaya Information Technology</div>
    <nav role="navigation" aria-label="Menu navigasi utama">
      <a href="#home" tabindex="0">Home</a>
      <a href="#about" tabindex="0">About</a>
      <a href="#tech-info" tabindex="0">Technology Info</a>
      <a href="#contact" tabindex="0">Contact</a>
    </nav>
  </header>
  <main>
    <div class="toggle-container" aria-label="Toggle mode gelap atau terang">
      <span class="toggle-label">Dark Mode</span>
      <label class="toggle-switch">
        <input type="checkbox" id="darkModeToggle" aria-checked="false" aria-label="Toggle dark mode" />
        <span class="slider"></span>
      </label>
    </div>
    <section class="hero" id="home" tabindex="-1" aria-label="Bagian utama selamat datang">
      <h1>Selamat Datang Di Wijaya Information Technology</h1>
      <p>Sumber terpercaya anda untuk informasi lengkap dan terkini tentang berbagai perkembangan teknologi di masa sekarang.</p>
    </section>

    <section class="about" id="about" tabindex="-1" aria-label="Tentang situs Wijaya">
      <h2>Tentang Website Ini</h2>
      <p>Wijaya Information Technology adalah website yang didedikasikan untuk berbagi informasi dan berita terlengkap seputar kemajuan dan inovasi teknologi. Kami menyediakan artikel mendalam dan berita relevan yang membantu anda tetap update dengan cepat di dunia teknologi yang terus berkembang.</p>
    </section>

    <section class="tech-info" id="tech-info" tabindex="-1" aria-label="Informasi teknologi">
      <h2>Informasi Teknologi Lengkap</h2>

      <div class="info-category" aria-label="Kategori Kecerdasan Buatan">
        <h3>Kecerdasan Buatan (Artificial Intelligence)</h3>
        <ul>
          <li>Perkembangan deep learning dan machine learning untuk berbagai bidang industri.Banyak hal yang dulunya terasa tidak mungkin menjadi terealisasi berkat kemajuan teknologi digital, ilmu data, dan machine learning.  Siapa yang pernah mengira bahwa mesin dapat melakukan tugas-tugas yang dulunya hanya dapat dilakukan oleh manusia?  Pekerjaan yang sulit menjadi lebih mudah dan diselesaikan lebih cepat karena hal ini.Dalam istilah "Artificial Intelligence atau Kecerdasan Buatan", kecerdasan buatan mengacu pada simulasi kecerdasan manusia dalam mesin sehingga program yang ada di dalamnya dapat bertindak dan berpikir seperti manusia. Machine Leaning sendiri sebenarnya merupakan bagian dari kecerdasan buatan, dan dalam konteks manusia, Machine Learning adalah otak yang bertanggung jawab untuk berpikir.  Selanjutnya, akan ada yang disebut Deep Learning dalam Machine learning, yang dapat digambarkan sebagai jaringan saraf manusia.</li>
          <li>Penerapan AI dalam otomasi, pengolahan bahasa alami, dan sistem rekomendasi.Dengan memungkinkan sistem untuk belajar dari pengalaman dan menggunakan data, AI meningkatkan otomatisasi.  AI digunakan dalam otomasi industri untuk meningkatkan proses produksi, melakukan pemeliharaan prediktif untuk mesin, meningkatkan kontrol kualitas melalui visi komputer, dan mengelola rantai pasokan dengan lebih efisien.  Robotic Process Automation (RPA) cerdas menggunakan AI dapat mengotomatiskan pekerjaan administratif seperti pemrosesan faktur, entri data, dan manajemen dokumen di tempat kerja.  AI juga membantu dalam penyortiran otomatis dan optimalisasi rute pengangkutan, bahkan dalam pengelolaan limbah.  Otomatisasi berbasis AI meningkatkan efisiensi, akurasi, dan keamanan kerja.selain itu Proses linguistik naturalistik (NLP) juga bagian dari kecerdasan buatan yang memungkinkan komputer untuk memahami, menafsirkan, dan menghasilkan bahasa manusia.  Proses pemrosesan bahasa natural memiliki banyak aplikasi dalam kehidupan sehari-hari.  Asisten virtual seperti Siri dan Google Assistant, chatbot layanan pelanggan yang dapat menjawab pertanyaan kompleks, dan mesin penerjemah bahasa adalah contoh yang paling umum.  Analisis sentimen untuk memahami pendapat publik tentang teks di media sosial, ringkasan teks otomatis, dan pemrosesan dokumen yang sangat besar untuk mengekstraksi informasi penting adalah semua aplikasi bahasa natural yang sangat penting.  Metode ini menggunakan pembelajaran mesin dan pembelajaran mendalam untuk menganalisis pola bahasa, memahami makna kontekstual, dan bahkan menghasilkan teks yang konsisten dan relevan.</li>
          <li>Etika dan tantangan keamanan AI di masa depan.Etika dan tantangan keamanan AI di masa depan berkaitan erat dengan isu-isu privasi, keamanan data, transparansi, bias, dan dampak sosial yang muncul dari penggunaan teknologi kecerdasan buatan (AI).AI membutuhkan data dalam jumlah besar untuk melatih algoritma, yang sering kali melibatkan pengumpulan data pribadi. Tantangan etika utama adalah bagaimana menjaga privasi dan keamanan data tersebut agar tidak disalahgunakan atau bocor. Pengguna harus memiliki kontrol atas data mereka dan mengetahui bagaimana data tersebut diperlakukan. Perlindungan data pribadi harus dilakukan dengan izin yang jelas dan transparansi penuh.Dengan pendekatan yang holistik dan kolaboratif, tantangan etika dan keamanan AI dapat diatasi sehingga AI dapat dimanfaatkan secara maksimal untuk kemajuan dan kesejahteraan bersama tanpa mengorbankan nilai-nilai kemanusiaan dan keamanan data pribadi.</li>
        </ul>
      </div>

      <div class="info-category" aria-label="Kategori Internet of Things">
        <h3>Internet of Things (IoT)</h3>
        <ul>
          <li>Integrasi perangkat cerdas dalam kehidupan sehari-hari dan industri.Perangkat cerdas semakin erat terhubung ke berbagai aspek kehidupan kita, baik secara pribadi maupun profesional, berkat pengaruh Internet of Things (IoT) dan kecerdasan buatan (AI).  Transformasi ini meningkatkan efisiensi, kenyamanan, dan produktivitas.Berbagai bentuk penggunaan perangkat cerdas dalam kehidupan sehari-hari membantu menciptakan lingkungan yang lebih terhubung dan responsif.  Salah satu contoh paling nyata adalah rumah pintar, atau rumah pintar, di mana seseorang dapat menggunakan smartphone atau asisten virtual untuk mengontrol termostat, lampu, kunci pintu, dan sistem keamanan dari jarak jauh.Di ranah industri, integrasi perangkat cerdas, yang seringkali disebut sebagai Industrial IoT (IIoT), menjadi pilar utama Revolusi Industri 4.0. Penerapannya mencakup berbagai sektor krusial. Dalam manufaktur, sensor dan perangkat cerdas memungkinkan pemantauan kondisi mesin secara real-time, memungkinkan pemeliharaan prediktif untuk mengurangi downtime yang tidak terduga. Otomatisasi proses produksi menjadi lebih cerdas dengan robot kolaboratif dan sistem visi komputer untuk kontrol kualitas yang lebih akurat. Manajemen inventaris dan rantai pasokan juga dioptimalkan melalui pelacakan berbasis sensor dan analisis data.Dalam industri, integrasi perangkat cerdas memiliki banyak keuntungan, seperti peningkatan efisiensi operasional, pengurangan biaya, peningkatan kualitas produk, pengambilan keputusan yang lebih cepat dan berbasis data, dan peningkatan keselamatan kerja. Namun, masalah seperti keamanan data dan kebutuhan akan tenaga kerja yang berpengalaman untuk mengoperasikan dan mengelola sistem cerdas ini harus diatasi agar integrasi perangkat cerdas dapat mencapai potensi maksimalnya.</li>
          <li>Pengembangan smart home, smart city, dan smart healthcare.Pengembangan konsep smart home, smart city, dan smart healthcare merupakan bagian integral dari revolusi digital yang bertujuan untuk meningkatkan kualitas hidup dan efisiensi di berbagai sektor. Ketiganya saling terkait dan didukung oleh kemajuan teknologi seperti kecerdasan buatan (AI), Internet of Things (IoT), dan big data.Smart homes berfokus pada membuat rumah menjadi lebih nyaman, aman, dan efisien energi dengan mengotomatisasi dan mengontrolnya.  Komponen utamanya terdiri dari sensor seperti suhu, gerak, dan cahaya; aktuator seperti pengendali lampu dan kunci pintu; perangkat terhubung seperti termostat pintar, speaker pintar, dan kamera keamanan; dan platform sentral atau aplikasi seluler untuk manajemen.  Dengan sistem ini, pengguna dapat mengontrol berbagai bagian rumah dari jarak jauh, memantau penggunaan energi, meningkatkan keamanan rumah dengan sistem pengawasan canggih, dan bahkan membuat lingkungan rumah menjadi lebih sesuai dengan kebiasaan mereka.  Pengembangan rumah pintar menghadapi sejumlah masalah, termasuk masalah interoperabilitas perangkat dari berbagai produsen dan masalah keamanan data dan privasi.Pengembangan smart city bertujuan untuk menciptakan lingkungan perkotaan yang lebih efisien, berkelanjutan, dan layak huni melalui pemanfaatan teknologi informasi dan komunikasi (TIK). Pilar-pilar smart city umumnya mencakup smart governance, smart economy, smart environment, smart mobility, smart people, dan smart living. Implementasinya melibatkan integrasi sensor dan perangkat IoT di seluruh kota untuk pengumpulan data real-time terkait lalu lintas, kualitas udara, pengelolaan limbah, dan penggunaan energi. Data ini kemudian dianalisis menggunakan AI untuk mengambil keputusan yang tepat dalam pengelolaan kota, peningkatan layanan publik digital, optimalisasi sistem transportasi, pengelolaan energi yang efisien, dan peningkatan keamanan. Pengembangan smart city memerlukan kolaborasi erat antara pemerintah, sektor swasta, akademisi, dan masyarakat, serta investasi besar dalam infrastruktur TIK. Isu keamanan siber dan privasi data warga menjadi tantangan krusial dalam implementasinya. Beberapa kota di Indonesia telah mulai mengadopsi konsep smart city dengan fokus pada area-area tertentu seperti transportasi cerdas, layanan publik digital, dan pemantauan lingkungan.Pengembangan smart healthcare memanfaatkan teknologi digital untuk meningkatkan kualitas, efisiensi, dan aksesibilitas layanan kesehatan. Konsep ini mencakup smart hospital, telemedicine, rekam medis elektronik, dan pemantauan kesehatan jarak jauh. IoT dan sensor medis memungkinkan pengumpulan data vital pasien secara real-time, yang kemudian dianalisis menggunakan AI untuk diagnosis yang lebih cepat dan akurat, rekomendasi perawatan yang dipersonalisasi, dan deteksi dini kondisi kritis. Telemedicine memungkinkan konsultasi medis jarak jauh, memperluas akses ke layanan kesehatan terutama di daerah terpencil. Rekam medis elektronik mengintegrasikan data pasien, memudahkan berbagi informasi antarprofesional medis dan meningkatkan efisiensi administrasi rumah sakit. Pengembangan smart healthcare berpotensi mengurangi biaya kesehatan, meningkatkan hasil perawatan pasien, dan memungkinkan individu untuk lebih proaktif dalam mengelola kesehatan mereka. Namun, tantangan seperti interoperabilitas sistem informasi kesehatan yang berbeda, keamanan dan kerahasiaan data pasien, serta regulasi yang memadai perlu diatasi.</li>
          <li>Keamanan dan privasi dalam jaringan IoT global.Tantangan keamanan dan privasi dalam jaringan IoT global meliputi keragaman perangkat rentan, kurangnya standar keamanan seragam, risiko perangkat menjadi target serangan siber luas, dan kompleksitas pemantauan jaringan terdistribusi. Isu privasi muncul dari volume data sensitif yang dikumpulkan, kurangnya transparansi penggunaan data, dan risiko penyalahgunaan data pribadi.Solusinya mencakup penerapan keamanan dan privasi sejak tahap desain, pembaruan perangkat lunak rutin, penggunaan autentikasi kuat, segmentasi jaringan, enkripsi data, pengembangan standar global, regulasi yang memadai, edukasi pengguna, dan sistem pemantauan ancaman.</li>
        </ul>
      </div>

      <div class="info-category" aria-label="Kategori Teknologi 5G dan Jaringan">
        <h3>Teknologi 5G dan Jaringan</h3>
        <ul>
          <li>Implementasi jaringan 5G mempercepat konektivitas dan komunikasi real-time.Jaringan 5G (Generasi Kelima) adalah kemajuan besar dalam teknologi seluler yang dimaksudkan untuk melampaui kemampuan jaringan sebelumnya. Perbedaan paling penting dari 5G terletak pada peningkatan signifikan dalam dua komponen utama: bandwidth (kecepatan transfer data) dan latensi (waktu tunda).Dengan bandwidth yang jauh lebih besar, 5G memungkinkan pengiriman dan penerimaan data dalam volume yang sangat besar dan dengan kecepatan yang belum pernah tercapai.Peningkatan bandwidth ini secara langsung "mempercepat konektivitas" karena data dapat bergerak melalui jaringan dengan kapasitas yang jauh lebih besar.Selain kecepatan, keunggulan utama 5G adalah latensinya yang sangat rendah, bahkan bisa kurang dari 10 milidetik (dibandingkan dengan 4G yang puluhan hingga ratusan milidetik). Latensi yang rendah ini mengurangi waktu tunda antara saat data dikirim dan diterima, memungkinkan interaksi yang hampir instan.Dengan meminimalkan waktu tunda, 5G memungkinkan perangkat dan sistem untuk berkomunikasi dan berinteraksi seolah-olah berada di lokasi yang sama, membuka pintu bagi inovasi dan aplikasi baru yang sebelumnya tidak mungkin dilakukan dengan teknologi jaringan seluler yang ada. Oleh karena itu, implementasi 5G secara fundamental mempercepat konektivitas dan merevolusi kemampuan komunikasi real-time..</li>
          <li>Pengaruh 5G terhadap IoT, kendaraan otonom, dan augmented reality.Karakteristik utama jaringan 5G, seperti kecepatan tinggi, latensi sangat rendah, dan kapasitas koneksi masif, secara fundamental mengatasi keterbatasan jaringan sebelumnya dan membuka peluang baru di berbagai sektor. Diproyeksikan bahwa jaringan ini akan memiliki pengaruh besar dan transformatif terhadap pengembangan dan kemampuan Internet of Things (IoT), kendaraan otonom, dan augmented reality (AR).aringan 5G sangat memengaruhi IoT dengan kapasitas besar yang memungkinkan koneksi jutaan perangkat, serta kecepatan tinggi dan latensi rendah untuk komunikasi real-time yang efisien di smart city dan industri.Pada kendaraan otonom, 5G krusial karena latensi sangat rendah memungkinkan komunikasi instan antar kendaraan dan infrastruktur untuk keselamatan, sementara kecepatan tinggi mendukung pemrosesan data sensor dalam jumlah besar secara cepat.Untuk augmented reality (AR), 5G meningkatkan pengalaman secara signifikan berkat kecepatan tinggi untuk rendering konten kompleks tanpa buffering, dan latensi rendah yang memastikan sinkronisasi mulus antara dunia nyata dan elemen virtual, menciptakan interaksi yang realistis dan responsif.</li>
        </ul>
      </div>

      <div class="info-category" aria-label="Kategori Komputasi Kuantum">
        <h3>Komputasi Kuantum</h3>
        <ul>
          <li>Dasar-dasar teknologi komputer kuantum dan prinsip operasi quantum bits (qubits).Komputer kuantum fundamentally berbeda dari komputer klasik yang kita gunakan sehari-hari. Komputer klasik menyimpan dan memproses informasi dalam bentuk bit, yang hanya dapat merepresentasikan satu dari dua keadaan: 0 atau 1. Komputer kuantum, di sisi lain, memanfaatkan prinsip-prinsip fisika kuantum yang aneh dan menakjubkan untuk melakukan perhitungan.Inti dari kekuatan komputer kuantum terletak pada kemampuannya untuk memanfaatkan fenomena mekanika kuantum, terutama superposisi dan keterikatan (entanglement). Prinsip-prinsip ini memungkinkan komputer kuantum untuk memproses informasi dengan cara yang tidak mungkin dilakukan oleh komputer klasik, berpotensi memecahkan masalah kompleks tertentu jauh lebih cepat.Selain superposisi, keterikatan (entanglement) adalah fenomena kuantum penting lainnya yang dimanfaatkan oleh qubit. Ketika dua atau lebih qubit menjadi terikat, keadaan mereka saling bergantung erat, terlepas dari jarak fisik di antara mereka. Mengukur keadaan satu qubit yang terikat secara instan memengaruhi keadaan qubit lainnya yang terikat. Keterikatan memungkinkan korelasi kompleks antar qubit yang dapat digunakan untuk melakukan perhitungan yang kuat.Operasi pada qubit dilakukan menggunakan gerbang kuantum, yang analog dengan gerbang logika pada komputer klasik, tetapi beroperasi pada keadaan superposisi dan keterikatan qubit. Melalui urutan gerbang kuantum, komputer kuantum dapat memanipulasi keadaan qubit untuk melakukan komputasi.Salah satu tantangan terbesar dalam membangun komputer kuantum adalah menjaga keadaan kuantum qubit tetap stabil. Qubit sangat sensitif terhadap gangguan dari lingkungan (seperti panas atau medan elektromagnetik), yang dapat menyebabkan dekoherensi, yaitu hilangnya keadaan kuantum dan informasi yang disimpannya. Oleh karena itu, komputer kuantum seringkali memerlukan lingkungan operasional yang sangat terkontrol, seperti suhu mendekati nol mutlak.Dengan memanfaatkan superposisi dan keterikatan pada qubit, komputer kuantum memiliki potensi untuk merevolusi bidang-bidang seperti penemuan obat dan material baru, optimasi kompleks, pemecahan kode kriptografi klasik, dan simulasi sistem kuantum.</li>
        </ul>
      </div>

      <div class="info-category" aria-label="Artikel Terbaru">
        <h3>Artikel Terbaru</h3>
        <ul class="articles-list" role="list">
          <li class="article" tabindex="0" aria-label="Artikel: AI dan Automasi Produksi">
            <div class="article-title">AI dan Automasi Produksi Meningkatkan Efisiensi Industri</div>
            <div class="article-summary">Kemajuan AI memungkinkan sistem produksi otomatis yang lebih cepat dan akurat, meminimalkan kesalahan manusia dan meningkatkan produktivitas.</div>
            <div class="article-date">27 April 2024</div>
          </li>
          <li class="article" tabindex="0" aria-label="Artikel: 5G dan Transformasi Digital">
            <div class="article-title">5G Mempercepat Transformasi Digital di Seluruh Dunia</div>
            <div class="article-summary">Dengan kecepatan dan latensi ultra rendah, 5G membuka jalan untuk inovasi teknologi seperti kendaraan otonom dan telemedicine.</div>
            <div class="article-date">20 April 2024</div>
          </li>
          <li class="article" tabindex="0" aria-label="Artikel: Komputasi Kuantum dalam Dunia Nyata">
            <div class="article-title">Komputasi Kuantum: Mempersiapkan Masa Depan Teknologi</div>
            <div class="article-summary">Penelitian terbaru mempercepat penggunaan komputer kuantum untuk aplikasi praktis termasuk simulasi molekul dan optimasi.</div>
            <div class="article-date">15 April 2024</div>
          </li>
        </ul>
      </div>
    </section>

    <section class="contact" id="contact" tabindex="-1" aria-label="Informasi kontak">
      <h2>Kontak</h2>
      <p>Silakan hubungi saya untuk kerjasama atau pertanyaan melalui email:</p>
      <p><a href="mailto:wijayaalno@gmail.com" style="color: #9ecfff;">wijayaalno@gmail.com</a></p>
    </section>
  </main>

  <footer>
    &copy; 2024 Wijaya Information Technology. All rights reserved.<br />
    Website domain: <a href="https://wijayainfotech.example.com" style="color:#9ecfff;" target="_blank" rel="noopener noreferrer">https://wijayainfotech.example.com</a>
  </footer>

  <script>
    // Dark mode toggle functionality
    const toggle = document.getElementById('darkModeToggle');
    toggle.addEventListener('change', () => {
      if (toggle.checked) {
        document.body.style.background = 'linear-gradient(135deg, #141e30, #243b55)';
        document.body.style.color = '#ddd';
      } else {
        document.body.style.background = 'linear-gradient(135deg, #0f2027, #203a43, #2c5364)';
        document.body.style.color = '#eee';
      }
    });
  </script>
</body>
</html>
