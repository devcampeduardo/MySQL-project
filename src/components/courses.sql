ALTER TABLE `schema_bottega_project_sql`.`courses` 
DROP FOREIGN KEY `courses_students_id`,
DROP FOREIGN KEY `fk_proffessor`;
ALTER TABLE `schema_bottega_project_sql`.`courses` 
ADD INDEX `fk_professor_idx` (`courses_professor_id` ASC) VISIBLE,
DROP INDEX `courses_professor_id_idx` ;
ALTER TABLE `schema_bottega_project_sql`.`courses` ALTER INDEX `courses_id_UNIQUE` VISIBLE;
ALTER TABLE `schema_bottega_project_sql`.`courses` 
ADD CONSTRAINT `courses_students_id`
  FOREIGN KEY (`courses_students_id`)
  REFERENCES `schema_bottega_project_sql`.`students` (`students_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_professor`
  FOREIGN KEY (`courses_professor_id`)
  REFERENCES `schema_bottega_project_sql`.`professor` (`professor_id`)
  ON DELETE CASCADE