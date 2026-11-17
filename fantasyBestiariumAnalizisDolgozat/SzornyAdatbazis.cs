using System;
using System.Collections.Generic;
using System.Text;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace fantasyBestiariumAnalizisDolgozat
{
    internal class SzornyAdatbazis
    {
        private readonly string ConnectionString = "server=127.0.0.1;uid=root;pwd=;database=fantasybestiariumdb";
        List<Szorny> Szornyek = new();
        public List<Szorny> GetSzornyekFromDatabase ()
        {
            try
            {
                MySqlConnection connection = new(this.ConnectionString);
                connection.Open ();
                MySqlCommand cmd = new();
                cmd.Connection = connection;
                cmd.CommandText = "SELECT * FROM szornyek";

                using var reader = cmd.ExecuteReader();
                {
                    while (reader.Read()) {
                        int id = Convert.ToInt32(reader["Id"]);
                        string nev = Convert.ToString(reader["Nev"]) ?? "";
                        int veszelyessegiSzint = Convert.ToInt32(reader["VeszelyessegiSzint"]);
                        string elohely = Convert.ToString(reader["Elohely"]) ?? "";
                        string foGyengeseg = Convert.ToString(reader["FoGyengeseg"]) ?? "";
                        string leggyakoribbZsakmany = Convert.ToString(reader["LeggyakoribbZsakmany"]) ?? "";
                        bool veszelyesE = Convert.ToBoolean(reader["VeszelyesE"]);

                        this.Szornyek.Add(new Szorny(id, nev, veszelyessegiSzint, elohely, foGyengeseg, leggyakoribbZsakmany, veszelyesE));
                    }
                };
                connection.Close ();
                return this.Szornyek;

            } catch (Exception ex) {
                throw new Exception(ex.Message);
            }
        }
    }
}
