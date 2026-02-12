-- Total de dinero administrado
SELECT SUM(saldo) AS dinero_total FROM cuentas;

-- Saldo promedio por cuenta
SELECT AVG(saldo) AS saldo_promedio FROM cuentas;

-- Top clientes por saldo
SELECT c.nombre, SUM(cu.saldo) AS total
FROM clientes c
JOIN cuentas cu ON c.id_cliente = cu.id_cliente
GROUP BY c.nombre
ORDER BY total DESC;

-- Ciudad con mayor concentración de dinero
SELECT c.ciudad, SUM(cu.saldo) AS total
FROM clientes c
JOIN cuentas cu ON c.id_cliente = cu.id_cliente
GROUP BY c.ciudad
ORDER BY total DESC;

-- Tipo de cuenta con mayor movimiento
SELECT cu.tipo, SUM(t.monto) AS total
FROM cuentas cu
JOIN transacciones t ON cu.id_cuenta = t.id_cuenta
GROUP BY cu.tipo
ORDER BY total DESC;
