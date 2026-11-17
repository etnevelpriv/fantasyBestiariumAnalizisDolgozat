using System;
using System.Collections.Generic;
using System.Text;

namespace fantasyBestiariumAnalizisDolgozat
{
    internal class Szorny
    {
        public int Id { get; private set; }
        public string Nev { get; private set; }
        public int VeszelyessegiSzint {  get; private set; }
        public string Elohely {  get; private set; }
        public string FoGyengeseg { get; private set; }
        public string LeggyakoribbZsakmany  { get; private set; }
        public bool VeszelyesE {  get; private set; }

        public Szorny (int id, string nev, int veszelyessegiSzint, string elohely, string foGyengeseg, string leggyakoribbZsakmany, bool veszelyesE) {
            this.Id = id;
            this.Nev = nev;
            this.VeszelyessegiSzint = veszelyessegiSzint;
            this.Elohely = elohely;
            this.FoGyengeseg = foGyengeseg;
            this.LeggyakoribbZsakmany = leggyakoribbZsakmany;
            this.VeszelyesE = veszelyesE;
        }
    }
}
