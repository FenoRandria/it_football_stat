const express = require('express');
const router = express.Router();
const Joueur = require('../models/Joueur');
const StatGenerale = require('../models/StatGenerale');
const StatDefense = require('../models/StatDefense');
const StatAttaque = require('../models/StatAttaque');

// Créer une nouvelle Joueurs ----------------------------------------------------------------------------------
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
  try {
    const etudiants = {
        "id":"1",
        "nom":"feno",
        "dtn":"2022-12-23"
    }
    res.json(etudiants);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des joueurs.' });
  }
});

router.get('/joueurs', async (req, res) => {
  const joueur = new Joueur();
  try {
    const joueurs = await joueur.getAll();
    res.json(joueurs);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des joueurs.' });
  }
});

router.get('/statgenerales', async (req, res) => {
  const statGenerale = new StatGenerale();
  try {
    const statGenerales = await statGenerale.getStatGenerale();
    res.json(statGenerales);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statGenerales.' });
  }
});
router.get('/stat-generales', async (req, res) => {
  const statGenerale = new StatGenerale();
  try {
    const statGenerales = await statGenerale.getAll();
    res.json(statGenerales);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statGenerales.' });
  }
});

router.get('/statdefenses', async (req, res) => {
  const statGenerale = new StatDefense();
  try {
    const statDefenses = await statGenerale.getStatDefense();
    res.json(statDefenses);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statdefenses.' });
  }
});

router.get('/stat-defenses', async (req, res) => {
  const statGenerale = new StatDefense();
  try {
    const statDefenses = await statGenerale.getAll();
    res.json(statDefenses);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statdefenses.' });
  }
});

router.get('/statattaques', async (req, res) => {
  const statAttaque = new StatAttaque();
  try {
    const statAttaques = await statAttaque.getStatAttaque();
    res.json(statAttaques);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statAttaques.' });
  }
});

router.get('/stat-attaques', async (req, res) => {
  const statAttaque = new StatAttaque();
  try {
    const statAttaques = await statAttaque.getAll();
    res.json(statAttaques);
  } catch (error) {
    res.status(500).json({ error: 'Erreur lors de la récupération des statAttaques.' });
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
