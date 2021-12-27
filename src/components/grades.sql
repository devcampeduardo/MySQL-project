CREATE TABLE `bottega_project_sql_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_points` INT NOT NULL,
  `grades_students_id` INT NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
  INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
  CONSTRAINT `grades_students_id`
    FOREIGN KEY (`grades_students_id`)
    REFERENCES `bottega_project_sql_schema`.`students` (`students_courses_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);