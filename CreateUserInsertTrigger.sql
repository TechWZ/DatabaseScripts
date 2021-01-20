DELIMITER ||
CREATE TRIGGER user_insert_trigger AFTER INSERT
ON u_c_user_nidtga FOR EACH ROW
BEGIN
    IF (NEW._status_ = 0)
        THEN
            INSERT INTO campus6.c_user(nid,pass_word,name,school_number,id_code_num,sex,tel,phone,email,address,max_online,status) 
            VALUES (NEW.nid,NEW.pass_word,NEW.name,NEW.school_number,NEW.id_code_num,NEW.sex,NEW.tel,NEW.phone,NEW.email,NEW.address_user,NEW.max_online,NEW.status);
    END IF;
END|| 
DELIMITER ;