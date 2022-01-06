CREATE DATABASE balancediary;

USE balancediary;
CREATE TABLE nutrition(
      nid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      `group` VARCHAR(50) NOT NULL,
		`name` VARCHAR(255) NOT NULL,	
		size INT NOT NULL,		
		kcal DOUBLE NULL DEFAULT 0,		
		T_carbohydrate DOUBLE NULL DEFAULT 0,		
		protein DOUBLE NULL DEFAULT 0,
		fat DOUBLE NULL DEFAULT 0,		
		carbohydrate DOUBLE NULL DEFAULT 0,		
		natrium DOUBLE NULL DEFAULT 0,		
		cholesterol DOUBLE NULL DEFAULT 0,		
		saturated_fat DOUBLE NULL DEFAULT 0,		
		trans DOUBLE NULL DEFAULT 0
)
