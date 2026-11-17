using System;
using System.Collections.Generic;
using System.Text;

namespace fantasyBestiariumAnalizisDolgozat
{
    internal class SzornyElemzo
    {
        private List<Szorny> Szornyek { get; set; }

        public SzornyElemzo(List<Szorny> szornyek) {
            this.Szornyek = szornyek;
        }

        public int OsszesSzornySzama()
        {
            return this.Szornyek.Count;
        }

        public IEnumerable<string> VeszelyesSzornyekNevei()
        {
            return this.Szornyek.Where(szorny=>szorny.VeszelyesE == true).Select(szorny=>szorny.Nev).ToList();
        }

        public IEnumerable<string> EgyediElohelyek()
        {
            return this.Szornyek.GroupBy(szorny=>szorny.Elohely).Select(szornyekGrouped=>szornyekGrouped.Key).ToList();
        }
    }
}
