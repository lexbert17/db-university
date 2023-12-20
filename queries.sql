--seleziono tutti gli studenti nati nel 1990
SELECT *
FROM `students`
WHERE `date_of_birth` LIKE '1990-%';

--seleziono tutti i corsi che valgono più di 10 crediti
SELECT *
FROM `courses`
WHERE `cfu` > '10';

--seleziono gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE DATEDIFF(NOW(), `date_of_birth`)/365 > 30;

--seleziono tutti i corsi del primo anno del primo semestre
SELECT *
FROM `courses`
WHERE `year` = 1
AND `period` = 'I semestre';

--seleziono tutti gli appelli d'esame dopo le 16.00 del 20/06/2020
SELECT *
FROM `exams`
WHERE `hour` > '14:%'
AND `date` = '2020-06-20';

--seleziono tutti i corsi di laurea magistrale
SELECT `name`
FROM `degrees`
WHERE `level` = 'magistrale';

--vedo quanti dipartimenti è composta l'università
SELECT `id`
FROM `departments`;

--seleziono gli insegnanti che non hanno un numero di telefono
SELECT *
FROM `teachers`
WHERE `phone` IS NULL;

