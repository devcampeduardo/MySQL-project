CREATE TABLE `bottega_project_sql_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(45) NULL,
  `courses_professor_id` INT NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
  INDEX `courses_professor_id_idx` (`courses_professor_id` ASC) VISIBLE,
  CONSTRAINT `courses_professor_id`
    FOREIGN KEY (`courses_professor_id`)
    REFERENCES `bottega_project_sql_schema`.`professor` (`professor_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);