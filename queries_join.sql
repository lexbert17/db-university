--Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name` AS `cours_name`
FROM `students` 
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

--Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `departments`.`name`,`degrees`.`name`,`degrees`.`level`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name`= 'Dipartimento di Neuroscienze'
AND `degrees`.`level` = 'magistrale';

--Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`, `teachers`.`surname`,`courses`.`name` AS `course_name`
FROM `courses`
INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`name` = 'Fulvio';

--Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name` AS `cours_name`, `departments`.`name` AS `departments_name`
FROM `students` 
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name` ASC;

--Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`AS `course_name`,`courses`.`name` AS `subject`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
JOIN `courses`
ON  `degrees`.`id` = `courses`.`degree_id` 
JOIN `teachers`
ON `courses`.`id` = `teachers`.`id`;

--Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `departments`.`name`,`teachers`.`name`,`teachers`.`surname`
FROM `departments`
JOIN`degrees`
ON `departments`.`id` = `degrees`.`department_id`
JOIN `courses`
ON  `degrees`.`id` = `courses`.`degree_id` 
JOIN `teachers`
ON `courses`.`id` = `teachers`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica';

--BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami