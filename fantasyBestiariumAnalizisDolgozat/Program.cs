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
            int osszesSzornySzama = elemzo.OsszesSzornySzama();
            IEnumerable<string> veszelyesSzornyekNevei = elemzo.VeszelyesSzornyekNevei();
            IEnumerable<string> egyediElohelyek = elemzo.EgyediElohelyek();
            double atlagVeszelyesseg = elemzo.AtlagVeszelyesseg();
            IEnumerable<Szorny> legveszelyesebbSzornyek = elemzo.LegveszelyesebbSzornyek();
            IEnumerable<Szorny> mocsariVeszelyesSzornyek = elemzo.MocsariVeszelyesSzornyek();
            bool vanExtremTuzGyengeSzorny = elemzo.VanExtremTuzGyengeSzorny();
            IEnumerable<string> szornyekSzamaElohelyenkent  = elemzo.SzornyekSzamaElohelyenkent();

            Console.Write($"Az osszes szorny szama: {osszesSzornySzama}");
            Console.Write($"\n\nVeszelyes szornyek nevei: ");
            foreach (string nev in veszelyesSzornyekNevei)
            {
                Console.Write($"{nev}, ");
            }
            Console.Write($"\n\nEgyedi elohelyek: ");
            foreach (string elohely in egyediElohelyek)
            {
                Console.Write($"{elohely}, ");
            }
            ;
            Console.Write($"\n\nAtlagos veszelyesseg: {atlagVeszelyesseg}");
            Console.Write($"\n\nVeszelyes mocsari szornyek nevei: ");
            foreach (Szorny szorny in mocsariVeszelyesSzornyek)
            {
                Console.Write($"{szorny.Nev}, ");
            }
            ;
            Console.Write($"\n\nVan extrem tuz gyenge szorny? : {vanExtremTuzGyengeSzorny}");
            Console.WriteLine($"\n\nSzornyek szam elohelyenkent: ");
            foreach (string szoveg in szornyekSzamaElohelyenkent)
            {
                Console.WriteLine(szoveg);
            }
            ;

        }
    }
}