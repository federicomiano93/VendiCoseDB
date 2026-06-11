CREATE VIEW TotaleVendutoGiornaliero AS
SELECT 
	v.DataVendita
    ,n.IDNegozio
    ,c.NomeCategoria
    ,SUM(dv.Quantità) AS QuantitàTotale
FROM prodotti p
JOIN dettagliovendite dv ON p.IDProdotto = dv.IDProdotto
JOIN vendite v ON dv.IDVendita = v.IDVendita
JOIN negozio n ON v.IDNegozio = n.IDNegozio
JOIN categoria c ON P.IDCategoria = c.IDCategoria
GROUP BY v.DataVendita, n.IDNegozio, c.NomeCategoria;