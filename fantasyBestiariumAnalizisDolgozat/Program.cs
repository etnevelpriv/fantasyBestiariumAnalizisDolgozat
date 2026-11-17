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

            Console.WriteLine(osszesSzornySzama);
            foreach (string nev in veszelyesSzornyekNevei) {
                Console.WriteLine(nev);
            };

        }
    }
}