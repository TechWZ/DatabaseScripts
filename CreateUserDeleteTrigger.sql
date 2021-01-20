DELIMITER ||
CREATE TRIGGER user_delete_trigger AFTER DELETE
ON u_c_user_nidtga FOR EACH ROW
BEGIN
    IF (OLD._status_ = 0)
        THEN
            DELETE FROM campus6.c_user WHERE campus6.c_user.phone = OLD.phone;
    END IF;
END|| 
DELIMITER ;