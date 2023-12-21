-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) as `enrolment_year`, COUNT(*) as `number_students`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `num_teachers` ,`office_address`
FROM `teachers`
GROUP BY `office_address`;

--Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) AS `vote_avg`
FROM `exam_student`
GROUP BY `exam_id`
ORDER BY `exam_id` DESC;

 --Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `departments`.`name`, COUNT(`degrees`.`department_id`) AS `num_course`
FROM `departments`
INNER JOIN `degrees`
on `departments`.`id`= `degrees`.`department_id`
GROUP BY `departments`.`name`;