DELIMITER ||
CREATE TRIGGER netcontrol_delete_trigger AFTER DELETE
ON u_net_control_nidtga FOR EACH ROW
BEGIN
    IF (OLD._status_ = 0)
        THEN
            DELETE FROM campus6.net_control WHERE campus6.net_control.school_number = OLD.school_number;
    END IF;
END|| 
DELIMITER ;