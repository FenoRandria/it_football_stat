const express = require('express');
const router = express.Router();

// Créer une nouvelle Cup ----------------------------------------------------------------------------------
// router.post('/create-etudiant', async (req, res) => {
//   const { nom } = req.body;
//   const etudiant = new Etudiant();
//   try {
//     const newEtudiant = await etudiant.create(nom);
//     res.status(201).json(newEtudiant);
//   } catch (error) {
//     res.status(500).json({ error: 'Erreur lors de la création de etudiant.' });
//   }
// });

// Obtenir toutes les Cups ----------------------------------------------------------------------------------
router.get('/all', async (req, res) => {
//   const etudiant = new Etudiant();
  try {
    // const etudiants = await etudiant.getAll();
    const etudiants = {
        "id":"1",
        "nom":"feno",
        "dtn":"2022-12-23",
        "adress":"vb ooo000"
    }
    res.json(etudiants);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des etudiants.' });
  }
});

// Obtenir un etudiant par ID ----------------------------------------------------------------------------------
// router.get('/etudiant/:id', async (req, res) => {
//   const { id } = req.params;
//   const etudiant = new Etudiant();
//   try {
//     const foundEtudiant = await etudiant.getById(id);
//     if (foundEtudiant) {
//       res.json(foundEtudiant);
//     } else {
//       res.status(404).json({ error: 'Etudiant introuvable.' });
//     }
//   } catch (error) {
//     res.status(500).json({ error: 'Erreur lors de la récupération de la Cup par ID.' });
//   }
// });

// Mettre à jour une Cup ----------------------------------------------------------------------------------
// router.put('/cups/:id', async (req, res) => {
//   const { id } = req.params;
//   const { nom } = req.body;
//   const cup = new Cup(id, nom);
//   try {
//     await cup.update();
//     res.status(204).end();
//   } catch (error) {
//     res.status(500).json({ error: 'Erreur lors de la mise à jour de la Etudiant.' });
//   }
// });

// Supprimer une Etudiant ----------------------------------------------------------------------------------
// router.delete('/delete-etudiant/:id', async (req, res) => {
//   const { id } = req.params;
//   const etudiant = new Etudiant(id);
//   try {
//     await etudiant.delete();
//     res.status(204).end();
//   } catch (error) {
//     res.status(500).json({ error: 'Erreur lors de la suppression de la Etudiant.' });
//   }
// });

module.exports = router;
