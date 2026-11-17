namespace fantasyBestiariumAnalizisDolgozat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SzornyAdatbazis db = new();
            List<Szorny> szornyek = db.GetSzornyekFromDatabase();

            foreach (Szorny s in szornyek)
            {
                Console.WriteLine(s.VeszelyessegiSzint);
            }
        }
    }
}