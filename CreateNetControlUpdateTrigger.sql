DELIMITER ||
CREATE TRIGGER netcontrol_update_trigger AFTER UPDATE
ON u_net_control_nidtga FOR EACH ROW
BEGIN
    UPDATE campus6.net_control AS netcontrol
    SET netcontrol.in_port=NEW.in_port,netcontrol.dl_type=NEW.dl_type,netcontrol.actions=NEW.actions,netcontrol.out_port=NEW.out_port,netcontrol.sect=NEW.sect,netcontrol.speed_limit=NEW.speed_limit,netcontrol.state=NEW.state
    WHERE campus6.net_control.school_number=NEW.school_number;
END|| 
DELIMITER ;