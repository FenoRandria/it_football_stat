const db = require('../config/database');
class StatDefense {

    constructor(equipe,competition,tirs, tacles, interceptions, fautes, horsJeux,note) 
    {
        this.equipe = equipe;
        this.competition = competition;
        this.tirs = tirs;
        this.tacles = tacles;
        this.interceptions = interceptions;
        this.fautes = fautes;
        this.horsJeux = horsJeux;
        this.note = note;
    }
    
    async getAll() {
        try {
            const result = await db.query('select * from v_statdefense');
            const joueurs = result.rows.map((row) => new StatDefense(row.equipe,row.competition,row.tirs, row.tacles, row.interceptions, row.fautes, row.horsjeux,row.notes));
            return joueurs;
        } catch (error) {
            console.error('Erreur lors de la récupération des statDefense :', error);
            throw error;
        }
    }

    async getStatDefense()
    {
        try{
            const stats = [
                {
                  "equipe": "Paris Saint-Germain",
                  "competition": "Ligue 1",
                  "tirs": 30,
                  "tacles": 30,
                  "interceptions": 30,
                  "fautes": 30,
                  "horsJeux": 30,
                  "note": 8.5
                },
                {
                  "equipe": "Olympique de Marseille",
                  "competition": "Ligue 1",
                  "tirs": 28,
                  "tacles": 29,
                  "interceptions": 32,
                  "fautes": 25,
                  "horsJeux": 28,
                  "note": 7.8
                },
                {
                  "equipe": "AS Monaco",
                  "competition": "Ligue 1",
                  "tirs": 35,
                  "tacles": 31,
                  "interceptions": 29,
                  "fautes": 27,
                  "horsJeux": 26,
                  "note": 8.9
                },
                {
                  "equipe": "Olympique Lyonnais",
                  "competition": "Ligue 1",
                  "tirs": 32,
                  "tacles": 28,
                  "interceptions": 30,
                  "fautes": 29,
                  "horsJeux": 27,
                  "note": 8.2
                },
                {
                  "equipe": "Bayern Munich",
                  "competition": "Bundesliga",
                  "tirs": 34,
                  "tacles": 32,
                  "interceptions": 31,
                  "fautes": 28,
                  "horsJeux": 26,
                  "note": 9.1
                },
                {
                  "equipe": "Borussia Dortmund",
                  "competition": "Bundesliga",
                  "tirs": 33,
                  "tacles": 30,
                  "interceptions": 33,
                  "fautes": 30,
                  "horsJeux": 25,
                  "note": 8.7
                },
                {
                  "equipe": "RB Leipzig",
                  "competition": "Bundesliga",
                  "tirs": 30,
                  "tacles": 31,
                  "interceptions": 28,
                  "fautes": 27,
                  "horsJeux": 28,
                  "note": 8.0
                },
                {
                  "equipe": "Real Madrid",
                  "competition": "La Liga",
                  "tirs": 33,
                  "tacles": 29,
                  "interceptions": 30,
                  "fautes": 28,
                  "horsJeux": 29,
                  "note": 8.8
                },
                {
                  "equipe": "Barcelona",
                  "competition": "La Liga",
                  "tirs": 35,
                  "tacles": 28,
                  "interceptions": 32,
                  "fautes": 26,
                  "horsJeux": 27,
                  "note": 9.0
                },
                {
                  "equipe": "Atletico Madrid",
                  "competition": "La Liga",
                  "tirs": 32,
                  "tacles": 33,
                  "interceptions": 29,
                  "fautes": 25,
                  "horsJeux": 28,
                  "note": 8.5
                },
                {
                  "equipe": "Manchester City",
                  "competition": "Premier League",
                  "tirs": 31,
                  "tacles": 30,
                  "interceptions": 31,
                  "fautes": 29,
                  "horsJeux": 26,
                  "note": 9.2
                },
                {
                  "equipe": "Manchester United",
                  "competition": "Premier League",
                  "tirs": 32,
                  "tacles": 28,
                  "interceptions": 33,
                  "fautes": 30,
                  "horsJeux": 27,
                  "note": 8.7
                },
                {
                  "equipe": "Liverpool FC",
                  "competition": "Premier League",
                  "tirs": 35,
                  "tacles": 32,
                  "interceptions": 30,
                  "fautes": 28,
                  "horsJeux": 29,
                  "note": 9.0
                },
                {
                  "equipe": "Chelsea",
                  "competition": "Premier League",
                  "tirs": 34,
                  "tacles": 31,
                  "interceptions": 29,
                  "fautes": 27,
                  "horsJeux": 28,
                  "note": 8.9
                },
                {
                  "equipe": "AC Milan",
                  "competition": "Serie A",
                  "tirs": 32,
                  "tacles": 29,
                  "interceptions": 32,
                  "fautes": 26,
                  "horsJeux": 30,
                  "note": 8.8
                },
                {
                  "equipe": "Inter Milan",
                  "competition": "Serie A",
                  "tirs": 34,
                  "tacles": 32,
                  "interceptions": 31,
                  "fautes": 29,
                  "horsJeux": 28,
                  "note": 9.1
                },
                {
                  "equipe": "Juventus",
                  "competition": "Serie A",
                  "tirs": 33,
                  "tacles": 30,
                  "interceptions": 33,
                  "fautes": 27,
                  "horsJeux": 28,
                  "note": 8.7
                },
                {
                  "equipe": "Napoli",
                  "competition": "Serie A",
                  "tirs": 30,
                  "tacles": 31,
                  "interceptions": 28,
                  "fautes": 30,
                  "horsJeux": 25,
                  "note": 8.0
                },
                {
                  "equipe": "Ajax",
                  "competition": "Eredivisie",
                  "tirs": 33,
                  "tacles": 29,
                  "interceptions": 30,
                  "fautes": 28,
                  "horsJeux": 29,
                  "note": 8.6
                },
                {
                  "equipe": "PSV Eindhoven",
                  "competition": "Eredivisie",
                  "tirs": 35,
                  "tacles": 28,
                  "interceptions": 32,
                  "fautes": 27,
                  "horsJeux": 28,
                  "note": 8.9
                }
            ];
            return stats;
              
        }catch(error) {
            console.error('Erreur lors de la récupération des statDefense :', error);
            throw error;
        }
    }
}
module.exports = StatDefense;