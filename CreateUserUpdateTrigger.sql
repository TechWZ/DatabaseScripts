DELIMITER ||
CREATE TRIGGER user_update_trigger AFTER UPDATE
ON u_c_user_nidtga FOR EACH ROW
BEGIN
    UPDATE campus6.c_user AS cuser
    SET cuser.pass_word=NEW.pass_word,cuser.name=NEW.name,cuser.id_code_num=NEW.id_code_num,cuser.sex=NEW.sex,cuser.tel=NEW.tel,cuser.email=NEW.email,cuser.address=NEW.address_user,cuser.max_online=NEW.max_online
    WHERE cuser.phone=NEW.phone;
END|| 
DELIMITER ;