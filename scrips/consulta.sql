select Sum(UnidadesEnero)+Sum(UnidadesFebrero)+Sum(UnidadesMarzo) as 'TOTAL_VENTA' ,fkVendedor as 'Vendedor' FROM trimeste GROUP BY  fkvendedor ORDER BY 'TOTAL_VENTA' ASC LIMIT 1;