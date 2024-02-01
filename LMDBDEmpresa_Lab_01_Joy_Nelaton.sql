use Empresa


Select DEPTNO, DEPTNAME, ADMRDEPT from  --- 1. Numero, nombre y codigo de departamento
TABLAS_DEPARTAMENTOS

Select DISTINCT ADMRDEPT from  ---- 2. ADMRDEPT sin repeticiones
TABLAS_DEPARTAMENTOS

Select DISTINCT JOB from --- 3. Trabajos sin repeticiones
TABLAS_EMPLEADOS

Select DEPTNAME, DEPTNO, ADMRDEPT from  --- 4. Seleccion de DEPTNAME, DEPTNO y ADMRDEPT orden ascendente por ADMRDEPT
TABLAS_DEPARTAMENTOS
Order by ADMRDEPT ASC

Select DEPTNAME, DEPTNO, ADMRDEPT from  --- 5. Seleccion de DEPTNAME, DEPTNO y ADMRDEPT orden ascendente por ADMRDEPT y descendente por DEPTNO
TABLAS_DEPARTAMENTOS
Order by ADMRDEPT ASC, DEPTNO DESC

Select LASTNAME, EDLEVEL from --- 6. Apellido y Nivel de Empleados con nivel igual o mayor a 15
TABLAS_EMPLEADOS
Where EDLEVEL >=15

Select EMPNO, LASTNAME, BIRTHDATE from --- 7. Numero, Apellido y fecha de nacimiento de los empleados nacidos despues del 1 de enero del 98
TABLAS_EMPLEADOS
Where BIRTHDATE >='01-01-1998'
Order by BIRTHDATE

Select EMPNO, JOB, EDLEVEL from  --- 8. Numero, Trabajo y nivel de empleados que son diseñadores y su nivel de educacion es 16
TABLAS_EMPLEADOS
Where JOB = 'designer' and EDLEVEL = 16

Select EMPNO, JOB, EDLEVEL from --- 9. Numero, trabajo y nivel de empleados con nivel 11 y diseñadores con nivel 16
TABLAS_EMPLEADOS
Where JOB = 'designer' and EDLEVEL = 16 or EDLEVEL = 11
Order by JOB, EDLEVEL 

Select EMPNO, EDLEVEL FROM  --- 10. Numero y nivel de los empleados con nivel entre 10 y 15, orden por nivel
TABLAS_EMPLEADOS
Where EDLEVEL>=10 and EDLEVEL<=15
Order by EDLEVEL

Select LASTNAME, EDLEVEL FROM  --- 11. Apellido y Nivel de empleados con Nivel 11, 14 o 15, orden por nivel y apellido
TABLAS_EMPLEADOS
Where EDLEVEL = 11 OR EDLEVEL = 14 OR EDLEVEL = 15
Order by EDLEVEL, LASTNAME

Select LASTNAME FROM --- 12. Empleados cuyos apellidos empiezan con V
TABLAS_EMPLEADOS
Where LASTNAME LIKE 'V%'

Select LASTNAME FROM  --- 13. Empleados cuyos apellidos tienen como segunda letra A
TABLAS_EMPLEADOS
Where LASTNAME LIKE '_A%'

Select * FROM 
TABLAS_EMPLEADOS

Select WORKDEPT from --- 14. Departamentos que no empiezan por D
TABLAS_EMPLEADOS 
Where WORKDEPT NOT LIKE 'D%'

Select EMPNO, SALARY, BONUS, INCOME = SALARY + BONUS FROM --- 15. Nombre de empleado, salario y bono, suma de salario y bono, ordenamiento por numero de empleado
TABLAS_EMPLEADOS
WHERE SALARY < 5000
Order by EMPNO


Select * from TABLAS_EMPLEADOS

INSERT INTO TABLAS_EMPLEADOS ("EMPNO", "FIRSTNME", "MIDINIT", "LASTNAME", "WORKDEPT", "PHONENO", "HIREDATE", "JOB", "EDLEVEL", "SEX", "BIRTHDATE", "SALARY", "BONUS") --- 16. Insercion en la Tabla_Empleados
VALUES ('000070', 'James', 'J', 'Joule', 'D11', '4424', '2006-05-17', 'sales', '15', 'M', '1982-06-10', '20000.00', '40000.00')

UPDATE TABLAS_EMPLEADOS    --- 17. Aumento del 15% del salario a los empleados con salario <1000
SET SALARY = (SALARY * 0.15) + SALARY
WHERE SALARY < 1000.00

UPDATE TABLAS_DEPARTAMENTOS  --- 18. Actualizacion del nombre del departamento Soporte a Soporte Tecnico
SET DEPTNAME = 'Soporte Tecnico'
WHERE DEPTNAME = 'Soporte'

Select * from TABLAS_DEPARTAMENTOS

DELETE FROM TABLAS_EMPLEADOS  --- 19. Eliminacion de los empleados con edlevel 10 y 11
WHERE EDLEVEL IN(10,11)

Select * from TABLAS_EMPLEADOS



