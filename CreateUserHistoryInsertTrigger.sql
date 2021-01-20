DELIMITER ||
CREATE TRIGGER userhistory_insert_trigger AFTER INSERT
ON u_c_user_history_nidtga FOR EACH ROW
BEGIN
    IF (NEW._status_ = 0)
        THEN
            INSERT INTO campus6.c_user_history(manual_id,nid,ip,hwaddr,action_time,status) 
            VALUES (NEW.manual_id,NEW.nid,NEW.ip,NEW.hwaddr,NEW.action_time,NEW.status);
    END IF;
END|| 
DELIMITER ;