/*
 Navicat Premium Data Transfer

 Source Server         : Postgres Local
 Source Server Type    : PostgreSQL
 Source Server Version : 100012
 Source Host           : localhost:5432
 Source Catalog        : express
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100012
 File Encoding         : 65001

 Date: 17/05/2021 14:25:42
*/


-- ----------------------------
-- Table structure for actions
-- ----------------------------
DROP TABLE IF EXISTS "public"."actions";
CREATE TABLE "public"."actions" (
  "id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_id" char(36) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "alias" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of actions
-- ----------------------------
INSERT INTO "public"."actions" VALUES ('a6a93082-811b-4d24-9d2f-50588a00b6fc', '17f270aa-aa15-42ee-9288-4b06e984893c', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('9abfbc79-c7df-4721-8f03-185b875a1e30', '17f270aa-aa15-42ee-9288-4b06e984893c', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('7944eb94-27c7-4f13-9a4b-f0c02cb11707', '17f270aa-aa15-42ee-9288-4b06e984893c', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('4d54efbb-76c6-4932-b883-e68a6cf7b0a1', '17f270aa-aa15-42ee-9288-4b06e984893c', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('3a50ead7-9e6f-4ae2-8d7a-6e9eb8df4d76', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('b0bfae4a-8548-4c7c-a824-b84741c78622', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('4e80a1a2-f73c-49a0-bd5d-5c52fb0ba108', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('903cfbf0-89f3-4ee6-b1f0-a312956a1bcb', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('62da0164-17fd-4df3-9d85-0d511b4da23b', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('5a196f2e-f947-4fca-98ab-780da65da6cb', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('f71324a8-909c-4c2f-898a-526610ee3060', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('adb1a8c6-fd95-4e32-aa3e-69c5fc23248f', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('5dea6307-7c2b-43f6-b086-04cd6d02b359', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('3717bd8e-10f5-4721-917e-9781ce45dfbf', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('c1f624d1-577d-490e-8dfb-19b107dd04b9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('4b89c068-a8e0-478b-9a15-b6d7e7fb28df', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('80c5f944-fc56-4d68-b48e-ce5cd2efd6f2', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('482d3462-6432-4999-a232-b7d2043057f5', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('218f1467-7f90-4e59-aeea-5ed67432b6e0', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('12e052c5-b712-47d8-a32d-20da4a962639', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('b44b0226-3c55-46db-8591-6384e77ed595', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'index', 'Lihat Data');
INSERT INTO "public"."actions" VALUES ('6739d6e5-f906-47b2-9dc0-e68be1de91df', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'store', 'Tambah Data');
INSERT INTO "public"."actions" VALUES ('f81f71b8-7557-419f-b892-fd2c4b927686', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'update', 'Ubah Data');
INSERT INTO "public"."actions" VALUES ('8cecf6d4-1b85-438a-a322-78d45566a789', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'destroy', 'Hapus Data');
INSERT INTO "public"."actions" VALUES ('6296c605-8932-4f74-bb85-abbbe3b11130', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'download', 'Download Dokumen');
INSERT INTO "public"."actions" VALUES ('3e83375a-b7b3-467c-ada5-3efdad7f7946', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'show', 'Detail Data');
INSERT INTO "public"."actions" VALUES ('03eb62ce-ee2b-40f5-a981-c31eabb0c51a', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'approve', 'Approve');
INSERT INTO "public"."actions" VALUES ('7db75aae-dedd-44e3-b1a3-b6dc7df1bab8', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'reject', 'Reject');
INSERT INTO "public"."actions" VALUES ('6db3550e-59df-4e28-9899-6a4348b8d936', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'sync', 'Sync');
INSERT INTO "public"."actions" VALUES ('83d307e2-8ae1-41ba-bbce-56a8740763f1', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'show', 'Detail Data');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS "public"."menus";
CREATE TABLE "public"."menus" (
  "id" char(36) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "parent_id" char(36) COLLATE "pg_catalog"."default",
  "url" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "route" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO "public"."menus" VALUES ('6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'Dokumen', NULL, 'dokumen.index', 'la la-file', 'dokumen');
INSERT INTO "public"."menus" VALUES ('1a13fe0f-14b7-4613-b085-b93b24cf8770', 'Dokumen Izin', 'f498cd5f-79f9-4e0a-89a0-3e3f4ae0f704', 'document.index', NULL, 'document');
INSERT INTO "public"."menus" VALUES ('17f270aa-aa15-42ee-9288-4b06e984893c', 'Jenis Dokumen', 'f498cd5f-79f9-4e0a-89a0-3e3f4ae0f704', 'jenis.index', NULL, 'jenis');
INSERT INTO "public"."menus" VALUES ('e454ff16-3068-4b36-bc0e-6fb43515467a', 'Klasifikasi Dokumen', 'f498cd5f-79f9-4e0a-89a0-3e3f4ae0f704', 'klasifikasi.index', NULL, 'klasifikasi');
INSERT INTO "public"."menus" VALUES ('5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'Role', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'role.index', NULL, 'role');
INSERT INTO "public"."menus" VALUES ('b3d877bd-e68a-489b-8e58-355f34d00125', 'User', 'b3d877bd-e68a-489b-8e58-355f34d00125', 'user.index', NULL, 'user');

-- ----------------------------
-- Table structure for parents
-- ----------------------------
DROP TABLE IF EXISTS "public"."parents";
CREATE TABLE "public"."parents" (
  "id" char(36) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "icon" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of parents
-- ----------------------------
INSERT INTO "public"."parents" VALUES ('f498cd5f-79f9-4e0a-89a0-3e3f4ae0f704', 'Master', 'la la-asterisk');
INSERT INTO "public"."parents" VALUES ('b3d877bd-e68a-489b-8e58-355f34d00125', 'Administrator', 'la la-cogs');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "role_id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "action_id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "action" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id" char(36) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'b44b0226-3c55-46db-8591-6384e77ed595', 'index', '1344f2e4-dea9-4650-82a7-242565e9b854');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'e454ff16-3068-4b36-bc0e-6fb43515467a', '6739d6e5-f906-47b2-9dc0-e68be1de91df', 'store', '337ea463-3302-4ca4-8dcd-d05f2a8c2042');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'e454ff16-3068-4b36-bc0e-6fb43515467a', 'f81f71b8-7557-419f-b892-fd2c4b927686', 'update', 'bbbb301f-fb11-4c63-9bde-4cbc025f06a2');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'e454ff16-3068-4b36-bc0e-6fb43515467a', '8cecf6d4-1b85-438a-a322-78d45566a789', 'destroy', 'fd30d65e-fecb-4348-ac8a-441106f015a8');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', '13c0e775-12f6-47bf-abc1-0b4643fec749');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '3717bd8e-10f5-4721-917e-9781ce45dfbf', 'store', '155d6ba1-3c14-46e6-a556-6444a34b050c');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'c1f624d1-577d-490e-8dfb-19b107dd04b9', 'update', 'db469ffe-5d1e-4479-9976-cef1ee14b607');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '4b89c068-a8e0-478b-9a15-b6d7e7fb28df', 'destroy', '56ee038c-6e64-40f2-85fe-b70169219241');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', '9b410fa6-d521-445f-b834-665bc49b8d80');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '3e83375a-b7b3-467c-ada5-3efdad7f7946', 'show', 'dfe82b67-205b-4cf3-be7a-c1fd4bae259d');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '03eb62ce-ee2b-40f5-a981-c31eabb0c51a', 'approve', 'f97ffa3e-12be-4a35-9837-84556539017d');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '7db75aae-dedd-44e3-b1a3-b6dc7df1bab8', 'reject', '60cbcf3a-35aa-49aa-9186-656279ce5796');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '17f270aa-aa15-42ee-9288-4b06e984893c', 'a6a93082-811b-4d24-9d2f-50588a00b6fc', 'index', '59c2092d-6bd4-44a5-aca1-ccdc2ed03016');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '17f270aa-aa15-42ee-9288-4b06e984893c', '9abfbc79-c7df-4721-8f03-185b875a1e30', 'store', '972138e4-4828-4cce-97b3-c87a3864553d');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '17f270aa-aa15-42ee-9288-4b06e984893c', '7944eb94-27c7-4f13-9a4b-f0c02cb11707', 'update', '5b4c1621-5b7c-4ea4-bd54-219b8a3d0148');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '17f270aa-aa15-42ee-9288-4b06e984893c', '4d54efbb-76c6-4932-b883-e68a6cf7b0a1', 'destroy', 'd2060ef8-d875-4c7a-b8f3-2161c588fab2');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '3a50ead7-9e6f-4ae2-8d7a-6e9eb8df4d76', 'index', 'efe15217-16cc-45c3-9af4-a5bbccd34050');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'b0bfae4a-8548-4c7c-a824-b84741c78622', 'store', '3f5af218-d868-457b-a590-bf0f44edc503');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '4e80a1a2-f73c-49a0-bd5d-5c52fb0ba108', 'update', 'd4e4862c-8dae-42a5-83a4-572f07449dc8');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '903cfbf0-89f3-4ee6-b1f0-a312956a1bcb', 'destroy', 'd23500d3-ad35-4879-8ddc-a66478396583');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '80c5f944-fc56-4d68-b48e-ce5cd2efd6f2', 'index', '96c71399-f65d-4de4-abab-83ff8d8d5053');
INSERT INTO "public"."permissions" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', '17c168cf-81f8-426a-ac39-a5c88fe77b33');
INSERT INTO "public"."permissions" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '3717bd8e-10f5-4721-917e-9781ce45dfbf', 'store', 'ac15ab6d-ef5c-44de-a670-30d9382d9b1b');
INSERT INTO "public"."permissions" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'c1f624d1-577d-490e-8dfb-19b107dd04b9', 'update', '75000f7f-05fc-47b2-83ab-a7f2d318eecd');
INSERT INTO "public"."permissions" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', 'eaf9d4af-c2a2-478f-a4ad-3c2150217c6a');
INSERT INTO "public"."permissions" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', 'f709330f-19d2-4c50-a225-e624b2425bf4');
INSERT INTO "public"."permissions" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '3717bd8e-10f5-4721-917e-9781ce45dfbf', 'store', '0c5cce70-6f05-4c18-ab2a-5bd3e76143e8');
INSERT INTO "public"."permissions" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '4b89c068-a8e0-478b-9a15-b6d7e7fb28df', 'destroy', '106c78e0-4926-4a8a-b7d6-f2555716168a');
INSERT INTO "public"."permissions" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', '8c988994-6392-4341-bb5a-5b6c865c56bc');
INSERT INTO "public"."permissions" VALUES ('6f906e01-b8bc-4759-8f69-4d3253b85b6a', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', '6fd5e240-dfaf-46f3-b29f-e0da6ca9bac2');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', 'a7c8a10f-5361-41ff-9baf-19df83c82acb');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', '58338156-4640-43b5-af5f-8e6bedcb1e1f');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '17f270aa-aa15-42ee-9288-4b06e984893c', 'a6a93082-811b-4d24-9d2f-50588a00b6fc', 'index', 'cb4f1994-fb98-438e-b5c2-51ea671d7e2f');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '17f270aa-aa15-42ee-9288-4b06e984893c', '9abfbc79-c7df-4721-8f03-185b875a1e30', 'store', '994b9f91-adae-48c2-a869-33115db68d00');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '17f270aa-aa15-42ee-9288-4b06e984893c', '4d54efbb-76c6-4932-b883-e68a6cf7b0a1', 'destroy', 'fc92bb48-26f4-49bf-8cbe-816c19747a93');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '3a50ead7-9e6f-4ae2-8d7a-6e9eb8df4d76', 'index', '4efb2459-b515-45b6-8904-b548f333dc71');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '1a13fe0f-14b7-4613-b085-b93b24cf8770', 'b0bfae4a-8548-4c7c-a824-b84741c78622', 'store', '5801fe34-bff1-4064-979b-9b53440c0ae6');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '903cfbf0-89f3-4ee6-b1f0-a312956a1bcb', 'destroy', '74bd8301-cc7f-4193-af31-81475a226041');
INSERT INTO "public"."permissions" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '5dea6307-7c2b-43f6-b086-04cd6d02b359', 'index', '6f37e238-f4bd-462c-9970-2b1ec370f746');
INSERT INTO "public"."permissions" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '3717bd8e-10f5-4721-917e-9781ce45dfbf', 'store', 'd9964afc-135c-4d92-b41a-1c9147f6e50f');
INSERT INTO "public"."permissions" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '4b89c068-a8e0-478b-9a15-b6d7e7fb28df', 'destroy', '8101329e-21dd-40df-9b3d-66e0ecf8f931');
INSERT INTO "public"."permissions" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', '912a577f-ec7c-4d1e-85d2-fb79cbc884a3');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '482d3462-6432-4999-a232-b7d2043057f5', 'store', 'e696d94d-8bed-4362-926e-14fc467e56df');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '218f1467-7f90-4e59-aeea-5ed67432b6e0', 'update', '4d2b02da-5d6c-4416-8b7b-139cd3f600f3');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '12e052c5-b712-47d8-a32d-20da4a962639', 'destroy', 'afad5049-f9e7-47f8-9757-5ebe22591d2c');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '6db3550e-59df-4e28-9899-6a4348b8d936', 'sync', '5783bf08-450d-41cf-80f4-7ee709731b70');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'b3d877bd-e68a-489b-8e58-355f34d00125', '83d307e2-8ae1-41ba-bbce-56a8740763f1', 'show', 'f4973abc-ccc2-46d4-9bf9-bdd7115482d2');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', '62da0164-17fd-4df3-9d85-0d511b4da23b', 'index', '54c81a49-8e6f-410c-a253-3e581125de9a');
INSERT INTO "public"."permissions" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '4b89c068-a8e0-478b-9a15-b6d7e7fb28df', 'destroy', '61ba8d6e-4f16-4d07-b3c8-299fb26fdf35');
INSERT INTO "public"."permissions" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'c1f624d1-577d-490e-8dfb-19b107dd04b9', 'update', '3ab82d36-19a0-413c-b7af-7c2861f42ab3');
INSERT INTO "public"."permissions" VALUES ('6f906e01-b8bc-4759-8f69-4d3253b85b6a', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', '6296c605-8932-4f74-bb85-abbbe3b11130', 'download', 'bd210cc0-eee7-4100-9565-df34a3d98a0e');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '17f270aa-aa15-42ee-9288-4b06e984893c', '7944eb94-27c7-4f13-9a4b-f0c02cb11707', 'update', 'e6e1bc3e-9609-4274-ac33-b6665a982f89');
INSERT INTO "public"."permissions" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', '1a13fe0f-14b7-4613-b085-b93b24cf8770', '4e80a1a2-f73c-49a0-bd5d-5c52fb0ba108', 'update', 'df0cd752-3ee4-48d7-b4af-cdfd58697247');
INSERT INTO "public"."permissions" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', '6a220264-7fc9-4647-9261-7d6d0bcd7e09', 'c1f624d1-577d-490e-8dfb-19b107dd04b9', 'update', '1022954b-2b3f-4513-b063-391da5d15472');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', '5a196f2e-f947-4fca-98ab-780da65da6cb', 'store', 'b16e9a96-f036-4cc8-b6ef-ba98168997d1');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'f71324a8-909c-4c2f-898a-526610ee3060', 'update', '61ad2d64-c6a0-4154-97b5-5b910d2b44a9');
INSERT INTO "public"."permissions" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', '5eb0f4b1-1ef7-4886-b5a6-c16db5c46e55', 'adb1a8c6-fd95-4e32-aa3e-69c5fc23248f', 'destroy', '3832612a-091a-4c07-843e-39c9420f26bf');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."role_user";
CREATE TABLE "public"."role_user" (
  "user_id" char(36) COLLATE "pg_catalog"."default",
  "role_id" char(36) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO "public"."role_user" VALUES ('18a35075-a1b4-4e89-8ed4-369d2ee1ab37', 'bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e');
INSERT INTO "public"."role_user" VALUES ('21eb031a-d4e9-45b2-a9d5-2e425f99fd59', '33f6bc59-672b-4d87-967b-f397aec540b7');
INSERT INTO "public"."role_user" VALUES ('21eb031a-d4e9-45b2-a9d5-2e425f99fd59', 'd061bf23-1093-445a-b185-86fa2b2cc098');
INSERT INTO "public"."role_user" VALUES ('7e787305-ab9c-4d80-a188-29631497002c', 'd061bf23-1093-445a-b185-86fa2b2cc098');
INSERT INTO "public"."role_user" VALUES ('12a122c5-0b8f-45fa-9637-4039dec4809a', '33f6bc59-672b-4d87-967b-f397aec540b7');
INSERT INTO "public"."role_user" VALUES ('1a13fe0f-14b7-4613-b085-b93b24cf8770', '33f6bc59-672b-4d87-967b-f397aec540b7');
INSERT INTO "public"."role_user" VALUES ('1a13fe0f-14b7-4613-b085-b93b24cf8770', 'd061bf23-1093-445a-b185-86fa2b2cc098');
INSERT INTO "public"."role_user" VALUES ('1e75d789-b0ee-4375-b7af-1c868f7d354a', '6f906e01-b8bc-4759-8f69-4d3253b85b6a');
INSERT INTO "public"."role_user" VALUES ('ff683170-b709-47d4-9612-e31b859fa21e', 'bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" VALUES ('bf8521ab-ea01-4bbb-8cfc-e4c210a7a04e', 'Super Admin', '2021-04-08 19:11:08', '2021-04-18 13:11:37');
INSERT INTO "public"."roles" VALUES ('33f6bc59-672b-4d87-967b-f397aec540b7', 'Admin Keuangan', '2021-04-18 13:14:44', '2021-04-18 13:14:44');
INSERT INTO "public"."roles" VALUES ('d061bf23-1093-445a-b185-86fa2b2cc098', 'Admin IT', '2021-04-18 13:40:16', '2021-04-18 13:40:16');
INSERT INTO "public"."roles" VALUES ('6f906e01-b8bc-4759-8f69-4d3253b85b6a', 'Manager Keuangan', '2021-04-21 14:59:00', '2021-04-21 14:59:00');
INSERT INTO "public"."roles" VALUES ('48e731e6-5b3a-4fdb-823e-9c5dfee811a6', 'Asmen Keuangan', '2021-04-21 15:28:58', '2021-04-21 15:28:58');
INSERT INTO "public"."roles" VALUES ('764b78b6-2668-463b-abff-3a3b72049ac9', 'Admin Human Resource (HR)', '2021-04-21 15:52:00', '2021-04-21 15:52:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "photo" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('7e787305-ab9c-4d80-a188-29631497002c', 'Admin IT', 'adminit@mail.com', NULL, '$2y$10$ZZEqYDxnBWkh3wuOn500gOQBsAqoB5wbGdKf6iCA94U4NRcGf1mm6', NULL, '2021-04-11 15:32:58', '2021-04-19 12:25:38');
INSERT INTO "public"."users" VALUES ('12a122c5-0b8f-45fa-9637-4039dec4809a', 'Admin Keuangan', 'adminkeuangan@mail.com', NULL, '$2y$10$d6LqgoForgmLz14VXRSQeOQTSOlx2Y.54h9ayvTpEoCCKK7FuVZ.G', NULL, '2021-04-11 15:45:03', '2021-04-19 12:26:17');
INSERT INTO "public"."users" VALUES ('18a35075-a1b4-4e89-8ed4-369d2ee1ab37', 'Hery Fidiawan', 'heryfidiawan07@gmail.com', NULL, '$2y$10$QUjxAIBLokYvxFYfIPjNVupY644C7cKcpnZo9BPexM5S3ZAicIZ5u', NULL, '2021-03-14 07:57:52', '2021-04-19 16:03:58');
INSERT INTO "public"."users" VALUES ('1a13fe0f-14b7-4613-b085-b93b24cf8770', 'asep dadan', 'dadanasep@gmail.com', NULL, '$2y$10$yK7a/kHTgXhZCFT.Uofc0OXi/noidcnyNPH.S8cyxNj0vzZNGFWMe', NULL, '2021-04-08 04:20:33', '2021-04-20 15:45:52');
INSERT INTO "public"."users" VALUES ('6425dc88-2a0e-4b2f-8b56-ef1900cef7f2', 'asep dadan', 'dadanasep74+2@gmail.com', NULL, '$2y$10$wFdGQQu9K1C86rubLML3fOrYLv6dqDAt9VaTj3Vu2/CT.8ExMN4Fi', NULL, '2021-04-21 14:29:28', '2021-04-21 14:29:28');
INSERT INTO "public"."users" VALUES ('21eb031a-d4e9-45b2-a9d5-2e425f99fd59', 'asep dadan - IT Keuangan', 'dadanasep74+12@gmail.com', NULL, '$2y$10$bElH1G5dlo6dUNFTkrXixO.x9Oq9djWDV6jDP8xRUD.lQbWqIy6Ne', NULL, '2021-04-18 13:48:18', '2021-04-21 14:36:17');
INSERT INTO "public"."users" VALUES ('1e75d789-b0ee-4375-b7af-1c868f7d354a', 'Manager Keuangan', 'managerkeuangan@mail.com', NULL, '$2y$10$BVZ5AE7MPjskNapgSgdEd.n1ezCrs3T62sAswYi1Hd2GwiaC20alW', NULL, '2021-04-21 15:00:09', '2021-04-21 15:37:20');
INSERT INTO "public"."users" VALUES ('01fc6bc6-35c2-4f6b-a84c-4a8d20da1655', 'Test Postman 1', 'postman1@mail.com', NULL, '$2b$10$jyGM4ZUSEku1MPSa5mBs7ObVGG1svNdpvDJSJYBZoNVIJTMr70hxK', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('60bd1f28-87c1-47f1-881e-4737a50e5882', 'Test Postman 2', 'postman2@mail.com', NULL, '$2b$10$//BD/vTpfywS1ck.qmVyn.ekz0v5poJqjGHTrK9hVU6u66v9hkVk6', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('2e4ba651-9386-4dba-b292-6daacfd7365f', 'Test Postman 3', 'postman3@mail.com', NULL, '$2b$10$g6DilLE8PbG1LIfoRpkKeukD6DDH5KIOZA1vyK1peqUQ4g40lbhFa', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('db3021eb-596a-48ec-8b78-fcbe27ed250e', 'Test Postman 4', 'postman4@mail.com', NULL, '$2b$10$MKzhCE1JYnWUksTJhgX0o.tg4wXgavAnM6pUx5sD45m16KJinwZWK', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('e2220cc3-e7e2-4abd-af91-d8e8e225dc58', 'Test Postman 5', 'postman5@mail.com', NULL, '$2b$10$A9mIuAuTFdgBfTL2M.d0wujMCWAhna8b.lo7La8GHLTXNDhPc2XHW', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('2517632b-2675-485c-9280-5572053e498f', 'Test Postman 10 updated', 'postman10@mail.com', NULL, '$2b$10$q3R9YulLmbZENgG2emhGauRdZUURvo1RWhdNJRm0PePA45crE6N5C', 'storage\user\1621013606268-4.jpg', NULL, NULL);
INSERT INTO "public"."users" VALUES ('cc242e42-264d-43c6-8792-2c909ebdd457', 'Test Postman 6', 'postman6@mail.com', NULL, '$2b$10$tzkjHp.3OioTex/OijjPYePpDVZOiOJyHzGbFFqfU5mkEjNPHenLe', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('4a2a3f96-0a5d-4ed8-b628-9cb7632ee77a', 'Test Postman 7', 'postman7@mail.com', NULL, '$2b$10$wZmBtsaMdz0f1JYJlvFhKerQGGSnXqGIzgrAJMoExeNVI//CE8P96', NULL, NULL, NULL);
INSERT INTO "public"."users" VALUES ('108f3826-bd94-49ff-bb9a-afa4b85610c4', 'Test Postman 9', 'postman9@mail.com', NULL, '$2b$10$t45Tb2RPfvV/zIzqoOEDiOJPXAC8ipwbDkZ/eOSYYrDkUl6pm6My6', NULL, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table actions
-- ----------------------------
ALTER TABLE "public"."actions" ADD CONSTRAINT "action_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "email" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
