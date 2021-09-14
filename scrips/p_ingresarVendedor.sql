CREATE DEFINER=`root`@`localhost` PROCEDURE `P_AgregarVendedor`(
IN p_CodigoVendedor VARCHAR(50),
IN p_NombreVendedor VARCHAR(50)
)
BEGIN
	DECLARE existe INT DEFAULT 0;
	SELECT COUNT(*) FROM vendedor WHERE codigoVendedor = p_CodigoVendedor INTO existe;
	if	existe = 0 THEN
		insert INTO vendedor VALUES(p_CodigoVendedor,p_NombreVendedor);
		SELECT "AGREGADO";
	ELSE
        SELECT "YA EXISTE";
	END IF;
END