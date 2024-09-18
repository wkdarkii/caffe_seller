namespace olcak2
{
    public class Product
    {
        public int id { get; set; }
        public string Buyukbaslik { get; set; }
        public string ust_baslik { get; set; }
        public string text { get; set; }
        public string img { get; set; }
        public bool aktif { get; set; }
    }


    public class iletişim
    {
        public int id { get; set; }
        public string? Buyukbaslik { get; set; }
        public string? ust_baslik { get; set; }
        public string? alt_baslik { get; set; }
        public string? img { get; set; }
        public string? adres { get; set; }
        public string? slogan { get; set; }
        public string? tell_no { get; set; }
    }

    public class home
    {
        public int id { get; set; }
        public string Buyukbaslik { get; set; }
        public string ust_baslik { get; set; }
        public string text { get; set; }
        public string img { get; set; }
        public string alt_ust_baslik { get; set; }
        public string alt_ust_Buyukbaslik { get; set; }
        public string alt_text { get; set; }
    }

    public class about
    {
        public int id { get; set; }
        public string Baslik { get; set; }
        public string ust_baslik { get; set; }
        public string text { get; set; }
        public string img { get; set; }
    }

    public class store
    {
        public int id { get; set; }
        public string birinci_li { get; set; }
        public string ikinci_li { get; set; }



    }


    public class store2
    {
        public int id { get; set; }
        public string ust_baslik { get; set; }
        public string baslik { get; set; }
        public string alt_ustbaslik { get; set; }
        public string adres { get; set; }
        public string slogan { get; set; }
        public string tellno { get; set; }

    }
    public class login_paneli
    {
        public int id { get; set; }
        public string kad { get; set; }
        public string sifre { get; set; }
        public int alt_ustbaslik { get; set; }


    }
}
