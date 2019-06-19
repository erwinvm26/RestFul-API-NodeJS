/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : dbfactpro

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 17/06/2019 23:42:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb01_usuario
-- ----------------------------
DROP TABLE IF EXISTS `tb01_usuario`;
CREATE TABLE `tb01_usuario`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `encript` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `estado` int(11) NULL DEFAULT NULL,
  `codperfil` int(5) NULL DEFAULT NULL,
  `codmodulos` int(5) NULL DEFAULT NULL,
  `strfoto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb01_usuario
-- ----------------------------
INSERT INTO `tb01_usuario` VALUES (4, 'Andres', 'Lopez', NULL, 'al@gmail.com', '$2b$10$jT6PTNsLx37W6WO4M4LOTOnDmsr1X27mEo92W43nrGD2TPpTIJVGK', '1234al', '2019-02-17 15:49:55', 2, 12, 1, NULL);
INSERT INTO `tb01_usuario` VALUES (5, 'Oscar', 'Lopez', NULL, 'al@gmail.com', '$2b$10$N8OOqWyId38ss6uyweAO1uJwAx49KLaJFq/d/r9brijjCjN/.XFoC', '1234al', '2019-02-23 23:05:08', 2, 12, 1, NULL);
INSERT INTO `tb01_usuario` VALUES (6, 'Samuel', 'Vargas', NULL, 'samyvargas@gmail.com', '$2b$10$0OWmxGEBbZQlnjj6jV3b6ushVw8TssstAzVzjwaUSj/wCsA5mhRKq', '123456789', '2019-02-23 23:09:21', 2, 12, 1, NULL);
INSERT INTO `tb01_usuario` VALUES (7, 'Samuel', 'Vargas', 'samy', 'sam@gmail.com', '$2b$10$/nOxK3Zr9kDpDAY5K5JNLuaSef3bmEVUEdPX627Xj3Qs7y2JPZBPe', 'samy234', '2019-02-23 23:21:27', 2, 11, 1, NULL);
INSERT INTO `tb01_usuario` VALUES (9, 'jeffer', 'vargas', '', 'jeffer@gmail.com', '$2b$10$jbGr.F0VflOJ.E3FNyI7OuBhzbI6.TEcDvuuCGy5ctxgWgKcltFcW', 'jefferson', '2019-03-01 02:15:36', 2, 11, 1, NULL);

-- ----------------------------
-- Table structure for tb02_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb02_menu`;
CREATE TABLE `tb02_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupos` int(4) NOT NULL,
  `strdescrip` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module` int(4) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT 8,
  `cls` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb02_menu
-- ----------------------------
INSERT INTO `tb02_menu` VALUES (1, 0, 'Dashboard', '', 'ft-home', 1, 8, 'active');
INSERT INTO `tb02_menu` VALUES (2, 0, 'Inventario', '/productos', 'ft-package', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (3, 0, 'Fabricantes', '/fabricante', 'ft-slack', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (4, 9999, 'Compras', 'ui-compras', 'ft-shopping-cart', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (5, 4, 'Nueva compra', '/compras/compras', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (6, 4, 'Comprobante de compras', '/compras/historial', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (7, 0, 'Directorio', '/contactos', 'ft-user', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (8, 7, 'Clientes', '/contactos/clientes', NULL, 1, 9, NULL);
INSERT INTO `tb02_menu` VALUES (9, 7, 'Proveedores', '/contactos/proveedor', NULL, 1, 9, NULL);
INSERT INTO `tb02_menu` VALUES (10, 9999, 'Facturación', 'ui-fact', 'ft-bookmark', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (11, 10, 'Nueva venta', 'fact/nventa', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (12, 10, 'Adminitrar Facturas', 'fact/admfact', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (13, 9999, 'Reportes', 'ui-reportes', 'ft-activity', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (14, 13, 'Reporte de Ventas', 'repo/ventas', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (15, 13, 'Reporte de Compras', 'repo/compras', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (16, 13, 'Reporte de Inventario', 'repo/inv', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (17, 9999, 'Configuración', 'ui-config', 'ft-sliders', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (18, 17, 'Perfil de la Empresa', 'confg/perfil', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (19, 17, 'Monedas', 'confg/moneda', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (20, 17, 'Impuestos', 'confg/impuesto', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (21, 9999, 'Administrar Accesos', 'ui-adminacss', 'ft-users', 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (22, 21, 'Usuarios', 'adacc/usuarios', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (23, 21, 'Grupos de Usuarios', 'adacc/gruposu', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (24, 9, 'Devoluciones', 'adacc/gruposu', NULL, 1, 8, NULL);
INSERT INTO `tb02_menu` VALUES (25, 17, 'Catálogo', 'config/catalogo', 'fa fa-circle-o fa-fw', 1, 8, NULL);

-- ----------------------------
-- Table structure for tb03_perfiles
-- ----------------------------
DROP TABLE IF EXISTS `tb03_perfiles`;
CREATE TABLE `tb03_perfiles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) NOT NULL,
  `perfil` int(6) NULL DEFAULT NULL,
  `estado` int(2) NOT NULL DEFAULT 8,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb03_perfiles
