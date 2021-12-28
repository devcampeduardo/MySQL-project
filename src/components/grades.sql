ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD COLUMN `grades_students_id` INT NULL AFTER `grades_points`,
ADD COLUMN `grades_courses_id` INT NULL AFTER `grades_students_id`,
ADD COLUMN `grades_professor_id` INT NULL AFTER `grades_courses_id`,
ADD INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE;
;
ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD CONSTRAINT `grades_students_id`
  FOREIGN KEY (`grades_students_id`)
  REFERENCES `schema_bottega_project_sql`.`students` (`students_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE;
;
ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD CONSTRAINT `grades_courses_id`
  FOREIGN KEY (`grades_courses_id`)
  REFERENCES `schema_bottega_project_sql`.`courses` (`courses_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD INDEX `grades_professor_id_idx` (`grades_professor_id` ASC) VISIBLE;
;
ALTER TABLE `schema_bottega_project_sql`.`grades` 
ADD CONSTRAINT `grades_professor_id`
  FOREIGN KEY (`grades_professor_id`)
  REFERENCES `schema_bottega_project_sql`.`professor` (`professor_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;