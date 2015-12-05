DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ;
DELETE FROM METL_COMPONENT_ATTRIBUTE_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ;
DELETE FROM METL_MODEL_ATTRIBUTE WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7';
DELETE FROM METL_PROJECT_VERSION WHERE ID='3ba74fb0-6dc1-4082-93cb-1336f55aead7';
DELETE FROM METL_PROJECT WHERE ID='46ac9d40-7916-4e7e-a3c6-1f1936df6994';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('46ac9d40-7916-4e7e-a3c6-1f1936df6994','XmlParser Flow Test',null,0,{ts '2015-12-04 16:46:16.232'},null,null,{ts '2015-12-04 16:46:31.540'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, LOCKED, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3ba74fb0-6dc1-4082-93cb-1336f55aead7','1.0','46ac9d40-7916-4e7e-a3c6-1f1936df6994',null,null,0,0,0,{ts '2015-12-04 16:46:16.232'},null,null,{ts '2015-12-04 16:46:16.234'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f645e064-83a7-47b8-9ee0-ee3364f587ee','6feb95a3-1df8-438d-ae2a-a4622711b1f4','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Element',0,null,{ts '2015-12-04 16:48:25.452'},null,null,{ts '2015-12-04 16:48:32.616'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('81bd9566-d981-440f-aa1e-83e5217d14ae','f645e064-83a7-47b8-9ee0-ee3364f587ee','Element',{ts '2015-12-04 16:48:39.280'},null,null,{ts '2015-12-04 16:48:40.894'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3efdcfba-eb31-48fd-844b-075ebf99c259','81bd9566-d981-440f-aa1e-83e5217d14ae','ID','VARCHAR',null,0,{ts '2015-12-04 16:48:47.669'},null,null,{ts '2015-12-04 16:48:49.654'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('42a60007-552a-4500-b102-06125afd4fbc','81bd9566-d981-440f-aa1e-83e5217d14ae','Name','VARCHAR',null,0,{ts '2015-12-04 16:48:43.625'},null,null,{ts '2015-12-04 16:48:45.200'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0e329341-3fd3-4269-b149-19279aaa6938','28f92fa7-fd9d-40f4-a1b5-f212b6f427a2','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Assert','Assert',null,0,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,null,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:55:38.536'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('15a39e9e-c86a-44b1-aa77-1921661ea368','e0579777-322e-4629-afcf-3a4ab10aad7c','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Parse XML','Parse XML',null,0,null,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:55:35.785'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('38963825-1512-4d8b-8d8e-b54eb2e14bc6','e0579777-322e-4629-afcf-3a4ab10aad7c','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Parse XML','Parse XML',null,0,null,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:54:56.623'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5dfe4590-9bd8-4617-87c4-04d14eb781d1','bad8e1c9-3e7d-4aad-bc8a-d3c1de69e01b','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Setup XML','Text Constant',null,0,null,null,null,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:57:54.971'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('85b02570-b0eb-4992-9e19-b814295489a9','28f92fa7-fd9d-40f4-a1b5-f212b6f427a2','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Assert','Assert',null,0,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,null,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:57:54.973'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9c16cc07-1d51-4de0-9913-31858be0ed91','28f92fa7-fd9d-40f4-a1b5-f212b6f427a2','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Assert','Assert',null,0,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,null,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:54:59.118'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a9586c1e-259b-4f1d-9ecf-0313d79eb165','e0579777-322e-4629-afcf-3a4ab10aad7c','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Parse XML','Parse XML',null,0,null,'f645e064-83a7-47b8-9ee0-ee3364f587ee',null,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:57:54.971'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e1a681a7-575e-426b-9f0f-da95dd9e0c07','bad8e1c9-3e7d-4aad-bc8a-d3c1de69e01b','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Setup XML','Text Constant',null,0,null,null,null,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:54:49.346'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f0db5b39-db9e-4cc9-b7f8-261644e4b0dc','bad8e1c9-3e7d-4aad-bc8a-d3c1de69e01b','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Setup XML','Text Constant',null,0,null,null,null,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:55:32.139'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0bc1b2c9-7f48-4a9c-80b3-3ec510f60db4','a9586c1e-259b-4f1d-9ecf-0313d79eb165','xml.formatter.template','<test>
  <element name="yo" id="1"><simplename>mo</simplename></element>
</test>',{ts '2015-12-04 16:49:55.172'},null,null,{ts '2015-12-04 16:59:19.562'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1351a597-7f9b-4121-9284-327b93b35cca','5dfe4590-9bd8-4617-87c4-04d14eb781d1','text','<test>
  <element name="yo" id="1"><simplename>mo</simplename></element>
  <element id="2"></element>
</test>',{ts '2015-12-04 16:47:01.864'},null,null,{ts '2015-12-04 16:58:37.630'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('49fa16b0-8e07-42b3-adb9-1f165747987c','0e329341-3fd3-4269-b149-19279aaa6938','logInput','true',{ts '2015-12-04 16:51:56.707'},null,null,{ts '2015-12-04 16:55:38.537'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('581f92d5-010c-466c-b01f-dae1d4c2c432','f0db5b39-db9e-4cc9-b7f8-261644e4b0dc','text','<test name="hello">
  <element id="1"></element>
  <element id="2"></element>
</test>',{ts '2015-12-04 16:47:01.864'},null,null,{ts '2015-12-04 16:55:32.139'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7ab62ed6-604e-491c-839f-9ee0f7a3e8f9','38963825-1512-4d8b-8d8e-b54eb2e14bc6','xml.formatter.template','<test>
  <element name="hello" id="1"></element>
</test>',{ts '2015-12-04 16:49:55.172'},null,null,{ts '2015-12-04 16:54:56.623'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('83e34809-167f-456a-9d6e-a9b08364f830','9c16cc07-1d51-4de0-9913-31858be0ed91','expected.entity.messages.count','1',{ts '2015-12-04 16:50:38.855'},null,null,{ts '2015-12-04 16:54:59.118'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8d5c6a08-4337-41ef-8973-5601ea257c74','0e329341-3fd3-4269-b149-19279aaa6938','expected.control.messages.count','1',{ts '2015-12-04 16:50:41.826'},null,null,{ts '2015-12-04 16:55:38.537'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('992bf014-4eee-4bac-aa5e-3f7d7cf307d4','85b02570-b0eb-4992-9e19-b814295489a9','expected.control.messages.count','1',{ts '2015-12-04 16:50:41.826'},null,null,{ts '2015-12-04 16:57:54.973'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a1253ff6-d7dd-4861-90d4-eb52ae6e1681','85b02570-b0eb-4992-9e19-b814295489a9','logInput','true',{ts '2015-12-04 16:51:56.707'},null,null,{ts '2015-12-04 16:57:54.973'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a430c48c-c60c-4a10-9351-453976c2b660','9c16cc07-1d51-4de0-9913-31858be0ed91','logInput','true',{ts '2015-12-04 16:51:56.707'},null,null,{ts '2015-12-04 16:54:59.119'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('bbd84cc6-a978-4707-8cd7-db1edbe94e14','e1a681a7-575e-426b-9f0f-da95dd9e0c07','text','<test>
  <element name="yo" id="1"></element>
  <element id="2"></element>
</test>',{ts '2015-12-04 16:47:01.864'},null,null,{ts '2015-12-04 16:54:49.347'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('cc339c96-6a29-4118-91e9-19aed0934ab5','0e329341-3fd3-4269-b149-19279aaa6938','expected.entity.messages.count','1',{ts '2015-12-04 16:50:38.855'},null,null,{ts '2015-12-04 16:55:38.537'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e24e58c1-58ae-4c60-b268-467f7d932854','85b02570-b0eb-4992-9e19-b814295489a9','expected.entity.messages.count','1',{ts '2015-12-04 16:50:38.855'},null,null,{ts '2015-12-04 16:57:54.973'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e8421a71-de20-4908-9833-c59b6fbac1f0','15a39e9e-c86a-44b1-aa77-1921661ea368','xml.formatter.template','<test name="hello">
  <element id="1"></element>
  <element id="2"></element>
</test>',{ts '2015-12-04 16:49:55.172'},null,null,{ts '2015-12-04 16:55:35.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('fbe684fb-7997-4aeb-8bf0-e29bd84e0474','9c16cc07-1d51-4de0-9913-31858be0ed91','expected.control.messages.count','1',{ts '2015-12-04 16:50:41.826'},null,null,{ts '2015-12-04 16:54:59.118'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('29e6f6f2-f1a2-4fa0-8300-e5d619f1cfae','a9586c1e-259b-4f1d-9ecf-0313d79eb165','81bd9566-d981-440f-aa1e-83e5217d14ae','xml.formatter.xpath','/test/element',{ts '2015-12-04 16:50:03.730'},null,null,{ts '2015-12-04 16:57:54.972'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5fc6269a-daa6-4ae3-a53c-7a8b2517f6a5','38963825-1512-4d8b-8d8e-b54eb2e14bc6','81bd9566-d981-440f-aa1e-83e5217d14ae','xml.formatter.xpath','/test/element',{ts '2015-12-04 16:50:03.730'},null,null,{ts '2015-12-04 16:54:56.623'});
insert into METL_COMPONENT_ENTITY_SETTING (ID, COMPONENT_ID, ENTITY_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('db6a828c-e53b-460f-9163-0b2c8b102908','15a39e9e-c86a-44b1-aa77-1921661ea368','81bd9566-d981-440f-aa1e-83e5217d14ae','xml.formatter.xpath','/test/element',{ts '2015-12-04 16:50:03.730'},null,null,{ts '2015-12-04 16:55:35.786'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('38e8d392-5493-4118-87a6-2e6170088d8f','15a39e9e-c86a-44b1-aa77-1921661ea368','3efdcfba-eb31-48fd-844b-075ebf99c259','xml.formatter.xpath','/element/@id',{ts '2015-12-04 16:50:09.525'},null,null,{ts '2015-12-04 16:55:35.786'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7d5c0c36-c3c4-42fd-ad99-c44893c070af','38963825-1512-4d8b-8d8e-b54eb2e14bc6','3efdcfba-eb31-48fd-844b-075ebf99c259','xml.formatter.xpath','/element/@id',{ts '2015-12-04 16:50:09.525'},null,null,{ts '2015-12-04 16:54:56.623'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('91285ff7-d94e-4bb4-b0a1-2eb02920082b','a9586c1e-259b-4f1d-9ecf-0313d79eb165','42a60007-552a-4500-b102-06125afd4fbc','xml.formatter.xpath','/element/simplename/text()',{ts '2015-12-04 16:50:06.493'},null,null,{ts '2015-12-04 17:01:31.230'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9f2b3d47-5f12-409c-b936-8329a3e43a54','15a39e9e-c86a-44b1-aa77-1921661ea368','42a60007-552a-4500-b102-06125afd4fbc','xml.formatter.xpath','/test/@name',{ts '2015-12-04 16:50:06.493'},null,null,{ts '2015-12-04 16:55:35.786'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('aeaf9822-7e45-44e4-8658-208822fb370c','38963825-1512-4d8b-8d8e-b54eb2e14bc6','42a60007-552a-4500-b102-06125afd4fbc','xml.formatter.xpath','/element/@name',{ts '2015-12-04 16:50:06.493'},null,null,{ts '2015-12-04 16:54:56.623'});
insert into METL_COMPONENT_ATTRIBUTE_SETTING (ID, COMPONENT_ID, ATTRIBUTE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('df4f1c78-f415-4b63-97f6-7540d0236ac7','a9586c1e-259b-4f1d-9ecf-0313d79eb165','3efdcfba-eb31-48fd-844b-075ebf99c259','xml.formatter.xpath','/element/@id',{ts '2015-12-04 16:50:09.525'},null,null,{ts '2015-12-04 16:57:54.972'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('5c398780-2db3-4bcf-94b5-94b32305742d','7fbb5d2a-4f94-43ff-9439-2a6aa170522e','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Test Missing Text',null,{ts '2015-12-04 16:57:54.975'},null,null,{ts '2015-12-04 17:04:04.479'},1);
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('b702d34f-0e57-4785-958c-33a22f22792f','151fb6c2-5671-45ba-a363-358d77b42f12','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Test Missing Attribute',null,{ts '2015-12-04 16:52:46.452'},null,null,{ts '2015-12-04 17:04:12.840'},1);
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('fde0a816-006e-4855-a8dc-7c91c7c979fe','eb1643f7-7c57-4a50-bb7d-1377832d6840','3ba74fb0-6dc1-4082-93cb-1336f55aead7',0,'Test Simple Xml Parser',null,{ts '2015-12-04 16:46:37.344'},null,null,{ts '2015-12-04 17:04:20.046'},1);
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('081f65bc-5fae-45ef-8b56-2ec38fd7c843','fde0a816-006e-4855-a8dc-7c91c7c979fe','0e329341-3fd3-4269-b149-19279aaa6938',510,150,2,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:50:35.154'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1550fe2a-aa3a-44b9-b5d8-06a9e3cb49ba','b702d34f-0e57-4785-958c-33a22f22792f','9c16cc07-1d51-4de0-9913-31858be0ed91',510,150,2,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:52:46.451'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('18820450-5f1e-404f-b42a-f0850266fdcd','fde0a816-006e-4855-a8dc-7c91c7c979fe','15a39e9e-c86a-44b1-aa77-1921661ea368',340,150,1,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:50:35.154'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1a87a934-f7ca-4356-899a-2a6df02b0aab','fde0a816-006e-4855-a8dc-7c91c7c979fe','f0db5b39-db9e-4cc9-b7f8-261644e4b0dc',160,150,0,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:50:35.152'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5927ad0d-4195-4e15-a494-19ad542c46a2','5c398780-2db3-4bcf-94b5-94b32305742d','a9586c1e-259b-4f1d-9ecf-0313d79eb165',330,150,1,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:57:54.972'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('888a2405-6f58-4474-b2f0-b1fb73773010','b702d34f-0e57-4785-958c-33a22f22792f','e1a681a7-575e-426b-9f0f-da95dd9e0c07',160,150,0,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:52:46.447'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('bdccf87f-f4b4-4f2f-ac39-7d861fafc7e8','5c398780-2db3-4bcf-94b5-94b32305742d','5dfe4590-9bd8-4617-87c4-04d14eb781d1',160,150,0,{ts '2015-12-04 16:46:52.881'},null,null,{ts '2015-12-04 16:57:54.971'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e2b78578-3e2e-4f2f-b4d7-e05addcb60dd','b702d34f-0e57-4785-958c-33a22f22792f','38963825-1512-4d8b-8d8e-b54eb2e14bc6',330,150,1,{ts '2015-12-04 16:48:12.931'},null,null,{ts '2015-12-04 16:54:56.624'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ec597ab2-3f17-46d9-a29e-fda82f146b66','5c398780-2db3-4bcf-94b5-94b32305742d','85b02570-b0eb-4992-9e19-b814295489a9',510,150,2,{ts '2015-12-04 16:50:32.639'},null,null,{ts '2015-12-04 16:57:54.974'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('18820450-5f1e-404f-b42a-f0850266fdcd','081f65bc-5fae-45ef-8b56-2ec38fd7c843',{ts '2015-12-04 16:50:35.151'},null,null,{ts '2015-12-04 16:50:35.154'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1a87a934-f7ca-4356-899a-2a6df02b0aab','18820450-5f1e-404f-b42a-f0850266fdcd',{ts '2015-12-04 16:48:15.924'},null,null,{ts '2015-12-04 16:50:35.154'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5927ad0d-4195-4e15-a494-19ad542c46a2','ec597ab2-3f17-46d9-a29e-fda82f146b66',{ts '2015-12-04 16:50:35.151'},null,null,{ts '2015-12-04 16:57:54.974'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('888a2405-6f58-4474-b2f0-b1fb73773010','e2b78578-3e2e-4f2f-b4d7-e05addcb60dd',{ts '2015-12-04 16:48:15.924'},null,null,{ts '2015-12-04 16:52:46.451'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('bdccf87f-f4b4-4f2f-ac39-7d861fafc7e8','5927ad0d-4195-4e15-a494-19ad542c46a2',{ts '2015-12-04 16:48:15.924'},null,null,{ts '2015-12-04 16:57:54.974'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e2b78578-3e2e-4f2f-b4d7-e05addcb60dd','1550fe2a-aa3a-44b9-b5d8-06a9e3cb49ba',{ts '2015-12-04 16:50:35.151'},null,null,{ts '2015-12-04 16:52:46.452'});