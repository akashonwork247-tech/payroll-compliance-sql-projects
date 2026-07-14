CREATE TRIGGER after_salary2026_insert
AFTER INSERT ON salary2026
FOR EACH ROW
UPDATE salary2026 
SET employee_id = CONCAT('ISP-', 1000 + id) 
WHERE id = NEW.id;