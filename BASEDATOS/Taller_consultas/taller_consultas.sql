#1.seleccionar todos los datos de los clientes
SELECT * FROM cliente;
#2.seleccionar todos los médicos con la profesión veterinario
SELECT * FROM medico WHERE medico.med_profesion = "Veterinario";
#3.Obtener los medicamentos que tienen una m en su nombre
-- %m al inicio  o  m% al final  o   %m% en cualquier parte --
SELECT * FROM medicamentos 	WHERE medicamentos.med_nombre LIKE "%m%";
#4.Obtener los medicamentos que tienen su valor entre 40 y 1000
SELECT * FROM medicamentos WHERE (medicamentos.med_valor BETWEEN 30 AND 1000);
SELECT * FROM medicamentos WHERE (medicamentos.med_valor BETWEEN 10 AND 15);
#5.Obtener solamente el nombre de los medicamentos cuya longitud este entre 1 y 10
SELECT medicamentos.med_nombre AS nombre_medicamento FROM medicamentos WHERE CHAR_LENGTH(medicamentos.med_nombre BETWEEN 1 and 10);
-- AS es para colocar un alias al nombre que se va a mostrar --
-- CHAR_LENGTH() función especial para hacer conteo de caracteres-- 
#6.Contar el número total de mascotas registradas
SELECT COUNT(*) AS total_mascotas FROM mascotas;
-- COUNT() cuenta el total de los elementos de la tabla --
#7.Seleccionar los nombres únicos de las especializaciones
SELECT DISTINCT especializacion.esp_nombre FROM especializacion;
#8. Listar los medicamentos ordenados por valor de forma descendente:
SELECT * FROM medicamentos ORDER BY medicamentos.med_valor DESC;
#9.Seleccionar las citas programadas entre dos fechas
SELECT * FROM citas WHERE (citas.cit_fecha BETWEEN "2024-04-01" AND "2024-04-30");
#10.Obtener el nombre de la mascota y el nombre del cliente.
SELECT mascotas.mas_nombre, cliente.cli_nombre FROM mascotas INNER JOIN cliente ON mascotas.cliente_cli_id = cliente.cli_id;
-- segunda forma --
SELECT mascotas.mas_nombre, cliente.cli_nombre FROM mascotas,cliente WHERE mascotas.cliente_cli_id=cliente.cli_id;
#11. Listar todas las mascotas y sus historias clínicas, incluyendo las mascotas sin historias clínicas
SELECT * FROM mascotas LEFT JOIN historias_clinicas ON historias_clinicas.his_id=mascotas.historias_clinicas_his_id;
SELECT mascotas.mas_nombre,historias_clinicas.his_descripcion FROM mascotas LEFT JOIN historias_clinicas ON historias_clinicas.his_id=mascotas.historias_clinicas_his_id;
#12. Calcular el costo total por cada tipo de servicio
SELECT especializacion.esp_nombre, SUM(servicio.ser_costo) AS costo_servicio_por_especializacion FROM servicio INNER JOIN especializacion ON especializacion.esp_id=servicio.especializacion_esp_id GROUP BY servicio.especializacion_esp_id;
#13. Obtener una lista de citas con un estado 'Pendiente' o 'Realizado' basado en el valor de cit_estado:
SELECT citas.cit_fecha, CASE WHEN citas.cit_estado= 0 THEN "Pendiente" WHEN citas.cit_estado= 1 THEN "Realizado" END AS estado_cita FROM citas;
#14.Obtener los nombres de las mascotas, el procedimiento del servicio que recibieron, y el nombre de su médico:
SELECT citas.cit_fecha, mascotas.mas_nombre, servicio.ser_procedimiento, medico.med_nombre FROM citas INNER JOIN mascotas ON mascotas.mas_id=citas.mascotas_mas_id INNER JOIN servicio ON servicio.ser_id=citas.servicio_ser_id INNER JOIN medico ON medico.med_id=citas.medico_med_id;
#15.Obtener el promedio del costo de servicios por especialización que superen un costo promedio de 100:
#16.Listar información de contacto de clientes, combinando nombre, correo, y teléfono en un solo campo:
#17.Obtener la última visita (fecha más reciente de cita) para cada mascota:
#18.Seleccionar los medicamentos que han sido prescritos en alguna historia clínica
#19.Listar todas las citas, incluyendo información de la mascota, el servicio, y la sede, ordenadas por fecha:

