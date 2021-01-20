DELIMITER ||
CREATE TRIGGER netcontrol_insert_trigger AFTER INSERT
ON u_net_control_nidtga FOR EACH ROW
BEGIN
    IF (NEW._status_ = 0)
        THEN
            INSERT INTO campus6.net_control(in_port,dl_type,school_number,actions,out_port,sect,speed_limit,state) 
            VALUES (NEW.in_port,NEW.dl_type,NEW.school_number,NEW.actions,NEW.out_port,NEW.sect,NEW.speed_limit,NEW.state);
    END IF;
END|| 
DELIMITER ;