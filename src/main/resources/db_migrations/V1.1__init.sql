--------------------------------------------------------
--  File created - Friday-February-08-2019
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SZEREP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LFEHER"."SZEREP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LFEHER"."USER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SZEREP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LFEHER"."USER_SZEREP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table SZEREP
--------------------------------------------------------

  CREATE TABLE "LFEHER"."SZEREP"
   (	"ROL_ID" NUMBER(20,0),
	"ROL_NEV" VARCHAR2(200 BYTE),
	"ROL_KOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_SZEREP
--------------------------------------------------------

  CREATE TABLE "LFEHER"."USER_SZEREP"
   (	"U2R_ID" NUMBER(20,0),
	"U2R_USER_ID" NUMBER(20,0),
	"U2R_ROL_ID" NUMBER(20,0),
	"U2R_SZER_ID" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "LFEHER"."USERS"
   (	"USER_ID" NUMBER(20,0),
	"USER_EMAIL" VARCHAR2(200 BYTE),
	"USER_FELHASZNALONEV" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

Insert into LFEHER.SZEREP (ROL_ID,ROL_NEV,ROL_KOD) values (1,'Nyilvántartási ügyintéző','NYILV_UGYINTEZO');
Insert into LFEHER.SZEREP (ROL_ID,ROL_NEV,ROL_KOD) values (2,'Elhelyezési ügyintéző','ELHELY_UGYINTEZO');
Insert into LFEHER.SZEREP (ROL_ID,ROL_NEV,ROL_KOD) values (3,'Szakértői bizottság vezető','SZB_VEZETO');
Insert into LFEHER.USER_SZEREP (U2R_ID,U2R_USER_ID,U2R_ROL_ID,U2R_SZER_ID) values (1,1,1,null);
Insert into LFEHER.USER_SZEREP (U2R_ID,U2R_USER_ID,U2R_ROL_ID,U2R_SZER_ID) values (2,2,2,null);
Insert into LFEHER.USER_SZEREP (U2R_ID,U2R_USER_ID,U2R_ROL_ID,U2R_SZER_ID) values (3,3,3,null);
Insert into LFEHER.USERS (USER_ID,USER_EMAIL,USER_FELHASZNALONEV) values (1,'nyilvantartasi_ugyintezo@gyvr.com','nyilvantartasi_ugyintezo');
Insert into LFEHER.USERS (USER_ID,USER_EMAIL,USER_FELHASZNALONEV) values (2,'elhelyezesi_ugyintezo@gyvr.com','elhelyezesi_ugyintezo');
Insert into LFEHER.USERS (USER_ID,USER_EMAIL,USER_FELHASZNALONEV) values (3,'szb_vezeto@gyvr.com','szb_vezeto');
--------------------------------------------------------
--  DDL for Index SZEREP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."SZEREP_PK" ON "LFEHER"."SZEREP" ("ROL_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEREP_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."SZEREP_UK1" ON "LFEHER"."SZEREP" ("ROL_NEV")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEREP_UK2
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."SZEREP_UK2" ON "LFEHER"."SZEREP" ("ROL_KOD")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."USER_PK" ON "LFEHER"."USERS" ("USER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_SZEREP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."USER_SZEREP_PK" ON "LFEHER"."USER_SZEREP" ("U2R_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."USER_UK1" ON "LFEHER"."USERS" ("USER_EMAIL")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_UK2
--------------------------------------------------------

  CREATE UNIQUE INDEX "LFEHER"."USER_UK2" ON "LFEHER"."USERS" ("USER_FELHASZNALONEV")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger SZEREP_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LFEHER"."SZEREP_TRG"
BEFORE INSERT ON SZEREP
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ROL_ID IS NULL THEN
      SELECT SZEREP_SEQ.NEXTVAL INTO :NEW.ROL_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "LFEHER"."SZEREP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_SZEREP_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LFEHER"."USER_SZEREP_TRG"
BEFORE INSERT ON USER_SZEREP
FOR EACH ROW
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.U2R_ID IS NULL THEN
      SELECT USER_SZEREP_SEQ.NEXTVAL INTO :NEW.U2R_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "LFEHER"."USER_SZEREP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "LFEHER"."USER_TRG"
  BEFORE INSERT ON "LFEHER"."USERS"
  REFERENCING FOR EACH ROW
  BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.USER_ID IS NULL THEN
      SELECT USER_SEQ.NEXTVAL INTO :NEW.USER_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "LFEHER"."USER_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table SZEREP
--------------------------------------------------------

  ALTER TABLE "LFEHER"."SZEREP" ADD CONSTRAINT "SZEREP_UK2" UNIQUE ("ROL_KOD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."SZEREP" ADD CONSTRAINT "SZEREP_UK1" UNIQUE ("ROL_NEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."SZEREP" ADD CONSTRAINT "SZEREP_PK" PRIMARY KEY ("ROL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."SZEREP" MODIFY ("ROL_KOD" NOT NULL ENABLE);
  ALTER TABLE "LFEHER"."SZEREP" MODIFY ("ROL_NEV" NOT NULL ENABLE);
  ALTER TABLE "LFEHER"."SZEREP" MODIFY ("ROL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_SZEREP
--------------------------------------------------------

  ALTER TABLE "LFEHER"."USER_SZEREP" ADD CONSTRAINT "USER_SZEREP_PK" PRIMARY KEY ("U2R_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."USER_SZEREP" MODIFY ("U2R_ROL_ID" NOT NULL ENABLE);
  ALTER TABLE "LFEHER"."USER_SZEREP" MODIFY ("U2R_USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LFEHER"."USER_SZEREP" MODIFY ("U2R_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "LFEHER"."USERS" MODIFY ("USER_FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "LFEHER"."USERS" ADD CONSTRAINT "USER_UK1" UNIQUE ("USER_EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."USERS" ADD CONSTRAINT "USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."USERS" ADD CONSTRAINT "USER_UK2" UNIQUE ("USER_FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LFEHER"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table USER_SZEREP
--------------------------------------------------------

  ALTER TABLE "LFEHER"."USER_SZEREP" ADD CONSTRAINT "USER_SZEREP_FK1" FOREIGN KEY ("U2R_USER_ID")
	  REFERENCES "LFEHER"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "LFEHER"."USER_SZEREP" ADD CONSTRAINT "USER_SZEREP_FK2" FOREIGN KEY ("U2R_ROL_ID")
	  REFERENCES "LFEHER"."SZEREP" ("ROL_ID") ENABLE;
