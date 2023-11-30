const db = require('../config/database');
class Joueur {

  constructor(id, nom, etu, dtn, corbeil) {
    this.id = id;
    this.nom = nom;
    this.etu = etu;
    this.dtn = dtn;
    this.corbeil = corbeil;
  }

  async getAll() {
    try {
      const result = await db.query('select * from etudiant where corbeil != 1');
      const joueurs = result.rows.map((row) => new Joueur(row.id, row.nom, row.etu, row.dtn, row.corbeil));
      return joueurs;
    } catch (error) {
      console.error('Erreur lors de la récupération des joueurs :', error);
      throw error;
    }
  }
}
module.exports = Joueur;