-- ----------------------------
INSERT INTO `tb03_perfiles` VALUES (1, 1, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (2, 2, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (3, 3, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (4, 4, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (5, 5, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (9, 2, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (10, 6, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (11, 7, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (12, 8, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (13, 9, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (14, 10, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (15, 11, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (16, 12, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (17, 13, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (18, 14, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (19, 15, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (20, 16, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (21, 17, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (22, 18, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (23, 19, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (24, 20, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (25, 21, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (26, 22, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (27, 23, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (28, 24, 11, 8);
INSERT INTO `tb03_perfiles` VALUES (29, 25, 11, 8);

-- ----------------------------
-- Table structure for tb04_catalogo
-- ----------------------------
DROP TABLE IF EXISTS `tb04_catalogo`;
CREATE TABLE `tb04_catalogo`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idtabla` int(11) NULL DEFAULT NULL,
  `idgrupo` int(5) NULL DEFAULT NULL,
  `strdescrip` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `strcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `estado` int(2) NULL DEFAULT 8,
  `fecha` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxcatalogo`(`id`, `idtabla`, `idgrupo`, `strdescrip`, `estado`, `fecha`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 540 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb04_catalogo
-- ----------------------------
INSERT INTO `tb04_catalogo` VALUES (1, 0, 99999, 'GENERO', NULL, 8, '2019-04-27 11:17:11');
INSERT INTO `tb04_catalogo` VALUES (2, 1, 0, 'Masculino', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (3, 1, 0, 'Femenino', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (4, 0, 99999, 'ESTADO CIVIL', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (5, 4, 0, 'Casado', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (6, 4, 0, 'Soltero', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (7, 0, 99999, 'ESTADO APP', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (8, 7, 0, 'Activo', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (9, 7, 0, 'Inactivo', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (10, 0, 99999, 'USUARIOS', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (11, 10, 0, 'Administrador', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (12, 10, 0, 'Comun', NULL, 8, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (13, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (14, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (15, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (16, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (17, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (18, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (19, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (20, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (21, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (22, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (23, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (24, 10, 0, 'Disponible', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (25, 0, 99999, 'FABRICANTES', NULL, 9, '2019-04-15 20:17:18');
INSERT INTO `tb04_catalogo` VALUES (26, 25, 0, 'Apple', NULL, 8, '2019-04-15 20:21:36');
INSERT INTO `tb04_catalogo` VALUES (27, 25, 0, 'Dell', NULL, 8, '2019-04-15 21:39:12');
INSERT INTO `tb04_catalogo` VALUES (28, 25, 0, 'Sony', NULL, 8, '2019-04-15 23:01:14');
INSERT INTO `tb04_catalogo` VALUES (38, 25, 0, '22 Miles', NULL, 8, '2019-04-15 23:05:11');
INSERT INTO `tb04_catalogo` VALUES (39, 25, 0, '3M', NULL, 8, '2019-04-15 23:05:36');
INSERT INTO `tb04_catalogo` VALUES (40, 25, 0, 'Archelon ', NULL, 8, '2019-04-15 23:05:49');
INSERT INTO `tb04_catalogo` VALUES (41, 25, 0, 'Avery Dennison', NULL, 8, '2019-04-15 23:06:02');
INSERT INTO `tb04_catalogo` VALUES (42, 25, 0, 'Agora', NULL, 8, '2019-04-15 23:06:13');
INSERT INTO `tb04_catalogo` VALUES (43, 25, 0, 'Alien ', NULL, 8, '2019-04-15 23:06:37');
INSERT INTO `tb04_catalogo` VALUES (44, 25, 0, 'ArmorActive ', NULL, 8, '2019-04-15 23:06:37');
INSERT INTO `tb04_catalogo` VALUES (45, 25, 0, 'Amer Networks ', NULL, 8, '2019-04-15 23:06:37');
INSERT INTO `tb04_catalogo` VALUES (46, 25, 0, 'AML ', NULL, 8, '2019-04-15 23:06:37');
INSERT INTO `tb04_catalogo` VALUES (47, 25, 0, 'Aopen ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (48, 25, 0, 'APG Cash Drawer ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (49, 25, 0, 'AQ Sonic ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (50, 25, 0, 'Auto Star ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (51, 25, 0, 'ATP ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (52, 25, 0, 'Brecknell ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (53, 25, 0, 'Bartender ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (54, 25, 0, 'Bematech ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (55, 25, 0, 'Bixolon ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (56, 25, 0, 'Brother Mobile', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (57, 25, 0, 'Brightsign ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (58, 25, 0, 'Casio ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (59, 25, 0, 'Command Communications ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (60, 25, 0, 'Cherry ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (61, 25, 0, 'Citizen ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (62, 25, 0, 'Cipherlab ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (63, 25, 0, 'Compulocks ', NULL, 8, '2019-04-15 23:06:38');
INSERT INTO `tb04_catalogo` VALUES (64, 25, 0, 'Creative Mounting Solutions', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (65, 25, 0, 'Code', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (66, 25, 0, 'Cognitive TPG ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (67, 25, 0, 'Confidex ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (68, 25, 0, 'Cradlepoint ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (69, 25, 0, 'Cables to Go ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (70, 25, 0, 'Detecto ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (71, 25, 0, 'Denso', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (72, 25, 0, 'Digiop ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (73, 25, 0, 'Digital Persona ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (74, 25, 0, 'Datalogic', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (75, 25, 0, 'Dryrain Technologies ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (76, 25, 0, 'DT Research ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (77, 25, 0, 'Dymo ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (78, 25, 0, 'Elo', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (79, 25, 0, 'eMobilePOS ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (80, 25, 0, 'Epson', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (81, 25, 0, 'ENS', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (82, 25, 0, 'Entrust - Datacard', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (83, 25, 0, 'Everfocus ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (84, 25, 0, 'Evolis ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (85, 25, 0, 'Exadigm ', NULL, 8, '2019-04-15 23:06:39');
INSERT INTO `tb04_catalogo` VALUES (86, 25, 0, 'FEC ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (87, 25, 0, 'GeoVision ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (88, 25, 0, 'GVision ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (89, 25, 0, 'Heckler design ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (90, 25, 0, 'HID', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (91, 25, 0, 'HIK Vision ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (92, 25, 0, 'GTS ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (93, 25, 0, 'Honeywell ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (94, 25, 0, 'HP ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (95, 25, 0, 'IC Realtime ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (96, 25, 0, 'IDTech ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (97, 25, 0, 'Impinj ', NULL, 8, '2019-04-15 23:06:40');
INSERT INTO `tb04_catalogo` VALUES (99, 25, 0, 'Industry Weapon ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (101, 25, 0, 'Ingenico ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (103, 25, 0, 'Innovative Office Products', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (105, 25, 0, 'Intellitrack ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (107, 25, 0, 'Intuit ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (109, 25, 0, 'Infinite Peripherals ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (111, 25, 0, 'Janam ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (113, 25, 0, 'Kensington ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (115, 25, 0, 'KSI ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (117, 25, 0, 'LG', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (119, 25, 0, 'LifeSafety Power ', NULL, 8, '2019-04-15 23:07:35');
INSERT INTO `tb04_catalogo` VALUES (121, 25, 0, 'Loftware Inc. ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (123, 25, 0, 'LRS ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (125, 25, 0, 'Magtek ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (127, 25, 0, 'MMF POS ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (129, 25, 0, 'Minuteman ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (131, 25, 0, 'NCR ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (133, 25, 0, 'nClose ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (135, 25, 0, 'NSC ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (137, 25, 0, 'NiceLabel ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (139, 25, 0, 'NEC ', NULL, 8, '2019-04-15 23:07:36');
INSERT INTO `tb04_catalogo` VALUES (141, 25, 0, 'New West ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (143, 25, 0, 'Open Motion ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (145, 25, 0, 'Opticon ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (147, 25, 0, 'Outform ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (149, 25, 0, 'Panasonic ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (151, 25, 0, 'Partner Tech ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (153, 25, 0, 'pcAmerica ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (155, 25, 0, 'Peerless ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (157, 25, 0, 'Philips ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (159, 25, 0, 'Phoenix Sentry ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (161, 25, 0, 'Pioneer POS ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (163, 25, 0, 'Planar ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (165, 25, 0, 'Posiflex ', NULL, 8, '2019-04-15 23:07:37');
INSERT INTO `tb04_catalogo` VALUES (167, 25, 0, 'POS-X', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (169, 25, 0, 'Pragma ', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (171, 25, 0, 'PrehKeyTec ', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (173, 25, 0, 'Primera ', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (175, 25, 0, 'ProClip ', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (177, 25, 0, 'Portsmith', NULL, 8, '2019-04-15 23:07:38');
INSERT INTO `tb04_catalogo` VALUES (179, 25, 0, 'PTS', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (182, 25, 0, 'PrinterLogic ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (184, 25, 0, 'Printronix Auto ID', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (186, 25, 0, 'Printronix LLC ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (188, 25, 0, 'RAM Mounts ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (190, 25, 0, 'RBH Access Technologies ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (192, 25, 0, 'Redbeam ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (194, 25, 0, 'RFIDeas ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (196, 25, 0, 'Samsung ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (198, 25, 0, 'Sato ', NULL, 8, '2019-04-15 23:07:39');
INSERT INTO `tb04_catalogo` VALUES (200, 25, 0, 'SunBriteTV ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (202, 25, 0, 'Sentry360 ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (204, 25, 0, 'Seiko Intruments Inc.', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (206, 25, 0, 'Signage live ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (208, 25, 0, 'Simply RFID ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (210, 25, 0, 'Socket Mobile ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (212, 25, 0, 'SOTI ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (214, 25, 0, 'Star Micronics', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (216, 25, 0, 'StayLinked ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (218, 25, 0, 'Spacepole ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (220, 25, 0, 'Studio Proper ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (222, 25, 0, 'Synercard ', NULL, 8, '2019-04-15 23:07:40');
INSERT INTO `tb04_catalogo` VALUES (224, 25, 0, 'Tailwind ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (226, 25, 0, 'Tatung ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (228, 25, 0, 'Taylor Made Cases ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (230, 25, 0, 'TG3 Electronics ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (232, 25, 0, 'Touch Dynamic ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (234, 25, 0, 'Tekcore ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (236, 25, 0, 'Teklynx ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (238, 25, 0, 'Terrestar ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (240, 25, 0, 'Thermamark ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (242, 25, 0, 'Triplett ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (244, 25, 0, 'Topaz Systems ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (246, 25, 0, 'Toshiba ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (248, 25, 0, 'TPG ', NULL, 8, '2019-04-15 23:07:41');
INSERT INTO `tb04_catalogo` VALUES (250, 25, 0, 'Transact ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (252, 25, 0, 'Trendnet ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (254, 25, 0, 'Tripp-lite', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (256, 25, 0, 'TSC ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (258, 25, 0, 'TSL ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (260, 25, 0, 'UC View ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (262, 25, 0, 'UIC ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (264, 25, 0, 'US ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (266, 25, 0, 'Unitech ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (268, 25, 0, 'Vault ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (270, 25, 0, 'Verifone ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (272, 25, 0, 'Viewsonic ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (274, 25, 0, 'WatchGuard ', NULL, 8, '2019-04-15 23:07:42');
INSERT INTO `tb04_catalogo` VALUES (276, 25, 0, 'Wasp Barcode Technologies ', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (278, 25, 0, 'Wavelink ', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (280, 25, 0, 'Xplore ', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (282, 25, 0, 'Z-Space ', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (284, 25, 0, 'ZBA ', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (285, 25, 0, 'Zebra', NULL, 8, '2019-04-15 23:07:43');
INSERT INTO `tb04_catalogo` VALUES (286, 0, 99999, 'PRESENTACION', NULL, 9, '2019-04-15 23:14:22');
INSERT INTO `tb04_catalogo` VALUES (287, 286, 0, 'Unidad', NULL, 8, '2019-04-15 23:15:08');
INSERT INTO `tb04_catalogo` VALUES (288, 286, 0, 'Porciónes', NULL, 8, '2019-04-15 23:15:33');
INSERT INTO `tb04_catalogo` VALUES (289, 0, 99999, 'CATÉGORIA', NULL, 8, '2019-04-16 00:28:24');
INSERT INTO `tb04_catalogo` VALUES (290, 289, 0, 'Alimentación y bebidas', 'alb', 8, '2019-04-16 00:29:20');
INSERT INTO `tb04_catalogo` VALUES (291, 289, 0, 'Bebé', 'bebe', 8, '2019-04-16 00:29:54');
INSERT INTO `tb04_catalogo` VALUES (293, 289, 0, 'Belleza', 'belleza', 8, '2019-04-16 00:40:45');
INSERT INTO `tb04_catalogo` VALUES (294, 289, 0, 'Bricolaje y herramientas', 'briherra', 8, '2019-04-16 00:41:07');
INSERT INTO `tb04_catalogo` VALUES (295, 289, 0, 'Cheques de regalo', 'chqreg', 8, '2019-04-16 00:41:38');
INSERT INTO `tb04_catalogo` VALUES (296, 289, 0, 'Coche y moto', 'cohmot', 8, '2019-04-16 00:41:46');
INSERT INTO `tb04_catalogo` VALUES (297, 289, 0, 'Deportes y aire libres', 'deporte', 8, '2019-04-16 00:42:04');
INSERT INTO `tb04_catalogo` VALUES (298, 289, 0, 'Electrónica', 'electro', 8, '2019-04-16 00:42:11');
INSERT INTO `tb04_catalogo` VALUES (299, 289, 0, 'Equipaje', 'equipa', 8, '2019-04-16 00:42:19');
INSERT INTO `tb04_catalogo` VALUES (300, 289, 0, 'Electrodomésticos', 'electrodom', 8, '2019-04-16 00:42:31');
INSERT INTO `tb04_catalogo` VALUES (301, 289, 0, 'Hogar y cocina', 'hococina', 8, '2019-04-16 00:42:38');
INSERT INTO `tb04_catalogo` VALUES (302, 289, 0, 'Iluminación', 'ilumina', 8, '2019-04-16 00:42:45');
INSERT INTO `tb04_catalogo` VALUES (303, 289, 0, 'Industria y ciencia', 'indcien', 8, '2019-04-16 00:42:55');
INSERT INTO `tb04_catalogo` VALUES (304, 289, 0, 'Informatica', 'informa', 8, '2019-04-16 00:43:08');
INSERT INTO `tb04_catalogo` VALUES (305, 289, 0, 'Instrumentos musicales', 'instmusica', 8, '2019-04-16 00:43:19');
INSERT INTO `tb04_catalogo` VALUES (306, 289, 0, 'Jardín', 'jardin', 8, '2019-04-16 00:43:26');
INSERT INTO `tb04_catalogo` VALUES (307, 289, 0, 'Joyería', 'joya', 8, '2019-04-16 00:43:36');
INSERT INTO `tb04_catalogo` VALUES (308, 289, 0, 'Juguetes y juegos', 'juegue', 8, '2019-04-16 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (309, 289, 0, 'Libros', 'libro', 8, '2019-04-16 00:43:50');
INSERT INTO `tb04_catalogo` VALUES (310, 289, 0, 'Libros en idioma extranjeros', 'libroext', 8, '2019-04-16 00:43:58');
INSERT INTO `tb04_catalogo` VALUES (311, 289, 0, 'Moda', 'moda', 8, '2019-04-16 00:44:02');
INSERT INTO `tb04_catalogo` VALUES (312, 289, 0, 'Música Digital', 'musidigi', 8, '2019-04-16 00:44:08');
INSERT INTO `tb04_catalogo` VALUES (313, 289, 0, 'Música: CDs y vinilos', 'musicd', 8, '2019-04-16 00:44:20');
INSERT INTO `tb04_catalogo` VALUES (314, 289, 0, 'Oficina y papelería', 'ofipape', 8, '2019-04-16 00:44:46');
INSERT INTO `tb04_catalogo` VALUES (315, 289, 0, 'Películas y TV', 'pelitv', 8, '2019-04-16 00:45:07');
INSERT INTO `tb04_catalogo` VALUES (316, 289, 0, 'Productos para mascotas', 'prodmascota', 8, '2019-04-16 00:45:20');
INSERT INTO `tb04_catalogo` VALUES (317, 289, 0, 'Productos Reacondicionados', 'produreact', 8, '2019-04-16 00:45:34');
INSERT INTO `tb04_catalogo` VALUES (318, 289, 0, 'Relojes', 'reloj', 8, '2019-04-16 00:45:38');
INSERT INTO `tb04_catalogo` VALUES (319, 289, 0, 'Ropa y accesorios', 'ropaacce', 8, '2019-04-16 00:45:50');
INSERT INTO `tb04_catalogo` VALUES (320, 289, 0, 'Salud y cuidado personal', 'salud', 8, '2019-04-16 00:45:58');
INSERT INTO `tb04_catalogo` VALUES (321, 289, 0, 'Software', 'software', 8, '2019-04-16 00:46:03');
INSERT INTO `tb04_catalogo` VALUES (322, 289, 0, 'Tienda kindle', 'tiendakind', 8, '2019-04-16 00:46:11');
INSERT INTO `tb04_catalogo` VALUES (323, 289, 0, 'Cámaras y Videojuegos', 'camvideo', 8, '2019-04-16 00:46:17');
INSERT INTO `tb04_catalogo` VALUES (324, 289, 0, 'Zapatos y complementos', 'zapatoscomple', 8, '2019-04-16 00:46:26');
INSERT INTO `tb04_catalogo` VALUES (325, 0, 99999, 'NACIONALIDAD', NULL, 8, '2019-04-27 00:43:04');
INSERT INTO `tb04_catalogo` VALUES (326, 325, 0, 'Afganistán', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (327, 325, 0, 'Albania', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (328, 325, 0, 'Alemania', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (329, 325, 0, 'Andorra', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (330, 325, 0, 'Angola', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (331, 325, 0, 'Antigua y Barbuda', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (332, 325, 0, 'Arabia Saudita', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (333, 325, 0, 'Argelia', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (334, 325, 0, 'Argentina', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (335, 325, 0, 'Armenia', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (336, 325, 0, 'Australia', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (337, 325, 0, 'Austria', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (338, 325, 0, 'Azerbaiyán', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (339, 325, 0, 'Bahamas', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (340, 325, 0, 'Bangladés', NULL, 8, '2019-04-27 00:43:39');
INSERT INTO `tb04_catalogo` VALUES (341, 325, 0, 'Barbados', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (342, 325, 0, 'Baréin', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (343, 325, 0, 'Bélgica', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (344, 325, 0, 'Belice', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (345, 325, 0, 'Benín', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (346, 325, 0, 'Bielorrusia', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (347, 325, 0, 'Birmania', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (348, 325, 0, 'Bolivia', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (349, 325, 0, 'Bosnia y Herzegovina', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (350, 325, 0, 'Botsuana', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (351, 325, 0, 'Brasil', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (352, 325, 0, 'Brunéi', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (353, 325, 0, 'Bulgaria', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (354, 325, 0, 'Burkina Faso', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (355, 325, 0, 'Burundi', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (356, 325, 0, 'Bután', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (357, 325, 0, 'Cabo Verde', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (358, 325, 0, 'Camboya', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (359, 325, 0, 'Camerún', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (360, 325, 0, 'Canadá', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (361, 325, 0, 'Catar', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (362, 325, 0, 'Chad', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (363, 325, 0, 'Chile', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (364, 325, 0, 'China', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (365, 325, 0, 'Chipre', NULL, 8, '2019-04-27 00:43:40');
INSERT INTO `tb04_catalogo` VALUES (366, 325, 0, 'Ciudad del Vaticano', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (367, 325, 0, 'Colombia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (368, 325, 0, 'Comoras', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (369, 325, 0, 'Corea del Norte', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (370, 325, 0, 'Corea del Sur', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (371, 325, 0, 'Costa de Marfil', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (372, 325, 0, 'Costa Rica', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (373, 325, 0, 'Croacia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (374, 325, 0, 'Cuba', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (375, 325, 0, 'Dinamarca', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (376, 325, 0, 'Dominica', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (377, 325, 0, 'Ecuador', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (378, 325, 0, 'Egipto', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (379, 325, 0, 'El Salvador', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (380, 325, 0, 'Emiratos Árabes Unidos', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (381, 325, 0, 'Eritrea', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (382, 325, 0, 'Eslovaquia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (383, 325, 0, 'Eslovenia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (384, 325, 0, 'España', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (385, 325, 0, 'Estados Unidos', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (386, 325, 0, 'Estonia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (387, 325, 0, 'Etiopía', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (388, 325, 0, 'Filipinas', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (389, 325, 0, 'Finlandia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (390, 325, 0, 'Fiyi', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (391, 325, 0, 'Francia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (392, 325, 0, 'Gabón', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (393, 325, 0, 'Gambia', NULL, 8, '2019-04-27 00:43:41');
INSERT INTO `tb04_catalogo` VALUES (394, 325, 0, 'Georgia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (395, 325, 0, 'Ghana', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (396, 325, 0, 'Granada', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (397, 325, 0, 'Grecia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (398, 325, 0, 'Guatemala', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (399, 325, 0, 'Guyana', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (400, 325, 0, 'Guinea', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (401, 325, 0, 'Guinea ecuatorial', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (402, 325, 0, 'Guinea-Bisáu', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (403, 325, 0, 'Haití', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (404, 325, 0, 'Honduras', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (405, 325, 0, 'Hungría', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (406, 325, 0, 'India', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (407, 325, 0, 'Indonesia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (408, 325, 0, 'Irak', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (409, 325, 0, 'Irán', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (410, 325, 0, 'Irlanda', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (411, 325, 0, 'Islandia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (412, 325, 0, 'Islas Marshall', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (413, 325, 0, 'Islas Salomón', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (414, 325, 0, 'Israel', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (415, 325, 0, 'Italia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (416, 325, 0, 'Jamaica', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (417, 325, 0, 'Japón', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (418, 325, 0, 'Jordania', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (419, 325, 0, 'Kazajistán', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (420, 325, 0, 'Kenia', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (421, 325, 0, 'Kirguistán', NULL, 8, '2019-04-27 00:43:42');
INSERT INTO `tb04_catalogo` VALUES (422, 325, 0, 'Kiribati', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (423, 325, 0, 'Kuwait', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (424, 325, 0, 'Laos', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (425, 325, 0, 'Lesoto', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (426, 325, 0, 'Letonia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (427, 325, 0, 'Líbano', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (428, 325, 0, 'Liberia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (429, 325, 0, 'Libia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (430, 325, 0, 'Liechtenstein', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (431, 325, 0, 'Lituania', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (432, 325, 0, 'Luxemburgo', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (433, 325, 0, 'Madagascar', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (434, 325, 0, 'Malasia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (435, 325, 0, 'Malaui', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (436, 325, 0, 'Maldivas', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (437, 325, 0, 'Malí', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (438, 325, 0, 'Malta', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (439, 325, 0, 'Marruecos', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (440, 325, 0, 'Mauricio', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (441, 325, 0, 'Mauritania', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (442, 325, 0, 'México', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (443, 325, 0, 'Micronesia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (444, 325, 0, 'Moldavia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (445, 325, 0, 'Mónaco', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (446, 325, 0, 'Mongolia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (447, 325, 0, 'Montenegro', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (448, 325, 0, 'Mozambique', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (449, 325, 0, 'Namibia', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (450, 325, 0, 'Nauru', NULL, 8, '2019-04-27 00:43:43');
INSERT INTO `tb04_catalogo` VALUES (451, 325, 0, 'Nepal', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (452, 325, 0, 'Nicaragua', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (453, 325, 0, 'Níger', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (454, 325, 0, 'Nigeria', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (455, 325, 0, 'Noruega', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (456, 325, 0, 'Nueva Zelanda', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (457, 325, 0, 'Omán', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (458, 325, 0, 'Países Bajos', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (459, 325, 0, 'Pakistán', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (460, 325, 0, 'Palaos', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (461, 325, 0, 'Panamá', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (462, 325, 0, 'Papúa Nueva Guinea', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (463, 325, 0, 'Paraguay', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (464, 325, 0, 'Perú', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (465, 325, 0, 'Polonia', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (466, 325, 0, 'Portugal', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (467, 325, 0, 'Reino Unido', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (468, 325, 0, 'República Centroafricana', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (469, 325, 0, 'República Checa', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (470, 325, 0, 'República de Macedonia', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (471, 325, 0, 'República del Congo', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (472, 325, 0, 'República Democrática del Congo', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (473, 325, 0, 'República Dominicana', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (474, 325, 0, 'República Sudafricana', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (475, 325, 0, 'Ruanda', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (476, 325, 0, 'Rumanía', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (477, 325, 0, 'Rusia', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (478, 325, 0, 'Samoa', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (479, 325, 0, 'San Cristóbal y Nieves', NULL, 8, '2019-04-27 00:43:44');
INSERT INTO `tb04_catalogo` VALUES (480, 325, 0, 'San Marino', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (481, 325, 0, 'Vicente y las Granadinas', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (482, 325, 0, 'Santa Lucía', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (483, 325, 0, 'Santo Tomé y Príncipe', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (484, 325, 0, 'Senegal', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (485, 325, 0, 'Serbia', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (486, 325, 0, 'Seychelles', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (487, 325, 0, 'Sierra Leona', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (488, 325, 0, 'Singapur', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (489, 325, 0, 'Siria', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (490, 325, 0, 'Somalia', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (491, 325, 0, 'Sri Lanka', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (492, 325, 0, 'Suazilandia', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (493, 325, 0, 'Sudán', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (494, 325, 0, 'Sudán del Sur', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (495, 325, 0, 'Suecia', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (496, 325, 0, 'Suiza', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (497, 325, 0, 'Surinam', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (498, 325, 0, 'Tailandia', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (499, 325, 0, 'Tanzania', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (500, 325, 0, 'Tayikistán', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (501, 325, 0, 'Timor Oriental', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (502, 325, 0, 'Togo', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (503, 325, 0, 'Tonga', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (504, 325, 0, 'Trinidad y Tobago', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (505, 325, 0, 'Túnez', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (506, 325, 0, 'Turkmenistán', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (507, 325, 0, 'Turquía', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (508, 325, 0, 'Tuvalu', NULL, 8, '2019-04-27 00:43:45');
INSERT INTO `tb04_catalogo` VALUES (509, 325, 0, 'Ucrania', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (510, 325, 0, 'Uganda', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (511, 325, 0, 'Uruguay', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (512, 325, 0, 'Uzbekistán', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (513, 325, 0, 'Vanuatu', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (514, 325, 0, 'Venezuela', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (515, 325, 0, 'Vietnam', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (516, 325, 0, 'Yemen', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (517, 325, 0, 'Yibuti', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (518, 325, 0, 'Zambia', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (519, 325, 0, 'Zimbabue', NULL, 8, '2019-04-27 00:43:46');
INSERT INTO `tb04_catalogo` VALUES (520, 0, 99999, 'TIPOCLIENTE', NULL, 8, '2019-04-27 00:53:51');
INSERT INTO `tb04_catalogo` VALUES (521, 520, 0, 'Persona Natural', NULL, 8, '2019-04-27 00:54:27');
INSERT INTO `tb04_catalogo` VALUES (522, 520, 0, 'Persona Jurídica', NULL, 8, '2019-04-27 00:54:50');
INSERT INTO `tb04_catalogo` VALUES (523, 0, 99999, 'DOCUMENTO', NULL, 8, '2019-04-27 00:56:51');
INSERT INTO `tb04_catalogo` VALUES (524, 523, 0, 'Documento de identidad', NULL, 8, '2019-04-27 00:57:45');
INSERT INTO `tb04_catalogo` VALUES (525, 523, 0, 'Pasaporte', NULL, 8, '2019-04-27 00:58:08');
INSERT INTO `tb04_catalogo` VALUES (526, 0, 99999, 'TIPO DE CONTACTO', NULL, 8, '2019-05-04 14:58:59');
INSERT INTO `tb04_catalogo` VALUES (527, 526, 0, 'CLIENTE', NULL, 8, '2019-05-04 14:59:13');
INSERT INTO `tb04_catalogo` VALUES (528, 526, 0, 'PROVEEDOR', NULL, 8, '2019-05-04 14:59:21');
INSERT INTO `tb04_catalogo` VALUES (529, 0, 99999, 'TIPO DE COMPROBANTE', NULL, 8, '2019-05-08 18:27:54');
INSERT INTO `tb04_catalogo` VALUES (530, 529, 0, 'Factura', NULL, 8, '2019-05-08 18:28:10');
INSERT INTO `tb04_catalogo` VALUES (531, 529, 0, 'Boleta', NULL, 8, '2019-05-08 18:28:19');
INSERT INTO `tb04_catalogo` VALUES (532, 529, 0, 'Ticket', NULL, 8, '2019-05-08 18:28:26');
INSERT INTO `tb04_catalogo` VALUES (533, 0, 99999, 'IVA', 'Inpuestos', 8, '2019-05-12 09:24:41');
INSERT INTO `tb04_catalogo` VALUES (534, 533, 0, '15', NULL, 8, '2019-05-12 09:24:56');
INSERT INTO `tb04_catalogo` VALUES (535, 0, 99999, 'MONEDA', NULL, 8, '2019-05-13 21:11:54');
INSERT INTO `tb04_catalogo` VALUES (536, 535, 0, 'Cordoba', 'C$', 8, '2019-05-13 21:12:02');
INSERT INTO `tb04_catalogo` VALUES (537, 535, 0, 'Dolar', '$', 8, '2019-05-13 21:12:06');
INSERT INTO `tb04_catalogo` VALUES (538, 0, 99999, 'UBICACION', NULL, 8, '2019-05-13 23:04:31');
INSERT INTO `tb04_catalogo` VALUES (539, 538, 0, 'Bodega', NULL, 8, '2019-05-13 23:04:46');

-- ----------------------------
-- Table structure for tb05_fabricante
-- ----------------------------
DROP TABLE IF EXISTS `tb05_fabricante`;
CREATE TABLE `tb05_fabricante`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `strnombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `fecha` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `estado` int(2) NULL DEFAULT 8,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxfabricante`(`strnombre`, `stock`, `fecha`, `estado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb05_fabricante
-- ----------------------------
INSERT INTO `tb05_fabricante` VALUES (27, 'aaaaaaaa', 4, '2019-04-14 18:35:49', 9);
INSERT INTO `tb05_fabricante` VALUES (24, 'Adrian Molina Vargas', 7, '2019-04-14 10:26:29', 8);
INSERT INTO `tb05_fabricante` VALUES (29, 'asdsadas', 323, '2019-04-15 18:40:45', 8);
INSERT INTO `tb05_fabricante` VALUES (28, 'Calor Extremo en Peligro', 90, '2019-04-14 18:35:57', 9);
INSERT INTO `tb05_fabricante` VALUES (17, 'Erwin Adrian Vargas Mayorga', 128, '2019-04-13 00:41:44', 8);
INSERT INTO `tb05_fabricante` VALUES (26, 'Maria de los Angeles Espinoza Reyes', 33, '2019-04-14 18:00:43', 8);

-- ----------------------------
-- Table structure for tb06_productos
-- ----------------------------
DROP TABLE IF EXISTS `tb06_productos`;
CREATE TABLE `tb06_productos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modelo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `categoria` int(5) NULL DEFAULT NULL,
  `presentacion` int(5) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codfabricante` int(11) NOT NULL DEFAULT 0,
  `tipomoneda` int(4) NOT NULL DEFAULT 0,
  `costo` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `precioventa` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `estado` int(2) NOT NULL DEFAULT 8,
  `stock` int(20) NOT NULL DEFAULT 0,
  `ubicacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fechacaduca` date NULL DEFAULT NULL,
  `codproveedor` int(11) NULL DEFAULT NULL,
  `iva` decimal(18, 2) NOT NULL DEFAULT 0.00,
  `imagen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fechacompra` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `codacceso` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxproductos`(`id`, `codigo`, `nombre`, `modelo`, `presentacion`, `descripcion`, `codproveedor`, `costo`, `iva`, `codfabricante`, `precioventa`, `tipomoneda`, `estado`, `stock`, `imagen`, `fechacompra`, `categoria`, `ubicacion`, `fechacaduca`, `codacceso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb06_productos
-- ----------------------------
INSERT INTO `tb06_productos` VALUES (5, '12345', 'Vaso', '', 290, 287, 'assdsdadasdasdas', 28, 536, 123.00, 355.00, 8, 67, '9', '2019-04-27', NULL, 0.00, '', '2019-04-27 21:30:31', NULL);
INSERT INTO `tb06_productos` VALUES (6, '287829', 'Abanico', '', 290, 287, 'assdsdadasdasdas', 28, 537, 200.00, 250.00, 8, 67, '9', '2019-04-27', NULL, 0.00, '', '2019-04-27 21:30:31', NULL);
INSERT INTO `tb06_productos` VALUES (7, '237687', 'Telefono Celular', 'Apple', 298, 287, 'Iphone SE', 26, 537, 190.00, 230.00, 8, 40, '8', '2019-05-13', NULL, 0.00, '', '2019-05-13 19:59:50', NULL);
INSERT INTO `tb06_productos` VALUES (8, '327893', 'Reloj Rolex', 'Rolex 3489', 298, 287, 'Reloj Heop', 131, 537, 340.00, 420.80, 8, 20, '8', '2019-05-13', NULL, 0.00, '', '2019-05-13 20:01:23', NULL);
INSERT INTO `tb06_productos` VALUES (9, '345345345', 'Arroz', '', 290, 287, '', 0, 536, 500.00, 780.99, 8, 60, '0', '2019-05-31', NULL, 0.00, '', '2019-05-13 20:42:13', NULL);
INSERT INTO `tb06_productos` VALUES (12, '238978', 'Camisa', 'M', 319, 287, 'Camisa Adida', 50, 537, 7.00, 25.80, 8, 46, '539', '2019-05-17', NULL, 0.00, '', '2019-05-17 01:14:29', NULL);
INSERT INTO `tb06_productos` VALUES (13, '389389', 'Silla Ejecutiva', 'Freego', 299, 287, 'Silla Ejecutiva', 42, 536, 3000.00, 3200.00, 8, 4, '539', '2019-05-17', NULL, 0.00, '', '2019-05-17 01:19:51', NULL);
INSERT INTO `tb06_productos` VALUES (16, '23423', 'wqad', '', 290, 287, '', 0, 537, 45.00, 67.00, 8, 56, '0', '2019-05-18', NULL, 0.00, '', '2019-05-18 20:40:20', NULL);

-- ----------------------------
-- Table structure for tb07_listaproductostemp
-- ----------------------------
DROP TABLE IF EXISTS `tb07_listaproductostemp`;
CREATE TABLE `tb07_listaproductostemp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NULL DEFAULT NULL,
  `codproducto` int(11) NULL DEFAULT NULL,
  `preciocompra` decimal(18, 2) NULL DEFAULT NULL,
  `precioventa` decimal(18, 2) NULL DEFAULT NULL,
  `estado` int(11) NULL DEFAULT 8,
  `codacceso` int(11) NULL DEFAULT NULL,
  `dtmingreso` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb07_listaproductostemp
-- ----------------------------
INSERT INTO `tb07_listaproductostemp` VALUES (19, 3, 5, 123.00, 0.00, 8, 9, '2019-05-26 20:06:02');
INSERT INTO `tb07_listaproductostemp` VALUES (24, 1, 16, 45.00, 0.00, 8, 9, '2019-05-26 22:55:00');

-- ----------------------------
-- Table structure for tb07_tipocambio
-- ----------------------------
DROP TABLE IF EXISTS `tb07_tipocambio`;
CREATE TABLE `tb07_tipocambio`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipoCambio` decimal(10, 4) NOT NULL DEFAULT 0.0000,
  `tpocambiobanco` decimal(10, 4) NOT NULL DEFAULT 0.0000,
  `fecha` date NOT NULL,
  `idacceso` int(2) NOT NULL COMMENT 'identificacion del acceso con el que entro a la aplicacion',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb07_tipocambio
-- ----------------------------
INSERT INTO `tb07_tipocambio` VALUES (1, 32.8576, 0.0000, '2019-05-01', 9);
INSERT INTO `tb07_tipocambio` VALUES (2, 32.8620, 0.0000, '2019-05-02', 9);
INSERT INTO `tb07_tipocambio` VALUES (3, 32.8664, 0.0000, '2019-05-03', 9);
INSERT INTO `tb07_tipocambio` VALUES (4, 32.8708, 0.0000, '2019-05-04', 9);
INSERT INTO `tb07_tipocambio` VALUES (5, 32.8752, 0.0000, '2019-05-05', 9);
INSERT INTO `tb07_tipocambio` VALUES (6, 32.8796, 0.0000, '2019-05-06', 9);
INSERT INTO `tb07_tipocambio` VALUES (7, 32.8840, 0.0000, '2019-05-07', 9);
INSERT INTO `tb07_tipocambio` VALUES (8, 32.8884, 0.0000, '2019-05-08', 9);
INSERT INTO `tb07_tipocambio` VALUES (9, 32.8928, 0.0000, '2019-05-09', 9);
INSERT INTO `tb07_tipocambio` VALUES (10, 32.8972, 0.0000, '2019-05-10', 9);
INSERT INTO `tb07_tipocambio` VALUES (11, 32.9016, 0.0000, '2019-05-11', 9);
INSERT INTO `tb07_tipocambio` VALUES (12, 32.9060, 0.0000, '2019-05-12', 9);
INSERT INTO `tb07_tipocambio` VALUES (13, 32.9104, 0.0000, '2019-05-13', 9);
INSERT INTO `tb07_tipocambio` VALUES (14, 32.9148, 0.0000, '2019-05-14', 9);
INSERT INTO `tb07_tipocambio` VALUES (15, 32.9192, 0.0000, '2019-05-15', 9);
INSERT INTO `tb07_tipocambio` VALUES (16, 32.9236, 0.0000, '2019-05-16', 9);
INSERT INTO `tb07_tipocambio` VALUES (17, 32.9280, 0.0000, '2019-05-17', 9);
INSERT INTO `tb07_tipocambio` VALUES (18, 32.9324, 0.0000, '2019-05-18', 9);
INSERT INTO `tb07_tipocambio` VALUES (19, 32.9368, 0.0000, '2019-05-19', 9);
INSERT INTO `tb07_tipocambio` VALUES (20, 32.9412, 0.0000, '2019-05-20', 9);
INSERT INTO `tb07_tipocambio` VALUES (21, 32.9456, 0.0000, '2019-05-21', 9);
INSERT INTO `tb07_tipocambio` VALUES (22, 32.9500, 0.0000, '2019-05-22', 9);
INSERT INTO `tb07_tipocambio` VALUES (23, 32.9544, 0.0000, '2019-05-23', 9);
INSERT INTO `tb07_tipocambio` VALUES (24, 32.9588, 0.0000, '2019-05-24', 9);
INSERT INTO `tb07_tipocambio` VALUES (25, 32.9632, 0.0000, '2019-05-25', 9);
INSERT INTO `tb07_tipocambio` VALUES (26, 32.9676, 0.0000, '2019-05-26', 9);
INSERT INTO `tb07_tipocambio` VALUES (27, 32.9720, 0.0000, '2019-05-27', 9);
INSERT INTO `tb07_tipocambio` VALUES (28, 32.9764, 0.0000, '2019-05-28', 9);
INSERT INTO `tb07_tipocambio` VALUES (29, 32.9809, 0.0000, '2019-05-29', 9);
INSERT INTO `tb07_tipocambio` VALUES (30, 32.9853, 0.0000, '2019-05-30', 9);
INSERT INTO `tb07_tipocambio` VALUES (31, 32.9897, 0.0000, '2019-05-31', 9);

-- ----------------------------
-- Table structure for tb08_cliente
-- ----------------------------
DROP TABLE IF EXISTS `tb08_cliente`;
CREATE TABLE `tb08_cliente`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipoconta` int(3) NULL DEFAULT NULL,
  `ndocumento` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `genero` int(3) NULL DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telefono` int(20) NULL DEFAULT NULL,
  `movil` int(20) NULL DEFAULT NULL,
  `estado` int(3) NULL DEFAULT NULL,
  `empnombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `empruc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sitioweb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emptelefono` int(20) NULL DEFAULT NULL,
  `empemail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pais` int(5) NULL DEFAULT NULL,
  `strdepartamento` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fechaagre` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb08_cliente
-- ----------------------------
INSERT INTO `tb08_cliente` VALUES (3, 'Erwin Vargas', 527, '001-260696-0032B', 2, 'erwin@gmail.com', 89897878, 88886767, 8, 'Antony SA', '097278346178367T', 'antony.com', 89897878, 'antony@gmail.com', 452, 'Managua', 'Del sombrero memorial sandino 1c, al lago', NULL, '2019-05-04 14:29:54');
INSERT INTO `tb08_cliente` VALUES (5, 'Erwin Vargas', 528, '001-260696-0032B', 2, 'erwin@gmail.com', 28796767, 88776677, 8, 'Antony SA', '097278346178367T', '', 0, '', 0, '', '', NULL, '2019-05-04 15:23:26');

-- ----------------------------
-- Table structure for tb09_compra
-- ----------------------------
DROP TABLE IF EXISTS `tb09_compra`;
CREATE TABLE `tb09_compra`  (
  `idcomp` int(11) NOT NULL AUTO_INCREMENT,
  `codproveedor` int(5) NULL DEFAULT NULL,
  `tipocomp` int(11) NULL DEFAULT NULL,
  `seriecomp` int(5) NOT NULL,
  `tipocamb` decimal(18, 4) NULL DEFAULT NULL,
  `strdetalle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iva` decimal(18, 2) NULL DEFAULT NULL,
  `submoncord` decimal(18, 2) NULL DEFAULT NULL,
  `montodolar` decimal(18, 2) NULL DEFAULT NULL,
  `montomoneda` decimal(18, 2) NULL DEFAULT NULL,
  `dtmfactura` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `idestado` int(3) NOT NULL DEFAULT 8,
  `codacceso` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`idcomp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb09_compra
-- ----------------------------
INSERT INTO `tb09_compra` VALUES (1, 5, 530, 23432423, 32.9456, 'ssdfds sdffsdfsdfs', 8.20, 123.00, 3.98, 131.20, '2019-05-21 20:16:42', 8, 9);
INSERT INTO `tb09_compra` VALUES (2, 5, 530, 3454353, 32.9456, 'eeeee eeeeeeeeee', 41.53, 623.00, 20.17, 664.53, '2019-05-21 21:08:13', 8, 9);
INSERT INTO `tb09_compra` VALUES (3, 5, 530, 33333, 32.9500, 'ninguno por el momento', 92.20, 1383.00, 44.77, 1475.20, '2019-05-22 01:39:08', 8, 9);
INSERT INTO `tb09_compra` VALUES (4, 5, 530, 4444444, 32.9500, '', 1711.00, 25665.00, 830.83, 27376.00, '2019-05-22 01:55:51', 8, 9);

-- ----------------------------
-- Table structure for tb10_detacompra
-- ----------------------------
DROP TABLE IF EXISTS `tb10_detacompra`;
CREATE TABLE `tb10_detacompra`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codproducto` int(11) NULL DEFAULT NULL,
  `cantd` int(20) NULL DEFAULT NULL,
  `tipocambio` decimal(18, 2) NULL DEFAULT NULL,
  `idmoneda` int(3) NULL DEFAULT NULL,
  `montodolar` decimal(18, 2) NULL DEFAULT NULL,
  `montomoneda` decimal(18, 2) NULL DEFAULT NULL,
  `preciomoneda` decimal(18, 2) NULL DEFAULT NULL,
  `presubtotal` decimal(18, 2) NULL DEFAULT NULL,
  `vmiva` decimal(18, 2) NULL DEFAULT NULL,
  `vmptotal` decimal(18, 2) NULL DEFAULT NULL,
  `dtmpagado` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `codrecibo` int(11) NULL DEFAULT NULL,
  `codacceso` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb10_detacompra
-- ----------------------------
INSERT INTO `tb10_detacompra` VALUES (1, 5, 1, 32.95, 536, 3.73, 123.00, 123.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:39:08', 3, 9);
INSERT INTO `tb10_detacompra` VALUES (2, 9, 1, 32.95, 536, 15.17, 500.00, 500.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:39:08', 3, 9);
INSERT INTO `tb10_detacompra` VALUES (3, 7, 4, 32.95, 537, 190.00, 6260.50, 25042.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:39:08', 3, 9);
INSERT INTO `tb10_detacompra` VALUES (4, 5, 1, 32.95, 536, 3.73, 123.00, 123.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:55:51', 4, 9);
INSERT INTO `tb10_detacompra` VALUES (5, 9, 1, 32.95, 536, 15.17, 500.00, 500.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:55:51', 4, 9);
INSERT INTO `tb10_detacompra` VALUES (6, 7, 4, 32.95, 537, 190.00, 6260.50, 25042.00, 25665.00, 1711.00, 27376.00, '2019-05-22 01:55:51', 4, 9);

-- ----------------------------
-- Table structure for tb11_detafactura
-- ----------------------------
DROP TABLE IF EXISTS `tb11_detafactura`;
CREATE TABLE `tb11_detafactura`  (
  `id` int(11) NOT NULL,
  `codigo` int(20) NULL DEFAULT NULL,
  `cantd` int(20) NULL DEFAULT NULL,
  `strdescrip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preunit` decimal(18, 2) NULL DEFAULT NULL,
  `pretotal` decimal(18, 2) NULL DEFAULT NULL,
  `ndolar` decimal(18, 2) NULL DEFAULT NULL,
  `nmoneda` decimal(18, 2) NULL DEFAULT NULL,
  `codproducto` int(11) NULL DEFAULT NULL,
  `codiva` decimal(18, 2) NULL DEFAULT NULL,
  `tipocambio` decimal(18, 2) NULL DEFAULT NULL,
  `total` decimal(18, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- View structure for vta01_productos
-- ----------------------------
DROP VIEW IF EXISTS `vta01_productos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vta01_productos` AS SELECT tb6.id as cod, tb6.codigo, tb6.nombre, tb6.modelo, tb6.categoria, tb6.presentacion as codpresentacion, 
	(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb6.presentacion ) as presentacion,
	tb6.descripcion, tb6.codfabricante, (SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb6.codfabricante ) as fabricante,
	tb6.tipomoneda as codmoneda, (SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb6.tipomoneda ) as moneda, tb6.costo, tb6.precioventa, tb6.estado, tb6.stock, tb6.ubicacion, DATE_FORMAT(tb6.fechacaduca, "%Y-%m-%d") as fechacaduca,
	tb6.fechacompra
FROM tb06_productos tb6
ORDER BY tb6.id DESC ;

-- ----------------------------
-- Procedure structure for sp01_catalogo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp01_catalogo`;
delimiter ;;
CREATE PROCEDURE `sp01_catalogo`(IN opc INT, IN pcod INT, IN pnom VARCHAR(80), IN pstock INT, IN pest INT, IN psec INT)
BEGIN

DROP TABLE IF EXISTS datos;
CREATE TEMPORARY TABLE IF NOT EXISTS datos(
																		id INT NOT NULL auto_increment PRIMARY KEY,
																		idcod int(11) DEFAULT 0,
																		strdescrip VARCHAR(80),
																		idtabla INT(11) DEFAULT 0,
																		UNIQUE (id)) ENGINE = MEMORY;
																		
																		
DROP TABLE IF EXISTS alimeproducto;
CREATE TEMPORARY TABLE IF NOT EXISTS alimeproducto(
		id int not null auto_increment primary key,
		idcod int(11) default 0,
		strnombre varchar(80),
		strabrevia varchar(30),
		strcosto varchar(30),
		incosto decimal(18,2),
		strimagen varchar(30),
		idtabla int(11) default 0,
		unique(id)) ENGINE = MEMORY;
	
	IF opc = 1 THEN
	BEGIN
		-- Consulta del Fabricante (IF=1)
		SELECT id as cod, strdescrip as strnombre, fecha, estado
		FROM tb04_catalogo WHERE idtabla = 25;
	END;
	END IF;
	
	IF opc = 2 THEN
		IF NOT EXISTS (SELECT tb04.id FROM tb04_catalogo tb04 WHERE tb04.id = pcod) THEN
			BEGIN
				INSERT INTO tb04_catalogo (strdescrip, estado, idtabla, idgrupo) VALUES
				(pnom, pest, 25, 0);
			END;
		ELSE
			BEGIN
				UPDATE tb04_catalogo SET 
					strdescrip=pnom,
					estado=pest
				WHERE id = pcod;
			END;
		END IF;
		
		-- Consulta del Fabricante (IF=2)
		SELECT id as cod, strdescrip as strnombre, fecha, estado
		FROM tb04_catalogo WHERE idtabla = 25;
	END IF;
	
	IF opc = 3 THEN
	
		DELETE FROM tb04_catalogo WHERE id = pcod;
	
		-- Consulta del Fabricante
		SELECT id as cod, strdescrip as strnombre, fecha, estado
		FROM tb04_catalogo WHERE idtabla = 25;
		
	END IF;
	
	-- Listado de Categoria, Presentacion, Fabricante
	IF opc = 4 THEN
	BEGIN
	
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Estado
		SELECT id as cod, strdescrip as strnombre, 1
		FROM tb04_catalogo WHERE idtabla = 7 AND estado = 8 ORDER BY id;
			
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Lista de Fabricantes
		SELECT id as cod, strdescrip as strnombre, 2
		FROM tb04_catalogo WHERE idtabla = 25 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Presentacion
		SELECT id as cod, strdescrip as strnombre, 3
		FROM tb04_catalogo WHERE idtabla = 286 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Categoria
		SELECT id as cod, strdescrip as strnombre, 4
		FROM tb04_catalogo WHERE idtabla = 289 AND estado = 8;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Moneda
		SELECT id as cod, strdescrip as strnombre, 5
		FROM tb04_catalogo WHERE idtabla = 535 AND estado = 8;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Ubicacion
		SELECT id as cod, strdescrip as strnombre, 6
		FROM tb04_catalogo WHERE idtabla = 538 AND estado = 8;

		SELECT idcod as id, strdescrip, idtabla as fil FROM datos ORDER BY id,strdescrip;
		
	END;
	END IF;
	
	-- Listado de Tipo de Cliente, Nacionalidad, Género, TipoDocumento, Pais, Estado
	IF opc = 5 THEN
	BEGIN
	
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Estado
		SELECT id as cod, strdescrip as strnombre, 1
		FROM tb04_catalogo WHERE idtabla = 7 AND estado = 8 ORDER BY id;
			
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Tipo de Cliente
		SELECT id as cod, strdescrip as strnombre, 2
		FROM tb04_catalogo WHERE idtabla = 520 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Nacionalidad
		SELECT id as cod, strdescrip as strnombre, 3
		FROM tb04_catalogo WHERE idtabla = 325 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Género
		SELECT id as cod, strdescrip as strnombre, 4
		FROM tb04_catalogo WHERE idtabla = 1 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- TipoDocumento
		SELECT id as cod, strdescrip as strnombre, 5
		FROM tb04_catalogo WHERE idtabla = 523 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- TipoContacto
		SELECT id as cod, strdescrip as strnombre, 6
		FROM tb04_catalogo WHERE idtabla = 526 AND estado = 8 ORDER BY id;
		
		
		SELECT idcod as id, strdescrip, idtabla as fil FROM datos ORDER BY id,strdescrip;
		
	END;
	END IF;
	
	-- Listado de Compras
	IF opc = 6 THEN
	BEGIN
			
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Proveedores
		SELECT id as cod, nombre as strnombre, 1
		FROM tb08_cliente WHERE tipoconta = 528 AND estado = 8;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Tipo de Comprobante
		SELECT id as cod, strdescrip as strnombre, 2
		FROM tb04_catalogo WHERE idtabla = 529 AND estado = 8 ORDER BY id;
		
		INSERT INTO datos(idcod,strdescrip,idtabla) -- Articulos
		SELECT id as cod, nombre as strnombre, 3
		FROM tb06_productos WHERE estado = 8 ORDER BY id;
		
		
		
		SELECT idcod as id, strdescrip, idtabla as fil FROM datos ORDER BY id,strdescrip;
		
	END;
	END IF;
	
	IF opc = 7 THEN
	BEGIN
		
		INSERT INTO alimeproducto(idcod, strnombre, strabrevia, strcosto, incosto, strimagen, idtabla)
		SELECT DISTINCT t4.id as cod, t4.strdescrip as strnombre, t4.strcontent,0,0,0,1
		FROM tb04_catalogo t4 INNER JOIN tb06_productos t6 ON t4.id = t6.categoria
		WHERE t4.idtabla = 289 AND t4.estado = 8;
		
		INSERT INTO alimeproducto(idcod, strnombre, strabrevia, strcosto, incosto, strimagen, idtabla)
		SELECT t6.id as cod, t6.nombre as strnombre, (SELECT t4.strcontent FROM tb04_catalogo t4 WHERE t4.id = t6.categoria) as abrecate,
		CONCAT_WS(' ',(SELECT t4.strcontent FROM tb04_catalogo t4 WHERE t4.id = t6.tipomoneda), t6.costo) as strcosto, t6.costo, 
		CASE WHEN t6.imagen!='' THEN t6.imagen ELSE 'nodisponible.png' END as imagen, 2
		FROM tb06_productos t6 WHERE t6.estado = 8 ORDER BY t6.id;
		
		SELECT idcod as id, strnombre, strabrevia, strcosto, incosto, strimagen, idtabla as fil FROM alimeproducto ORDER BY idtabla, strnombre;
		
	END;
	END IF;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for spfactura_01productos
-- ----------------------------
DROP PROCEDURE IF EXISTS `spfactura_01productos`;
delimiter ;;
CREATE PROCEDURE `spfactura_01productos`(in opc int, in spcod int, in codigobar int, in strnombre varchar(120), in strmodelo varchar(80), in incategoria int, in strpresenta int, in strdescripform varchar(255), in codfabri int, in intipomoneda int, in incostos decimal(18,2), in inpventa decimal(18,2), in inestado int, in instock int, in inubicacion int, in strdatecadu varchar(20), in codacceso int)
BEGIN
	
	IF opc = 1 THEN
	BEGIN
		SELECT v01.cod, v01.codigo, v01.nombre, v01.modelo, v01.categoria, v01.codpresentacion, v01.presentacion,
			v01.descripcion as strdescrip, v01.codfabricante as codfabi, v01.fabricante, v01.codmoneda, v01.moneda,
			v01.costo as precompra, v01.precioventa as preventa, v01.estado, v01.stock as existencias, v01.ubicacion,
			v01.fechacaduca
		FROM vta01_productos v01;
	END;
	END IF;
	
	IF opc = 2 THEN
	BEGIN
				
		IF NOT EXISTS (SELECT id FROM tb06_productos WHERE id = spcod ) THEN
			INSERT INTO tb06_productos (codigo, nombre, modelo, categoria, presentacion, descripcion, codfabricante, tipomoneda, costo,
			precioventa, estado, stock, ubicacion, fechacaduca) VALUES
			(codigobar, strnombre, strmodelo, incategoria, strpresenta, strdescripform, codfabri, intipomoneda, incostos, inpventa, inestado, instock, 
			inubicacion, strdatecadu);
				
		ELSE
		
			UPDATE tb06_productos SET 
				codigo = codigobar,
				nombre = strnombre,
				modelo = strmodelo,
				categoria = incategoria,
				presentacion = strpresenta,
				descripcion = strdescripform,
				codfabricante = codfabri,
			  tipomoneda = intipomoneda,
				costo = incostos,
				precioventa = inpventa,
				estado = inestado,
				stock = instock,
				ubicacion = inubicacion,
				fechacaduca = strdatecadu
			WHERE id=spcod;
			
		END IF;
		
		SELECT v01.cod, v01.codigo, v01.nombre, v01.modelo, v01.categoria, v01.codpresentacion, v01.presentacion,
			v01.descripcion as strdescrip, v01.codfabricante as codfabi, v01.fabricante, v01.codmoneda, v01.moneda,
			v01.costo as precompra, v01.precioventa as preventa, v01.estado, v01.stock as existencias, v01.ubicacion,
			v01.fechacaduca
		FROM vta01_productos v01;
		
	END;
	END IF;
	
	IF opc = 3 THEN
	BEGIN
		DELETE FROM tb06_productos WHERE id = spcod;
		
		SELECT v01.cod, v01.codigo, v01.nombre, v01.modelo, v01.categoria, v01.codpresentacion, v01.presentacion,
			v01.descripcion as strdescrip, v01.codfabricante as codfabi, v01.fabricante, v01.codmoneda, v01.moneda,
			v01.costo as precompra, v01.precioventa as preventa, v01.estado, v01.stock as existencias, v01.ubicacion,
			v01.fechacaduca
		FROM vta01_productos v01;
		
	END;
	END IF;
	
	
	
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for spfactura_02contactos
-- ----------------------------
DROP PROCEDURE IF EXISTS `spfactura_02contactos`;
delimiter ;;
CREATE PROCEDURE `spfactura_02contactos`(in opc int, in coding int, in strnombre varchar(80), in tipocontacto int,
in ndoc varchar(20), in ingenero int, in stremail varchar(80), in intelefono int, in inmovil int, in inestado int,
in strempresa varchar(80), in strempruc varchar(20), in strsitio varchar(50), in inemptelefono int, in strempemail varchar(50),
in innacionalidad int, in indepartamento varchar(30), in strdireccion varchar(255), in strfoto varchar(50))
BEGIN
	-- Clieentes
	
	IF opc = 1 THEN -- Lista de los clientes
	BEGIN
		SELECT tb8.id, tb8.nombre, tb8.tipoconta, tb8.ndocumento, tb8.genero, tb8.email, tb8.telefono, tb8.movil,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.tipoconta) As strtipoconta,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.genero) As strgenero,
		tb8.empruc, tb8.empnombre, tb8.estado, tb8.sitioweb, tb8.emptelefono, tb8.empemail, tb8.pais, tb8.strdepartamento, tb8.direccion
		FROM tb08_cliente tb8;
	END;
	END IF;
	
	IF opc = 2 THEN -- Ingresa a los clientes
		IF NOT EXISTS (SELECT id FROM tb08_cliente WHERE id = coding) THEN
		BEGIN
			INSERT INTO tb08_cliente (nombre, tipoconta, ndocumento, genero, email, telefono, movil, estado, empnombre,
									empruc, sitioweb, emptelefono, empemail, pais, strdepartamento, direccion) VALUES
									
							(strnombre, tipocontacto, ndoc, ingenero, stremail, intelefono, inmovil, inestado, strempresa, strempruc, strsitio, inemptelefono,
							 strempemail, innacionalidad, indepartamento, strdireccion );
		END;
		ELSE -- Actualiza los clientes
		BEGIN
			UPDATE tb08_cliente SET
				nombre= strnombre,
				tipoconta= tipocontacto,
				ndocumento= ndoc,
				genero= ingenero,
				email= stremail,
				telefono= intelefono,
				movil= inmovil,
				estado= inestado,
				empnombre= strempresa,
				empruc= strempruc,
				sitioweb= strsitio,
				emptelefono= inemptelefono,
				empemail= strempemail,
				pais = innacionalidad,
				strdepartamento= indepartamento,
				direccion= strdireccion
			WHERE id = coding;
		END;
		END IF;
		
		SELECT tb8.id, tb8.nombre, tb8.tipoconta, tb8.ndocumento, tb8.genero, tb8.email, tb8.telefono, tb8.movil,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.tipoconta) As strtipoconta,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.genero) As strgenero,
		tb8.empruc, tb8.empnombre, tb8.estado, tb8.sitioweb, tb8.emptelefono, tb8.empemail, tb8.pais, tb8.strdepartamento, tb8.direccion
		FROM tb08_cliente tb8;
		
	END IF;
	
	IF opc = 3 THEN -- Elimina los clientes
	BEGIN
		DELETE FROM tb08_cliente WHERE id = coding;
		
		SELECT tb8.id, tb8.nombre, tb8.tipoconta, tb8.ndocumento, tb8.genero, tb8.email, tb8.telefono, tb8.movil,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.tipoconta) As strtipoconta,
		(SELECT tb4.strdescrip FROM tb04_catalogo tb4 WHERE tb4.id = tb8.genero) As strgenero,
		tb8.empruc, tb8.empnombre, tb8.estado, tb8.sitioweb, tb8.emptelefono, tb8.empemail, tb8.pais, tb8.strdepartamento, tb8.direccion
		FROM tb08_cliente tb8;
	END;
	END IF;
	
	-- Proveedores
	
	IF opc = 4 THEN -- Lista de los clientes
	BEGIN
		SELECT tb7.id as cod, tb7.codtipoproveedor, tb7.codprovee, tb7.nombre, tb7.ndocumento, tb7.claveruc, tb7.registromercantil, tb7.fevencimiento,
			tb7.nacionalidad, tb7.genero, tb7.ocupacion, tb7.clasificacion, tb7.direccion, tb7.municipio, tb7.telefono, tb7.ciudad, tb7.movil, tb7.email,
			tb7.renombre, tb7.repuesto, tb7.retelefono, tb7.removil, tb7.reemail, tb7.foto, tb7.estado, tb7.codaccedo, tb7.fechaagregado
		FROM tb07_proveedor tb7;
	END;
	END IF;
	
	IF opc = 5 THEN -- Ingresa a los clientes
		IF NOT EXISTS (SELECT id FROM tb08_cliente WHERE id = coding) THEN
		BEGIN
			INSERT INTO tb08_cliente (tipocliente, claveruc, nacionalidad, genero, strnombre, ndocumento, tipodocumento, 
																direccion, municipio, telefono, pais, ciudad, movil, email, sitioweb, foto, estado) VALUES
							(tipo, clave, nacion, gen, strnombre, ndoc, tipodoc, strdireccion, strmunicipio, intel, inpais, inciudad,
							 inmovil, stremail, sitio,strfoto, inestado);
		END;
		ELSE -- Actualiza los clientes
		BEGIN
			UPDATE tb08_cliente SET
				tipocliente=tipo, 
				claveruc= clave, 
				nacionalidad = nacion, 
				genero = gen, 
				strnombre = strnombre, 
				ndocumento = ndoc, 
				tipodocumento = tipodoc, 
				direccion = strdireccion, 
				municipio = strmunicipio, 
				telefono = intel, 
				pais = inpais,
			  ciudad = inciudad, 
				movil = inmovil, 
				email = stremail, 
				sitioweb = sitio, 
				foto = strfoto, 
				estado = inestado
			WHERE id = coding;
		END;
		END IF;
		
		SELECT tb8.id as cod, tb8.tipocliente, tb8.claveruc, tb8.nacionalidad, tb8.genero, tb8.strnombre, tb8.ndocumento, tb8.tipodocumento, 
		       tb8.direccion, tb8.municipio, tb8.telefono, tb8.pais, tb8.ciudad, tb8.movil, tb8.email, tb8.sitioweb, tb8.foto, tb8.estado
		FROM tb08_cliente tb8;
		
	END IF;
	
	IF opc = 6 THEN -- Elimina los clientes
	BEGIN
		DELETE FROM tb08_cliente WHERE id = coding;
		
		SELECT tb8.id as cod, tb8.tipocliente, tb8.claveruc, tb8.nacionalidad, tb8.genero, tb8.strnombre, tb8.ndocumento, tb8.tipodocumento, 
		       tb8.direccion, tb8.municipio, tb8.telefono, tb8.pais, tb8.ciudad, tb8.movil, tb8.email, tb8.sitioweb, tb8.foto, tb8.estado
		FROM tb08_cliente tb8;
	END;
	END IF;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for spfactura_03compras
-- ----------------------------
DROP PROCEDURE IF EXISTS `spfactura_03compras`;
delimiter ;;
CREATE PROCEDURE `spfactura_03compras`(in opc int, in incodprod int, in incantidad int, in inprecompra float(18,2),
		 in inpreventa float(18,2), in inacceso int, in tipocomprob int, in seriecomprob int, in strdeta varchar(255), in subtotal float(18,2),
BEGIN

	SET @tipcam = (SELECT tipoCambio FROM tb07_tipocambio WHERE (fecha=DATE_FORMAT(NOW(),  '%Y-%m-%d')));

	-- Consulta detalle de la compra
	IF opc = 1 THEN
		BEGIN
		
			SET @subtotal = (SELECT SUM((tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END))
																						FROM tb07_listaproductostemp tb7 
																						INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
																						WHERE tb7.codacceso = inacceso);
																						
	SET @iva = (SELECT strdescrip FROM tb04_catalogo WHERE id = 534 AND estado = 8);
	SET @ivasub = @subtotal / @iva;
	SET @totalcord = @subtotal + @ivasub;
	
			SELECT tb7.id,
			(SELECT tb6.codigo FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as codigo,
			 tb7.cantidad as cantd,
			(SELECT tb6.nombre FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as strdescrip,
			tb7.preciocompra as preunit, tb7.precioventa as pretotal, 
			(tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END) as precio, 
			@subtotal as subtotal,
			ROUND(@ivasub, 2) as iva,
			ROUND(@totalcord, 2) as totalcordoba, tb6.tipomoneda as mondol,
			(SELECT tb4.strcontent	FROM tb04_catalogo tb4 WHERE tb4.id=tb6.tipomoneda) as abremoneda
			FROM tb07_listaproductostemp tb7 INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
			WHERE tb7.codacceso = inacceso;
			
		END;
	END IF;
	
	-- Agregando datos a Detalle de la compra
	IF opc = 2 THEN
		BEGIN
			/*INSERT INTO tb10_detacompra (codproducto, cantd, preunit, pretotal) VALUES
			(incodprod, incantidad, inprecompra, inpreventa);*/
			
			IF NOT EXISTS (SELECT codproducto FROM tb07_listaproductostemp WHERE codproducto = incodprod AND codacceso = inacceso) THEN
				
				INSERT INTO tb07_listaproductostemp (codproducto, cantidad, preciocompra, precioventa, codacceso) VALUES
				(incodprod, incantidad, inprecompra, inpreventa, inacceso);
				
			ELSE
			
				SET @numcant = (SELECT t7.cantidad FROM tb07_listaproductostemp t7 WHERE t7.codproducto = incodprod AND t7.codacceso = inacceso ) + 1;
			
				UPDATE tb07_listaproductostemp SET 
					cantidad=@numcant,
					preciocompra=inprecompra,
					precioventa=inpreventa
				WHERE (codproducto = incodprod AND codacceso = inacceso);
				
			END IF;
			
			
			
			-- ------------------------------------------------------------------------------------
			
			SET @subtotal = (SELECT SUM((tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END))
																						FROM tb07_listaproductostemp tb7 
																						INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
																						WHERE tb7.codacceso = inacceso);
																						
			SET @iva = (SELECT strdescrip FROM tb04_catalogo WHERE id = 534 AND estado = 8);
			SET @ivasub = @subtotal / @iva;
			SET @totalcord = @subtotal + @ivasub;
	
			SELECT tb7.id,
			(SELECT tb6.codigo FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as codigo,
			 tb7.cantidad as cantd,
			(SELECT tb6.nombre FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as strdescrip,
			tb7.preciocompra as preunit, tb7.precioventa as pretotal, 
			(tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END) as precio, 
			@subtotal as subtotal,
			ROUND(@ivasub, 2) as iva,
			ROUND(@totalcord, 2) as totalcordoba, 537 as mondol
			FROM tb07_listaproductostemp tb7 INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
			WHERE tb7.codacceso = inacceso;
			
		END;
	END IF;
	
	-- Eliminando items de la lista de compras
	IF opc = 3 THEN
		BEGIN
			
			DELETE FROM tb07_listaproductostemp WHERE id = incodprod;
			
			-- ------------------------------------------------------------------------------------
		
			SET @subtotal = (SELECT SUM((tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END))
																						FROM tb07_listaproductostemp tb7 
																						INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
																						WHERE tb7.codacceso = inacceso);
																						
	SET @iva = (SELECT strdescrip FROM tb04_catalogo WHERE id = 534 AND estado = 8);
	SET @ivasub = @subtotal / @iva;
	SET @totalcord = @subtotal + @ivasub;
	
			SELECT tb7.id,
			(SELECT tb6.codigo FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as codigo,
			 tb7.cantidad as cantd,
			(SELECT tb6.nombre FROM tb06_productos tb6 WHERE tb6.id = tb7.codproducto) as strdescrip,
			tb7.preciocompra as preunit, tb7.precioventa as pretotal, 
			(tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END) as precio, 
			@subtotal as subtotal,
			ROUND(@ivasub, 2) as iva,
			ROUND(@totalcord, 2) as totalcordoba, 537 as mondol
			FROM tb07_listaproductostemp tb7 INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
			WHERE tb7.codacceso = inacceso;
			
		END;
	END IF;
	
	-- ComboBox de la lista de compras, mandando info a los INPUTS
	IF opc = 4 THEN
		BEGIN
			
			SELECT id as cod, nombre as strnombre, 1 as cantidad, costo as precompra, precioventa
			FROM tb06_productos WHERE estado = 8 AND id = incodprod ORDER BY id;
			
		END;
	END IF;
	
	IF opc = 5 THEN
		BEGIN
		
			SET @mondolar = intotal / @tipcam;
		
			INSERT INTO tb09_compra (codproveedor, tipocomp, seriecomp, tipocamb, strdetalle, iva, submoncord, montodolar, montomoneda, idestado, codacceso)
			VALUES(incodprod, tipocomprob,seriecomprob,@tipcam,strdeta,iniva,subtotal,ROUND(@mondolar,2),intotal,8, inacceso);
			
			SET @subtotal = (SELECT SUM((tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END))
																						FROM tb07_listaproductostemp tb7 
																						INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
																						WHERE tb7.codacceso = inacceso);
																						
			SET @iva = (SELECT strdescrip FROM tb04_catalogo WHERE id = 534 AND estado = 8);
			SET @ivasub = @subtotal / @iva;
			SET @totalcord = @subtotal + @ivasub;
			
			SET @ultrec = (SELECT MAX(tb9.idcomp) FROM tb09_compra tb9 WHERE codacceso = inacceso);
			
			INSERT INTO tb10_detacompra (codproducto, cantd, tipocambio, idmoneda, montodolar, montomoneda, preciomoneda, presubtotal, vmiva, vmptotal, codrecibo, codacceso)
	
			SELECT  tb7.codproducto, tb7.cantidad as cantd, @tipcam as tipocamb,
			tb6.tipomoneda as idmoneda,
			CASE WHEN tb6.tipomoneda=536 THEN ROUND((tb7.preciocompra/@tipcam),2) ELSE tb7.preciocompra END as mtodolares,
			CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END as mtocordobas,
			(tb7.cantidad * CASE WHEN tb6.tipomoneda=537 THEN ROUND((tb7.preciocompra*@tipcam),2) ELSE tb7.preciocompra END) as preciocord, 
			ROUND(@subtotal, 2) as subtotalcord, ROUND(@ivasub, 2) as iva, 
			ROUND(@totalcord, 2) as totalcordoba, @ultrec as codrecibo, 9 as codacceso
			FROM tb07_listaproductostemp tb7 INNER JOIN tb06_productos tb6 ON tb7.codproducto = tb6.id
			WHERE tb7.codacceso = inacceso;
			
			DELETE FROM tb07_listaproductostemp WHERE codacceso = inacceso;
			
		END;
	END IF;

	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for splogin
-- ----------------------------
DROP PROCEDURE IF EXISTS `splogin`;
delimiter ;;
CREATE PROCEDURE `splogin`(IN opc int, IN nom VARCHAR(80), IN apel VARCHAR(80), IN mail VARCHAR(80), IN passw VARCHAR(80), IN est int, IN cryptpass VARCHAR(400), IN username VARCHAR(80))
BEGIN
	
	IF opc = 1 THEN
		SELECT * FROM tb01_usuario;
	END IF;
	
	IF opc = 2 THEN
		
		IF NOT EXISTS (SELECT id FROM tb01_usuario WHERE id = est) THEN
		BEGIN
		
			INSERT INTO tb01_usuario (nombre, apellido, email, pass, estado, encript, username) VALUES
			(nom, apel, mail, passw, 2, cryptpass, username);
			
			SELECT 1 as valida;
			
		END;
		ELSE
		BEGIN
		
			SELECT 0 as valida;
			
		END;
		END IF;
		
	END IF;
	
	IF opc = 3 THEN
	BEGIN
	
		IF EXISTS (SELECT id FROM tb01_usuario WHERE (email = mail)) THEN
		BEGIN
			SELECT t01.id as cod,CONCAT_WS(' ',t01.nombre, t01.apellido) as nombre, t01.username, 
				(SELECT t04.strdescrip FROM tb04_catalogo t04 WHERE t04.id = t01.codperfil) as perfil,
				t01.encript as encrypt , CASE WHEN t01.strfoto!='' THEN t01.strfoto ELSE 'no_foto.png' END AS strfoto
			FROM tb01_usuario t01 WHERE t01.email = mail;
		END;
		ELSE
		BEGIN
			SELECT 'No hay usuario' as message;
		END;
		END IF;
		
	END;
	END IF;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_pagina
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_pagina`;
delimiter ;;
CREATE PROCEDURE `sp_pagina`(IN criterio INT, IN idcod INT)
BEGIN
	
	IF criterio = 1 THEN
		BEGIN
			-- Lista de Menu de acuerdo al perfil de usuario en que nos encontremos
			SELECT DISTINCT tbm.id, tbm.idgrupos, tbm.strdescrip, tbm.url, tbm.icon, tbm.module, tbm.estado, tbm.cls 
			FROM tb02_menu tbm
			INNER JOIN tb03_perfiles tbp ON tbm.id = tbp.idmenu
			INNER JOIN tb01_usuario tbu ON tbu.codperfil = tbp.perfil
			INNER JOIN tb04_catalogo tbc ON tbc.id = tbu.codperfil
			WHERE tbm.estado = 8 AND tbp.estado = 8 AND tbp.perfil = idcod;
			
		END;
	END IF;
	
	IF criterio = 2 THEN
		BEGIN
			/*SELECT tbm.id, tbm.idgrupos, tbm.strdescrip, tbm.url, tbm.icon, tbm.module, tbm.estado, tbm.cls FROM tb01_menu tbm
			JOIN tb02_perfiles tbp ON tbm.id = tbp.idmenu
			WHERE tbm.estado = 14 AND tbp.estado = 14 AND tbp.perfil = 1 AND tbm.idgrupos = idcod;*/
			
			SELECT DISTINCT (SELECT COUNT(id) FROM tb04_ficha_datos) as totalfichas, CONCAT((SELECT COUNT(tbfd.id) FROM tb04_ficha_datos tbfd 
			JOIN tblusuarios tu ON tbfd.id = tu.idcolaboradores),' de ',(SELECT COUNT(id) FROM tb04_ficha_datos)) as acclogin 
			FROM tb04_ficha_datos;
		END;
	END IF;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;