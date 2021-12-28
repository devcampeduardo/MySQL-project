ALTER TABLE `schema_bottega_project_sql`.`students` 
CHANGE COLUMN `students_name` `students_name` VARCHAR(80) NULL DEFAULT NULL ;
ALTER TABLE `schema_bottega_project_sql`.`students` ALTER INDEX `students_id_UNIQUE` VISIBLE;
