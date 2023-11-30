const db = require('../config/database');
class StatAttaque {

    constructor(equipe,competition,tirs, tirsca, dribbles, fautes,note) 
    {
        this.equipe = equipe;
        this.competition = competition;
        this.tirs = tirs;
        this.tirsca = tirsca;
        this.dribbles = dribbles;
        this.fautes = fautes;
        this.note = note;
    }
    
    async getAll() {
        try {
            const result = await db.query('select * from v_statattaque');
            const joueurs = result.rows.map((row) => new StatAttaque(row.equipe,row.competition,row.tirs, row.tirsca, row.dribbles, row.fautes,row.note));
            return joueurs;
        } catch (error) {
            console.error('Erreur lors de la récupération des StatAttaque :', error);
            throw error;
        }
    }

    async getStatAttaque()
    {
        try{
            const stats = [
                {
                  "equipe": "Paris Saint-Germain",
                  "competition": "Ligue 1",
                  "tirs": 120,
                  "tirsca": 15,
                  "dribbles": 60,
                  "fautes": 20,
                  "note": 8.2
                },
                {
                  "equipe": "Olympique de Marseille",
                  "competition": "Ligue 1",
                  "tirs": 110,
                  "tirsca": 18,
                  "dribbles": 55,
                  "fautes": 18,
                  "note": 7.8
                },
                {
                  "equipe": "AS Monaco",
                  "competition": "Ligue 1",
                  "tirs": 130,
                  "tirsca": 12,
                  "dribbles": 70,
                  "fautes": 25,
                  "note": 8.9
                },
                {
                  "equipe": "Olympique Lyonnais",
                  "competition": "Ligue 1",
                  "tirs": 115,
                  "tirsca": 14,
                  "dribbles": 65,
                  "fautes": 22,
                  "note": 8.0
                },
                {
                  "equipe": "Bayern Munich",
                  "competition": "Bundesliga",
                  "tirs": 140,
                  "tirsca": 10,
                  "dribbles": 75,
                  "fautes": 28,
                  "note": 9.5
                },
                {
                  "equipe": "Borussia Dortmund",
                  "competition": "Bundesliga",
                  "tirs": 130,
                  "tirsca": 13,
                  "dribbles": 68,
                  "fautes": 24,
                  "note": 8.7
                },
                {
                  "equipe": "Real Madrid",
                  "competition": "La Liga",
                  "tirs": 150,
                  "tirsca": 8,
                  "dribbles": 80,
                  "fautes": 30,
                  "note": 9.0
                },
                {
                  "equipe": "Barcelona",
                  "competition": "La Liga",
                  "tirs": 160,
                  "tirsca": 9,
                  "dribbles": 85,
                  "fautes": 32,
                  "note": 9.2
                },
                {
                  "equipe": "Atletico Madrid",
                  "competition": "La Liga",
                  "tirs": 145,
                  "tirsca": 11,
                  "dribbles": 72,
                  "fautes": 26,
                  "note": 8.5
                },
                {
                  "equipe": "Manchester City",
                  "competition": "Premier League",
                  "tirs": 155,
                  "tirsca": 10,
                  "dribbles": 78,
                  "fautes": 29,
                  "note": 9.1
                }
            ];
            return stats;
              
        }catch(error) {
            console.error('Erreur lors de la récupération des statDefense :', error);
            throw error;
        }
    }
}
module.exports = StatAttaque;