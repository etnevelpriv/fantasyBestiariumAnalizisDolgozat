namespace fantasyBestiariumAnalizisDolgozat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SzornyAdatbazis db = new();
            List<Szorny> szornyek = db.GetSzornyekFromDatabase();

            //foreach (Szorny s in szornyek)
            //{
            //    Console.WriteLine(s.VeszelyessegiSzint);
            //}

            SzornyElemzo elemzo = new(szornyek);
            //int osszesSzornySzama = elemzo.OsszesSzornySzama();
            //IEnumerable<string> veszelyesSzornyekNevei = elemzo.VeszelyesSzornyekNevei();
            //IEnumerable<string> egyediElohelyek = elemzo.EgyediElohelyek();
            //double atlagVeszelyesseg = elemzo.AtlagVeszelyesseg();
            //IEnumerable<Szorny> legveszelyesebbSzornyek = elemzo.LegveszelyesebbSzornyek();
            //IEnumerable<Szorny> mocsariVeszelyesSzornyek = elemzo.MocsariVeszelyesSzornyek();
            bool vanExtremTuzGyengeSzorny = elemzo.VanExtremTuzGyengeSzorny();


            //Console.WriteLine(osszesSzornySzama);
            //foreach (string nev in veszelyesSzornyekNevei) {
            //    Console.WriteLine(nev);
            //};
            //foreach (string elohely in egyediElohelyek)
            //{
            //    Console.WriteLine(elohely);
            //};
            //Console.WriteLine(atlagVeszelyesseg);
            //foreach (Szorny szorny in mocsariVeszelyesSzornyek)
            //{
            //    Console.WriteLine(szorny.Elohely);
            //};
            Console.WriteLine(vanExtremTuzGyengeSzorny);
        }
    }
}