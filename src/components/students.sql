ALTER TABLE `bottega_project_sql_schema`.`students` 
ADD COLUMN `students_courses_id` INT NOT NULL AFTER `students_name`,
ADD INDEX `students_courses_id_idx` (`students_courses_id` ASC) VISIBLE;
;
ALTER TABLE `bottega_project_sql_schema`.`students` 
ADD CONSTRAINT `students_courses_id`
  FOREIGN KEY (`students_courses_id`)
  REFERENCES `bottega_project_sql_schema`.`students` (`students_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;