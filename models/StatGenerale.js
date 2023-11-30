const db = require('../config/database');
class StatGenerale {

    constructor(equipe, competition, buts, tirs, jaune, rouge, possession, passesReussies, aeriensGagnes, note) 
    {
        this.equipe = equipe;
        this.competition = competition;
        this.buts = buts;
        this.tirs = tirs;
        this.jaune = jaune;
        this.rouge = rouge;
        this.possession = possession;
        this.passesReussies = passesReussies;
        this.aeriensGagnes = aeriensGagnes;
        this.note = note;
    }
    
      async getAll() {
        try {
          const result = await db.query('select * from v_statgenerale');
          const joueurs = result.rows.map((row) => new StatGenerale(row.equipe, row.competition, row.buts, row.tirs, row.jaune, row.rouge, row.possession, row.passes_reussies, row.aeriens_gagnes, row.notes));
          return joueurs;
        } catch (error) {
          console.error('Erreur lors de la récupération des statgenerale :', error);
          throw error;
        }
      }

    async getStatGenerale()
    {
        try{
            const stats =  [
                {
                  "equipe": "Paris Saint-Germain",
                  "competition": "Ligue 1",
                  "buts": 25,
                  "tirs": 150,
                  "jaune": 10,
                  "rouge": 2,
                  "possession": 55,
                  "passesReussies": 85,
                  "aeriensGagnes": 20,
                  "note": 8.2
                },
                {
                  "equipe": "Olympique de Marseille",
                  "competition": "Ligue 1",
                  "buts": 20,
                  "tirs": 130,
                  "jaune": 8,
                  "rouge": 1,
                  "possession": 50,
                  "passesReussies": 80,
                  "aeriensGagnes": 18,
                  "note": 7.8
                },
                {
                  "equipe": "AS Monaco",
                  "competition": "Ligue 1",
                  "buts": 28,
                  "tirs": 160,
                  "jaune": 12,
                  "rouge": 3,
                  "possession": 58,
                  "passesReussies": 88,
                  "aeriensGagnes": 22,
                  "note": 8.9
                },
                {
                  "equipe": "Olympique Lyonnais",
                  "competition": "Ligue 1",
                  "buts": 22,
                  "tirs": 140,
                  "jaune": 9,
                  "rouge": 1,
                  "possession": 52,
                  "passesReussies": 82,
                  "aeriensGagnes": 19,
                  "note": 8.0
                },
                {
                  "equipe": "Bayern Munich",
                  "competition": "Bundesliga",
                  "buts": 30,
                  "tirs": 180,
                  "jaune": 15,
                  "rouge": 2,
                  "possession": 60,
                  "passesReussies": 90,
                  "aeriensGagnes": 25,
                  "note": 9.5
                },
                {
                  "equipe": "Borussia Dortmund",
                  "competition": "Bundesliga",
                  "buts": 26,
                  "tirs": 160,
                  "jaune": 10,
                  "rouge": 1,
                  "possession": 56,
                  "passesReussies": 86,
                  "aeriensGagnes": 21,
                  "note": 8.7
                },
                {
                  "equipe": "Real Madrid",
                  "competition": "La Liga",
                  "buts": 28,
                  "tirs": 170,
                  "jaune": 12,
                  "rouge": 2,
                  "possession": 58,
                  "passesReussies": 88,
                  "aeriensGagnes": 23,
                  "note": 9.0
                },
                {
                  "equipe": "Barcelona",
                  "competition": "La Liga",
                  "buts": 32,
                  "tirs": 190,
                  "jaune": 14,
                  "rouge": 3,
                  "possession": 62,
                  "passesReussies": 92,
                  "aeriensGagnes": 27,
                  "note": 9.2
                },
                {
                  "equipe": "Atletico Madrid",
                  "competition": "La Liga",
                  "buts": 24,
                  "tirs": 150,
                  "jaune": 11,
                  "rouge": 1,
                  "possession": 54,
                  "passesReussies": 84,
                  "aeriensGagnes": 20,
                  "note": 8.5
                },
                {
                  "equipe": "Manchester City",
                  "competition": "Premier League",
                  "buts": 29,
                  "tirs": 175,
                  "jaune": 13,
                  "rouge": 2,
                  "possession": 59,
                  "passesReussies": 89,
                  "aeriensGagnes": 24,
                  "note": 9.1
                }
              ];
            return stats;
              
        }catch(error) {
            console.error('Erreur lors de la récupération des statGenerale :', error);
            throw error;
        }
    }
      
}
module.exports = StatGenerale;