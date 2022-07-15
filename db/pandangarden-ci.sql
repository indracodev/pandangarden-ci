/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : pandangarden-ci

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 15/07/2022 09:06:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aauth_group_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_group_to_group`;
CREATE TABLE `aauth_group_to_group`  (
  `group_id` int UNSIGNED NOT NULL,
  `subgroup_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`group_id`, `subgroup_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_group_to_group
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_groups
-- ----------------------------
DROP TABLE IF EXISTS `aauth_groups`;
CREATE TABLE `aauth_groups`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_groups
-- ----------------------------
INSERT INTO `aauth_groups` VALUES (1, 'Admin', 'Superadmin Group');
INSERT INTO `aauth_groups` VALUES (2, 'Public', 'Public Group');
INSERT INTO `aauth_groups` VALUES (3, 'Default', 'Default Access Group');
INSERT INTO `aauth_groups` VALUES (4, 'Member', 'Member Access Group');
INSERT INTO `aauth_groups` VALUES (5, 'administrator', '');

-- ----------------------------
-- Table structure for aauth_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `aauth_login_attempts`;
CREATE TABLE `aauth_login_attempts`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `login_attempts` tinyint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_login_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_perm_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_group`;
CREATE TABLE `aauth_perm_to_group`  (
  `perm_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_perm_to_group
-- ----------------------------
INSERT INTO `aauth_perm_to_group` VALUES (1, 5);
INSERT INTO `aauth_perm_to_group` VALUES (153, 5);
INSERT INTO `aauth_perm_to_group` VALUES (158, 5);
INSERT INTO `aauth_perm_to_group` VALUES (85, 5);
INSERT INTO `aauth_perm_to_group` VALUES (89, 5);
INSERT INTO `aauth_perm_to_group` VALUES (90, 5);
INSERT INTO `aauth_perm_to_group` VALUES (91, 5);
INSERT INTO `aauth_perm_to_group` VALUES (92, 5);
INSERT INTO `aauth_perm_to_group` VALUES (93, 5);
INSERT INTO `aauth_perm_to_group` VALUES (94, 5);
INSERT INTO `aauth_perm_to_group` VALUES (95, 5);
INSERT INTO `aauth_perm_to_group` VALUES (96, 5);
INSERT INTO `aauth_perm_to_group` VALUES (97, 5);
INSERT INTO `aauth_perm_to_group` VALUES (98, 5);
INSERT INTO `aauth_perm_to_group` VALUES (99, 5);
INSERT INTO `aauth_perm_to_group` VALUES (100, 5);
INSERT INTO `aauth_perm_to_group` VALUES (101, 5);
INSERT INTO `aauth_perm_to_group` VALUES (102, 5);
INSERT INTO `aauth_perm_to_group` VALUES (103, 5);
INSERT INTO `aauth_perm_to_group` VALUES (104, 5);
INSERT INTO `aauth_perm_to_group` VALUES (105, 5);
INSERT INTO `aauth_perm_to_group` VALUES (106, 5);
INSERT INTO `aauth_perm_to_group` VALUES (107, 5);
INSERT INTO `aauth_perm_to_group` VALUES (108, 5);
INSERT INTO `aauth_perm_to_group` VALUES (109, 5);
INSERT INTO `aauth_perm_to_group` VALUES (110, 5);
INSERT INTO `aauth_perm_to_group` VALUES (111, 5);
INSERT INTO `aauth_perm_to_group` VALUES (112, 5);
INSERT INTO `aauth_perm_to_group` VALUES (113, 5);
INSERT INTO `aauth_perm_to_group` VALUES (114, 5);
INSERT INTO `aauth_perm_to_group` VALUES (115, 5);
INSERT INTO `aauth_perm_to_group` VALUES (116, 5);
INSERT INTO `aauth_perm_to_group` VALUES (117, 5);
INSERT INTO `aauth_perm_to_group` VALUES (118, 5);
INSERT INTO `aauth_perm_to_group` VALUES (119, 5);
INSERT INTO `aauth_perm_to_group` VALUES (120, 5);
INSERT INTO `aauth_perm_to_group` VALUES (121, 5);
INSERT INTO `aauth_perm_to_group` VALUES (122, 5);
INSERT INTO `aauth_perm_to_group` VALUES (123, 5);
INSERT INTO `aauth_perm_to_group` VALUES (124, 5);
INSERT INTO `aauth_perm_to_group` VALUES (125, 5);
INSERT INTO `aauth_perm_to_group` VALUES (126, 5);
INSERT INTO `aauth_perm_to_group` VALUES (127, 5);
INSERT INTO `aauth_perm_to_group` VALUES (128, 5);
INSERT INTO `aauth_perm_to_group` VALUES (129, 5);
INSERT INTO `aauth_perm_to_group` VALUES (130, 5);
INSERT INTO `aauth_perm_to_group` VALUES (131, 5);
INSERT INTO `aauth_perm_to_group` VALUES (132, 5);
INSERT INTO `aauth_perm_to_group` VALUES (133, 5);
INSERT INTO `aauth_perm_to_group` VALUES (134, 5);
INSERT INTO `aauth_perm_to_group` VALUES (135, 5);
INSERT INTO `aauth_perm_to_group` VALUES (136, 5);
INSERT INTO `aauth_perm_to_group` VALUES (137, 5);
INSERT INTO `aauth_perm_to_group` VALUES (138, 5);
INSERT INTO `aauth_perm_to_group` VALUES (139, 5);
INSERT INTO `aauth_perm_to_group` VALUES (140, 5);
INSERT INTO `aauth_perm_to_group` VALUES (141, 5);
INSERT INTO `aauth_perm_to_group` VALUES (142, 5);
INSERT INTO `aauth_perm_to_group` VALUES (143, 5);
INSERT INTO `aauth_perm_to_group` VALUES (144, 5);
INSERT INTO `aauth_perm_to_group` VALUES (145, 5);
INSERT INTO `aauth_perm_to_group` VALUES (146, 5);
INSERT INTO `aauth_perm_to_group` VALUES (147, 5);
INSERT INTO `aauth_perm_to_group` VALUES (148, 5);
INSERT INTO `aauth_perm_to_group` VALUES (149, 5);
INSERT INTO `aauth_perm_to_group` VALUES (150, 5);
INSERT INTO `aauth_perm_to_group` VALUES (151, 5);
INSERT INTO `aauth_perm_to_group` VALUES (152, 5);
INSERT INTO `aauth_perm_to_group` VALUES (154, 5);
INSERT INTO `aauth_perm_to_group` VALUES (155, 5);
INSERT INTO `aauth_perm_to_group` VALUES (156, 5);
INSERT INTO `aauth_perm_to_group` VALUES (157, 5);
INSERT INTO `aauth_perm_to_group` VALUES (159, 5);

-- ----------------------------
-- Table structure for aauth_perm_to_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perm_to_user`;
CREATE TABLE `aauth_perm_to_user`  (
  `perm_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `perm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_perm_to_user
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_perms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_perms`;
CREATE TABLE `aauth_perms`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_perms
-- ----------------------------
INSERT INTO `aauth_perms` VALUES (1, 'menu_dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (2, 'menu_crud_builder', NULL);
INSERT INTO `aauth_perms` VALUES (3, 'menu_api_builder', NULL);
INSERT INTO `aauth_perms` VALUES (4, 'menu_page_builder', NULL);
INSERT INTO `aauth_perms` VALUES (5, 'menu_form_builder', NULL);
INSERT INTO `aauth_perms` VALUES (6, 'menu_menu', NULL);
INSERT INTO `aauth_perms` VALUES (7, 'menu_auth', NULL);
INSERT INTO `aauth_perms` VALUES (8, 'menu_user', NULL);
INSERT INTO `aauth_perms` VALUES (9, 'menu_group', NULL);
INSERT INTO `aauth_perms` VALUES (10, 'menu_access', NULL);
INSERT INTO `aauth_perms` VALUES (11, 'menu_permission', NULL);
INSERT INTO `aauth_perms` VALUES (12, 'menu_api_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (13, 'menu_web_documentation', NULL);
INSERT INTO `aauth_perms` VALUES (14, 'menu_settings', NULL);
INSERT INTO `aauth_perms` VALUES (15, 'user_list', NULL);
INSERT INTO `aauth_perms` VALUES (16, 'user_update_status', NULL);
INSERT INTO `aauth_perms` VALUES (17, 'user_export', NULL);
INSERT INTO `aauth_perms` VALUES (18, 'user_add', NULL);
INSERT INTO `aauth_perms` VALUES (19, 'user_update', NULL);
INSERT INTO `aauth_perms` VALUES (20, 'user_update_profile', NULL);
INSERT INTO `aauth_perms` VALUES (21, 'user_update_password', NULL);
INSERT INTO `aauth_perms` VALUES (22, 'user_profile', NULL);
INSERT INTO `aauth_perms` VALUES (23, 'user_view', NULL);
INSERT INTO `aauth_perms` VALUES (24, 'user_delete', NULL);
INSERT INTO `aauth_perms` VALUES (25, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (26, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (27, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (28, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (29, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (30, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (31, 'form_list', NULL);
INSERT INTO `aauth_perms` VALUES (32, 'form_export', NULL);
INSERT INTO `aauth_perms` VALUES (33, 'form_add', NULL);
INSERT INTO `aauth_perms` VALUES (34, 'form_update', NULL);
INSERT INTO `aauth_perms` VALUES (35, 'form_view', NULL);
INSERT INTO `aauth_perms` VALUES (36, 'form_manage', NULL);
INSERT INTO `aauth_perms` VALUES (37, 'form_delete', NULL);
INSERT INTO `aauth_perms` VALUES (38, 'crud_list', NULL);
INSERT INTO `aauth_perms` VALUES (39, 'crud_export', NULL);
INSERT INTO `aauth_perms` VALUES (40, 'crud_add', NULL);
INSERT INTO `aauth_perms` VALUES (41, 'crud_update', NULL);
INSERT INTO `aauth_perms` VALUES (42, 'crud_view', NULL);
INSERT INTO `aauth_perms` VALUES (43, 'crud_delete', NULL);
INSERT INTO `aauth_perms` VALUES (44, 'rest_list', NULL);
INSERT INTO `aauth_perms` VALUES (45, 'rest_export', NULL);
INSERT INTO `aauth_perms` VALUES (46, 'rest_add', NULL);
INSERT INTO `aauth_perms` VALUES (47, 'rest_update', NULL);
INSERT INTO `aauth_perms` VALUES (48, 'rest_view', NULL);
INSERT INTO `aauth_perms` VALUES (49, 'rest_delete', NULL);
INSERT INTO `aauth_perms` VALUES (50, 'group_list', NULL);
INSERT INTO `aauth_perms` VALUES (51, 'group_export', NULL);
INSERT INTO `aauth_perms` VALUES (52, 'group_add', NULL);
INSERT INTO `aauth_perms` VALUES (53, 'group_update', NULL);
INSERT INTO `aauth_perms` VALUES (54, 'group_view', NULL);
INSERT INTO `aauth_perms` VALUES (55, 'group_delete', NULL);
INSERT INTO `aauth_perms` VALUES (56, 'permission_list', NULL);
INSERT INTO `aauth_perms` VALUES (57, 'permission_export', NULL);
INSERT INTO `aauth_perms` VALUES (58, 'permission_add', NULL);
INSERT INTO `aauth_perms` VALUES (59, 'permission_update', NULL);
INSERT INTO `aauth_perms` VALUES (60, 'permission_view', NULL);
INSERT INTO `aauth_perms` VALUES (61, 'permission_delete', NULL);
INSERT INTO `aauth_perms` VALUES (62, 'access_list', NULL);
INSERT INTO `aauth_perms` VALUES (63, 'access_add', NULL);
INSERT INTO `aauth_perms` VALUES (64, 'access_update', NULL);
INSERT INTO `aauth_perms` VALUES (65, 'menu_list', NULL);
INSERT INTO `aauth_perms` VALUES (66, 'menu_add', NULL);
INSERT INTO `aauth_perms` VALUES (67, 'menu_update', NULL);
INSERT INTO `aauth_perms` VALUES (68, 'menu_delete', NULL);
INSERT INTO `aauth_perms` VALUES (69, 'menu_save_ordering', NULL);
INSERT INTO `aauth_perms` VALUES (70, 'menu_type_add', NULL);
INSERT INTO `aauth_perms` VALUES (71, 'page_list', NULL);
INSERT INTO `aauth_perms` VALUES (72, 'page_export', NULL);
INSERT INTO `aauth_perms` VALUES (73, 'page_add', NULL);
INSERT INTO `aauth_perms` VALUES (74, 'page_update', NULL);
INSERT INTO `aauth_perms` VALUES (75, 'page_view', NULL);
INSERT INTO `aauth_perms` VALUES (76, 'page_delete', NULL);
INSERT INTO `aauth_perms` VALUES (77, 'blog_list', NULL);
INSERT INTO `aauth_perms` VALUES (78, 'blog_export', NULL);
INSERT INTO `aauth_perms` VALUES (79, 'blog_add', NULL);
INSERT INTO `aauth_perms` VALUES (80, 'blog_update', NULL);
INSERT INTO `aauth_perms` VALUES (81, 'blog_view', NULL);
INSERT INTO `aauth_perms` VALUES (82, 'blog_delete', NULL);
INSERT INTO `aauth_perms` VALUES (83, 'setting', NULL);
INSERT INTO `aauth_perms` VALUES (84, 'setting_update', NULL);
INSERT INTO `aauth_perms` VALUES (85, 'dashboard', NULL);
INSERT INTO `aauth_perms` VALUES (86, 'extension_list', NULL);
INSERT INTO `aauth_perms` VALUES (87, 'extension_activate', NULL);
INSERT INTO `aauth_perms` VALUES (88, 'extension_deactivate', NULL);
INSERT INTO `aauth_perms` VALUES (89, 'tb_category_add', '');
INSERT INTO `aauth_perms` VALUES (90, 'tb_category_update', '');
INSERT INTO `aauth_perms` VALUES (91, 'tb_category_view', '');
INSERT INTO `aauth_perms` VALUES (92, 'tb_category_delete', '');
INSERT INTO `aauth_perms` VALUES (93, 'tb_category_list', '');
INSERT INTO `aauth_perms` VALUES (94, 'tb_customers_add', '');
INSERT INTO `aauth_perms` VALUES (95, 'tb_customers_update', '');
INSERT INTO `aauth_perms` VALUES (96, 'tb_customers_view', '');
INSERT INTO `aauth_perms` VALUES (97, 'tb_customers_delete', '');
INSERT INTO `aauth_perms` VALUES (98, 'tb_customers_list', '');
INSERT INTO `aauth_perms` VALUES (99, 'tb_delivery_add', '');
INSERT INTO `aauth_perms` VALUES (100, 'tb_delivery_update', '');
INSERT INTO `aauth_perms` VALUES (101, 'tb_delivery_view', '');
INSERT INTO `aauth_perms` VALUES (102, 'tb_delivery_delete', '');
INSERT INTO `aauth_perms` VALUES (103, 'tb_delivery_list', '');
INSERT INTO `aauth_perms` VALUES (104, 'tb_gallery_add', '');
INSERT INTO `aauth_perms` VALUES (105, 'tb_gallery_update', '');
INSERT INTO `aauth_perms` VALUES (106, 'tb_gallery_view', '');
INSERT INTO `aauth_perms` VALUES (107, 'tb_gallery_delete', '');
INSERT INTO `aauth_perms` VALUES (108, 'tb_gallery_list', '');
INSERT INTO `aauth_perms` VALUES (109, 'tb_menu_add', '');
INSERT INTO `aauth_perms` VALUES (110, 'tb_menu_update', '');
INSERT INTO `aauth_perms` VALUES (111, 'tb_menu_view', '');
INSERT INTO `aauth_perms` VALUES (112, 'tb_menu_delete', '');
INSERT INTO `aauth_perms` VALUES (113, 'tb_menu_list', '');
INSERT INTO `aauth_perms` VALUES (114, 'tb_menu_po_add', '');
INSERT INTO `aauth_perms` VALUES (115, 'tb_menu_po_update', '');
INSERT INTO `aauth_perms` VALUES (116, 'tb_menu_po_view', '');
INSERT INTO `aauth_perms` VALUES (117, 'tb_menu_po_delete', '');
INSERT INTO `aauth_perms` VALUES (118, 'tb_menu_po_list', '');
INSERT INTO `aauth_perms` VALUES (119, 'tb_order_add', '');
INSERT INTO `aauth_perms` VALUES (120, 'tb_order_update', '');
INSERT INTO `aauth_perms` VALUES (121, 'tb_order_view', '');
INSERT INTO `aauth_perms` VALUES (122, 'tb_order_delete', '');
INSERT INTO `aauth_perms` VALUES (123, 'tb_order_list', '');
INSERT INTO `aauth_perms` VALUES (124, 'tb_preorder_add', '');
INSERT INTO `aauth_perms` VALUES (125, 'tb_preorder_update', '');
INSERT INTO `aauth_perms` VALUES (126, 'tb_preorder_view', '');
INSERT INTO `aauth_perms` VALUES (127, 'tb_preorder_delete', '');
INSERT INTO `aauth_perms` VALUES (128, 'tb_preorder_list', '');
INSERT INTO `aauth_perms` VALUES (129, 'tb_reservation_add', '');
INSERT INTO `aauth_perms` VALUES (130, 'tb_reservation_update', '');
INSERT INTO `aauth_perms` VALUES (131, 'tb_reservation_view', '');
INSERT INTO `aauth_perms` VALUES (132, 'tb_reservation_delete', '');
INSERT INTO `aauth_perms` VALUES (133, 'tb_reservation_list', '');
INSERT INTO `aauth_perms` VALUES (134, 'tb_takeaway_add', '');
INSERT INTO `aauth_perms` VALUES (135, 'tb_takeaway_update', '');
INSERT INTO `aauth_perms` VALUES (136, 'tb_takeaway_view', '');
INSERT INTO `aauth_perms` VALUES (137, 'tb_takeaway_delete', '');
INSERT INTO `aauth_perms` VALUES (138, 'tb_takeaway_list', '');
INSERT INTO `aauth_perms` VALUES (139, 'tb_visitlog_page_add', '');
INSERT INTO `aauth_perms` VALUES (140, 'tb_visitlog_page_update', '');
INSERT INTO `aauth_perms` VALUES (141, 'tb_visitlog_page_view', '');
INSERT INTO `aauth_perms` VALUES (142, 'tb_visitlog_page_delete', '');
INSERT INTO `aauth_perms` VALUES (143, 'tb_visitlog_page_list', '');
INSERT INTO `aauth_perms` VALUES (144, 'tb_visitorlog_add', '');
INSERT INTO `aauth_perms` VALUES (145, 'tb_visitorlog_update', '');
INSERT INTO `aauth_perms` VALUES (146, 'tb_visitorlog_view', '');
INSERT INTO `aauth_perms` VALUES (147, 'tb_visitorlog_delete', '');
INSERT INTO `aauth_perms` VALUES (148, 'tb_visitorlog_list', '');
INSERT INTO `aauth_perms` VALUES (149, 'menu_category', '');
INSERT INTO `aauth_perms` VALUES (150, 'menu_customers', '');
INSERT INTO `aauth_perms` VALUES (151, 'menu_delivery', '');
INSERT INTO `aauth_perms` VALUES (152, 'menu_gallery', '');
INSERT INTO `aauth_perms` VALUES (153, 'menu_menu_po', '');
INSERT INTO `aauth_perms` VALUES (154, 'menu_order', '');
INSERT INTO `aauth_perms` VALUES (155, 'menu_preorder', '');
INSERT INTO `aauth_perms` VALUES (156, 'menu_reservation', '');
INSERT INTO `aauth_perms` VALUES (157, 'menu_takeaway', '');
INSERT INTO `aauth_perms` VALUES (158, 'menu_visitlog_page', '');
INSERT INTO `aauth_perms` VALUES (159, 'menu_visitorlog', '');

-- ----------------------------
-- Table structure for aauth_pms
-- ----------------------------
DROP TABLE IF EXISTS `aauth_pms`;
CREATE TABLE `aauth_pms`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int UNSIGNED NOT NULL,
  `receiver_id` int UNSIGNED NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_sent` datetime NULL DEFAULT NULL,
  `date_read` datetime NULL DEFAULT NULL,
  `pm_deleted_sender` int NULL DEFAULT NULL,
  `pm_deleted_receiver` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_pms
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_user
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user`;
CREATE TABLE `aauth_user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_user
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_user_to_group
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_to_group`;
CREATE TABLE `aauth_user_to_group`  (
  `user_id` int UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_user_to_group
-- ----------------------------
INSERT INTO `aauth_user_to_group` VALUES (1, 1);
INSERT INTO `aauth_user_to_group` VALUES (1, 3);
INSERT INTO `aauth_user_to_group` VALUES (2, 5);

-- ----------------------------
-- Table structure for aauth_user_variables
-- ----------------------------
DROP TABLE IF EXISTS `aauth_user_variables`;
CREATE TABLE `aauth_user_variables`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `data_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_user_variables
-- ----------------------------

-- ----------------------------
-- Table structure for aauth_users
-- ----------------------------
DROP TABLE IF EXISTS `aauth_users`;
CREATE TABLE `aauth_users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oauth_uid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `oauth_provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banned` tinyint(1) NULL DEFAULT 0,
  `last_login` datetime NULL DEFAULT NULL,
  `last_activity` datetime NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `forgot_exp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `remember_time` datetime NULL DEFAULT NULL,
  `remember_exp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `verification_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `top_secret` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aauth_users
-- ----------------------------
INSERT INTO `aauth_users` VALUES (1, 'suryoatm@gmail.com', NULL, NULL, '96522f003511d291470d39ff6965f2fa35aa53730de50c810db6d0909c3adeba', 'suryoatm', 'suryoatm', '', 0, '2022-07-15 08:40:49', '2022-07-15 08:40:49', '2022-07-15 03:32:54', NULL, NULL, NULL, NULL, NULL, '127.0.0.1');
INSERT INTO `aauth_users` VALUES (2, 'nanda@gmail.com', NULL, NULL, '7b8df0acdf9cc25241cc668229e0cb3f34075a70dbda7aaed41d2b15ebed2241', 'nanda', 'nanda', 'default.png', 0, '2022-07-15 08:48:00', '2022-07-15 08:48:00', '2022-07-15 08:39:48', NULL, NULL, NULL, NULL, NULL, '::1');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tags` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `viewers` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', 'wellcome.jpg', 'greetings', '1', 'publish', 'admin', 0, '2022-07-15 03:32:53', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `category_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES (1, 'Technology', '');
INSERT INTO `blog_category` VALUES (2, 'Lifestyle', '');

-- ----------------------------
-- Table structure for captcha
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha`  (
  `captcha_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `captcha_time` int NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha
-- ----------------------------

-- ----------------------------
-- Table structure for cc_options
-- ----------------------------
DROP TABLE IF EXISTS `cc_options`;
CREATE TABLE `cc_options`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_options
-- ----------------------------
INSERT INTO `cc_options` VALUES (1, 'favicon', 'default.png');
INSERT INTO `cc_options` VALUES (2, 'site_name', 'pandangarden');
INSERT INTO `cc_options` VALUES (3, 'timezone', 'Asia/Jakarta');
INSERT INTO `cc_options` VALUES (4, 'enable_crud_builder', NULL);
INSERT INTO `cc_options` VALUES (5, 'enable_api_builder', NULL);
INSERT INTO `cc_options` VALUES (6, 'enable_form_builder', NULL);
INSERT INTO `cc_options` VALUES (7, 'enable_page_builder', NULL);
INSERT INTO `cc_options` VALUES (8, 'limit_pagination', '10');
INSERT INTO `cc_options` VALUES (9, 'site_description', '');
INSERT INTO `cc_options` VALUES (10, 'keywords', '');
INSERT INTO `cc_options` VALUES (11, 'author', '');
INSERT INTO `cc_options` VALUES (12, 'logo', NULL);
INSERT INTO `cc_options` VALUES (13, 'active_theme', 'cicool');
INSERT INTO `cc_options` VALUES (14, 'landing_page_id', 'default');
INSERT INTO `cc_options` VALUES (15, 'email', 'suryoatm@gmail.com');
INSERT INTO `cc_options` VALUES (16, 'google_id', '');
INSERT INTO `cc_options` VALUES (17, 'google_secret', '');

-- ----------------------------
-- Table structure for cc_session
-- ----------------------------
DROP TABLE IF EXISTS `cc_session`;
CREATE TABLE `cc_session`  (
  `id` int NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int NOT NULL,
  `data` blob NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cc_session
-- ----------------------------

-- ----------------------------
-- Table structure for crud
-- ----------------------------
DROP TABLE IF EXISTS `crud`;
CREATE TABLE `crud`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `javascript` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `style` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_update` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_create` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `javascript_setting_list` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `primary_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `page_read` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_create` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_update` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud
-- ----------------------------
INSERT INTO `crud` VALUES (1, 'Tb Category', 'Tb Category', 'tb_category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (2, 'Tb Customers', 'Tb Customers', 'tb_customers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (3, 'Tb Delivery', 'Tb Delivery', 'tb_delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (4, 'Tb Gallery', 'Tb Gallery', 'tb_gallery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (5, 'Tb Menu', 'Tb Menu', 'tb_menu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (6, 'Tb Menu Po', 'Tb Menu Po', 'tb_menu_po', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (7, 'Tb Order', 'Tb Order', 'tb_order', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (8, 'Tb Preorder', 'Tb Preorder', 'tb_preorder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (9, 'Tb Reservation', 'Tb Reservation', 'tb_reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (10, 'Tb Takeaway', 'Tb Takeaway', 'tb_takeaway', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (11, 'Tb Visitlog Page', 'Tb Visitlog Page', 'tb_visitlog_page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');
INSERT INTO `crud` VALUES (12, 'Tb Visitorlog', 'Tb Visitorlog', 'tb_visitorlog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');

-- ----------------------------
-- Table structure for crud_action
-- ----------------------------
DROP TABLE IF EXISTS `crud_action`;
CREATE TABLE `crud_action`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sort_order` int NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crud_id` int NOT NULL,
  `action` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_action
-- ----------------------------

-- ----------------------------
-- Table structure for crud_custom_option
-- ----------------------------
DROP TABLE IF EXISTS `crud_custom_option`;
CREATE TABLE `crud_custom_option`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int NOT NULL,
  `crud_id` int NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_custom_option
-- ----------------------------

-- ----------------------------
-- Table structure for crud_field
-- ----------------------------
DROP TABLE IF EXISTS `crud_field`;
CREATE TABLE `crud_field`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_id` int NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `help_block` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `auto_generate_help_block` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wrapper_class` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `show_column` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_form` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_form` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_detail_page` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int NOT NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field
-- ----------------------------
INSERT INTO `crud_field` VALUES (1, 1, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (2, 1, 'categoryId', 'categoryId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (3, 1, 'categoryName', 'categoryName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (4, 1, 'menuId', 'menuId', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (5, 1, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (6, 2, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (7, 2, 'customerId', 'customerId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (8, 2, 'customerName', 'customerName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (9, 2, 'customerUsername', 'customerUsername', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (10, 2, 'customerEmail', 'customerEmail', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (11, 2, 'customerAddress', 'customerAddress', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (12, 2, 'customerPhone', 'customerPhone', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (13, 2, 'customerPassword', 'customerPassword', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (14, 2, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (15, 3, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (16, 3, 'deliveryId', 'deliveryId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (17, 3, 'deliveryName', 'deliveryName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (18, 3, 'deliveryPhone', 'deliveryPhone', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (19, 3, 'deliveryDate', 'deliveryDate', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (20, 3, 'deliveryTime', 'deliveryTime', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (21, 3, 'deliveryAddress', 'deliveryAddress', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (22, 3, 'deliveryCoord', 'deliveryCoord', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (23, 3, 'deliveryEmail', 'deliveryEmail', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (24, 3, 'deliveryNote', 'deliveryNote', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (25, 3, 'deliveryFee', 'deliveryFee', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (26, 3, 'orderId', 'orderId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (27, 3, 'orderFee', 'orderFee', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (28, 3, 'deliveryPayment', 'deliveryPayment', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 14, '', '', '');
INSERT INTO `crud_field` VALUES (29, 3, 'paymentStatus', 'paymentStatus', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 15, '', '', '');
INSERT INTO `crud_field` VALUES (30, 3, 'paymentDate', 'paymentDate', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 16, '', '', '');
INSERT INTO `crud_field` VALUES (31, 3, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 17, '', '', '');
INSERT INTO `crud_field` VALUES (32, 4, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (33, 4, 'galleryId', 'galleryId', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (34, 4, 'galleryImg', 'galleryImg', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (35, 4, 'galleryUrl', 'galleryUrl', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (36, 4, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (37, 5, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (38, 5, 'menuId', 'menuId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (39, 5, 'menuName', 'menuName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (40, 5, 'categoryId', 'categoryId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (41, 5, 'goFood', 'goFood', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (42, 5, 'grabFood', 'grabFood', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (43, 5, 'whatsapp', 'whatsapp', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (44, 5, 'menuDesc', 'menuDesc', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (45, 5, 'menuPrice', 'menuPrice', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (46, 5, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (47, 6, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (48, 6, 'menuId', 'menuId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (49, 6, 'menuName', 'menuName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (50, 6, 'menuDesc', 'menuDesc', 'editor_wysiwyg', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (51, 6, 'menuPrice', 'menuPrice', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (52, 6, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (53, 7, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (54, 7, 'orderId', 'orderId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (55, 7, 'orderType', 'orderType', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (56, 7, 'customerId', 'customerId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (57, 7, 'menuId', 'menuId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (58, 7, 'menuQty', 'menuQty', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (59, 7, 'menuPrice', 'menuPrice', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (60, 7, 'orderSubtotal', 'orderSubtotal', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (61, 7, 'orderNote', 'orderNote', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (62, 7, 'orderStatus', 'orderStatus', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (63, 7, 'orderExpired', 'orderExpired', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (64, 7, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (65, 8, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (66, 8, 'preorderId', 'preorderId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (67, 8, 'menuId', 'menuId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (68, 8, 'preorderStart', 'preorderStart', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (69, 8, 'preorderEnd', 'preorderEnd', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (70, 8, 'preorderStatus', 'preorderStatus', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (71, 8, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (72, 9, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (73, 9, 'reservationId', 'reservationId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (74, 9, 'reservationName', 'reservationName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (75, 9, 'reservationPhone', 'reservationPhone', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (76, 9, 'reservationDate', 'reservationDate', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (77, 9, 'reservationTime', 'reservationTime', 'time', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (78, 9, 'reservationType', 'reservationType', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (79, 9, 'reservationRequest', 'reservationRequest', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (80, 9, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (81, 10, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (82, 10, 'takeawayId', 'takeawayId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (83, 10, 'takeawayName', 'takeawayName', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (84, 10, 'takeawayPhone', 'takeawayPhone', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (85, 10, 'takeawayDate', 'takeawayDate', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (86, 10, 'takeawayTime', 'takeawayTime', 'time', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');
INSERT INTO `crud_field` VALUES (87, 10, 'takeawayEmail', 'takeawayEmail', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', '');
INSERT INTO `crud_field` VALUES (88, 10, 'orderId', 'orderId', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', '');
INSERT INTO `crud_field` VALUES (89, 10, 'orderFee', 'orderFee', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', '');
INSERT INTO `crud_field` VALUES (90, 10, 'takeawayPayment', 'takeawayPayment', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 10, '', '', '');
INSERT INTO `crud_field` VALUES (91, 10, 'paymentStatus', 'paymentStatus', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 11, '', '', '');
INSERT INTO `crud_field` VALUES (92, 10, 'paymentDate', 'paymentDate', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 12, '', '', '');
INSERT INTO `crud_field` VALUES (93, 10, 'lastUpdated', 'lastUpdated', 'timestamp', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 13, '', '', '');
INSERT INTO `crud_field` VALUES (94, 11, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (95, 11, 'tb_visitlog_ip', 'tb_visitlog_ip', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (96, 11, 'tb_visitlog_page_name', 'tb_visitlog_page_name', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (97, 11, 'tb_visitlog_page_time', 'tb_visitlog_page_time', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (98, 12, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', '');
INSERT INTO `crud_field` VALUES (99, 12, 'tb_visitorlog_date', 'tb_visitorlog_date', 'date', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');
INSERT INTO `crud_field` VALUES (100, 12, 'tb_visitorlog_ip', 'tb_visitorlog_ip', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', '');
INSERT INTO `crud_field` VALUES (101, 12, 'tb_visitorlog_client', 'tb_visitorlog_client', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', '');
INSERT INTO `crud_field` VALUES (102, 12, 'tb_visitorlog_times', 'tb_visitorlog_times', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', '');
INSERT INTO `crud_field` VALUES (103, 12, 'tb_visitorlog_lastvisit', 'tb_visitorlog_lastvisit', 'datetime', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', '');

-- ----------------------------
-- Table structure for crud_field_condition
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_condition`;
CREATE TABLE `crud_field_condition`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int NOT NULL,
  `reff` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `crud_id` int NOT NULL,
  `cond_field` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cond_operator` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cond_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_condition
-- ----------------------------

-- ----------------------------
-- Table structure for crud_field_configuration
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_configuration`;
CREATE TABLE `crud_field_configuration`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int NOT NULL,
  `crud_id` int NOT NULL,
  `group_config` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_configuration
-- ----------------------------

-- ----------------------------
-- Table structure for crud_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_field_validation`;
CREATE TABLE `crud_field_validation`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `crud_field_id` int NOT NULL,
  `crud_id` int NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_field_validation
-- ----------------------------
INSERT INTO `crud_field_validation` VALUES (1, 2, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (2, 2, 1, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (3, 3, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (4, 3, 1, 'max_length', '30');
INSERT INTO `crud_field_validation` VALUES (5, 4, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (6, 5, 1, 'required', '');
INSERT INTO `crud_field_validation` VALUES (7, 7, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (8, 7, 2, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (9, 8, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (10, 8, 2, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (11, 9, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (12, 9, 2, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (13, 10, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (14, 10, 2, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (15, 11, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (16, 12, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (17, 12, 2, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (18, 13, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (19, 14, 2, 'required', '');
INSERT INTO `crud_field_validation` VALUES (20, 16, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (21, 16, 3, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (22, 17, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (23, 17, 3, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (24, 18, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (25, 18, 3, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (26, 19, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (27, 20, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (28, 20, 3, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (29, 21, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (30, 21, 3, 'max_length', '256');
INSERT INTO `crud_field_validation` VALUES (31, 22, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (32, 22, 3, 'max_length', '256');
INSERT INTO `crud_field_validation` VALUES (33, 23, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (34, 23, 3, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (35, 24, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (36, 24, 3, 'max_length', '256');
INSERT INTO `crud_field_validation` VALUES (37, 25, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (38, 25, 3, 'max_length', '6');
INSERT INTO `crud_field_validation` VALUES (39, 26, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (40, 26, 3, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (41, 27, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (42, 27, 3, 'max_length', '8');
INSERT INTO `crud_field_validation` VALUES (43, 28, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (44, 28, 3, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (45, 29, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (46, 29, 3, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (47, 30, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (48, 31, 3, 'required', '');
INSERT INTO `crud_field_validation` VALUES (49, 33, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (50, 33, 4, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (51, 34, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (52, 35, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (53, 36, 4, 'required', '');
INSERT INTO `crud_field_validation` VALUES (54, 38, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (55, 38, 5, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (56, 39, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (57, 39, 5, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (58, 40, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (59, 40, 5, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (60, 41, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (61, 42, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (62, 43, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (63, 44, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (64, 45, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (65, 45, 5, 'max_length', '6');
INSERT INTO `crud_field_validation` VALUES (66, 46, 5, 'required', '');
INSERT INTO `crud_field_validation` VALUES (67, 48, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (68, 48, 6, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (69, 49, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (70, 49, 6, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (71, 50, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (72, 51, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (73, 51, 6, 'max_length', '6');
INSERT INTO `crud_field_validation` VALUES (74, 52, 6, 'required', '');
INSERT INTO `crud_field_validation` VALUES (75, 54, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (76, 54, 7, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (77, 55, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (78, 55, 7, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (79, 56, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (80, 56, 7, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (81, 57, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (82, 57, 7, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (83, 58, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (84, 58, 7, 'max_length', '2');
INSERT INTO `crud_field_validation` VALUES (85, 59, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (86, 59, 7, 'max_length', '7');
INSERT INTO `crud_field_validation` VALUES (87, 60, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (88, 60, 7, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (89, 61, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (90, 61, 7, 'max_length', '256');
INSERT INTO `crud_field_validation` VALUES (91, 62, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (92, 62, 7, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (93, 63, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (94, 64, 7, 'required', '');
INSERT INTO `crud_field_validation` VALUES (95, 66, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (96, 66, 8, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (97, 67, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (98, 67, 8, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (99, 68, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (100, 69, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (101, 70, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (102, 70, 8, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (103, 71, 8, 'required', '');
INSERT INTO `crud_field_validation` VALUES (104, 73, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (105, 73, 9, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (106, 74, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (107, 74, 9, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (108, 75, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (109, 75, 9, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (110, 76, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (111, 77, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (112, 78, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (113, 78, 9, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (114, 79, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (115, 79, 9, 'max_length', '256');
INSERT INTO `crud_field_validation` VALUES (116, 80, 9, 'required', '');
INSERT INTO `crud_field_validation` VALUES (117, 82, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (118, 82, 10, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (119, 83, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (120, 83, 10, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (121, 84, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (122, 84, 10, 'max_length', '15');
INSERT INTO `crud_field_validation` VALUES (123, 85, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (124, 86, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (125, 87, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (126, 87, 10, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (127, 88, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (128, 88, 10, 'max_length', '5');
INSERT INTO `crud_field_validation` VALUES (129, 89, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (130, 89, 10, 'max_length', '8');
INSERT INTO `crud_field_validation` VALUES (131, 90, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (132, 90, 10, 'max_length', '10');
INSERT INTO `crud_field_validation` VALUES (133, 91, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (134, 91, 10, 'max_length', '1');
INSERT INTO `crud_field_validation` VALUES (135, 92, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (136, 93, 10, 'required', '');
INSERT INTO `crud_field_validation` VALUES (137, 95, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (138, 95, 11, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (139, 96, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (140, 96, 11, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (141, 97, 11, 'required', '');
INSERT INTO `crud_field_validation` VALUES (142, 99, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (143, 100, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (144, 100, 12, 'max_length', '20');
INSERT INTO `crud_field_validation` VALUES (145, 101, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (146, 101, 12, 'max_length', '60');
INSERT INTO `crud_field_validation` VALUES (147, 102, 12, 'required', '');
INSERT INTO `crud_field_validation` VALUES (148, 102, 12, 'max_length', '11');
INSERT INTO `crud_field_validation` VALUES (149, 103, 12, 'required', '');

-- ----------------------------
-- Table structure for crud_function
-- ----------------------------
DROP TABLE IF EXISTS `crud_function`;
CREATE TABLE `crud_function`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `crud_id` int NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_function
-- ----------------------------

-- ----------------------------
-- Table structure for crud_input_chained
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_chained`;
CREATE TABLE `crud_input_chained`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `chain_field` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chain_field_eq` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crud_field_id` int NULL DEFAULT NULL,
  `crud_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_chained
-- ----------------------------

-- ----------------------------
-- Table structure for crud_input_type
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_type`;
CREATE TABLE `crud_input_type`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `custom_value` int NOT NULL,
  `validation_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_type
-- ----------------------------
INSERT INTO `crud_input_type` VALUES (1, 'input', '0', 0, 'input');
INSERT INTO `crud_input_type` VALUES (2, 'textarea', '0', 0, 'text');
INSERT INTO `crud_input_type` VALUES (3, 'select', '1', 0, 'select');
INSERT INTO `crud_input_type` VALUES (4, 'editor_wysiwyg', '0', 0, 'editor');
INSERT INTO `crud_input_type` VALUES (5, 'password', '0', 0, 'password');
INSERT INTO `crud_input_type` VALUES (6, 'email', '0', 0, 'email');
INSERT INTO `crud_input_type` VALUES (7, 'address_map', '0', 0, 'address_map');
INSERT INTO `crud_input_type` VALUES (8, 'file', '0', 0, 'file');
INSERT INTO `crud_input_type` VALUES (9, 'file_multiple', '0', 0, 'file_multiple');
INSERT INTO `crud_input_type` VALUES (10, 'datetime', '0', 0, 'datetime');
INSERT INTO `crud_input_type` VALUES (11, 'date', '0', 0, 'date');
INSERT INTO `crud_input_type` VALUES (12, 'timestamp', '0', 0, 'timestamp');
INSERT INTO `crud_input_type` VALUES (13, 'number', '0', 0, 'number');
INSERT INTO `crud_input_type` VALUES (14, 'yes_no', '0', 0, 'yes_no');
INSERT INTO `crud_input_type` VALUES (15, 'time', '0', 0, 'time');
INSERT INTO `crud_input_type` VALUES (16, 'year', '0', 0, 'year');
INSERT INTO `crud_input_type` VALUES (17, 'select_multiple', '1', 0, 'select_multiple');
INSERT INTO `crud_input_type` VALUES (18, 'checkboxes', '1', 0, 'checkboxes');
INSERT INTO `crud_input_type` VALUES (19, 'options', '1', 0, 'options');
INSERT INTO `crud_input_type` VALUES (20, 'true_false', '0', 0, 'true_false');
INSERT INTO `crud_input_type` VALUES (21, 'current_user_username', '0', 0, 'user_username');
INSERT INTO `crud_input_type` VALUES (22, 'current_user_id', '0', 0, 'current_user_id');
INSERT INTO `crud_input_type` VALUES (23, 'custom_option', '0', 1, 'custom_option');
INSERT INTO `crud_input_type` VALUES (24, 'custom_checkbox', '0', 1, 'custom_checkbox');
INSERT INTO `crud_input_type` VALUES (25, 'custom_select_multiple', '0', 1, 'custom_select_multiple');
INSERT INTO `crud_input_type` VALUES (26, 'custom_select', '0', 1, 'custom_select');
INSERT INTO `crud_input_type` VALUES (27, 'chained', '1', 0, 'chained');

-- ----------------------------
-- Table structure for crud_input_validation
-- ----------------------------
DROP TABLE IF EXISTS `crud_input_validation`;
CREATE TABLE `crud_input_validation`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `validation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_able` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_input` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `call_back` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_validation` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crud_input_validation
-- ----------------------------
INSERT INTO `crud_input_validation` VALUES (1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple, chained', '', '', '');
INSERT INTO `crud_input_validation` VALUES (2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (4, 'valid_email', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (5, 'valid_emails', 'no', 'input, email', '', '', '');
INSERT INTO `crud_input_validation` VALUES (6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex');
INSERT INTO `crud_input_validation` VALUES (7, 'decimal', 'no', 'input, number, text, select', '', '', '');
INSERT INTO `crud_input_validation` VALUES (8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list');
INSERT INTO `crud_input_validation` VALUES (9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric');
INSERT INTO `crud_input_validation` VALUES (13, 'valid_url', 'no', 'input, text', '', '', '');
INSERT INTO `crud_input_validation` VALUES (14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', '');
INSERT INTO `crud_input_validation` VALUES (15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', '');
INSERT INTO `crud_input_validation` VALUES (17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric');
INSERT INTO `crud_input_validation` VALUES (22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', '');
INSERT INTO `crud_input_validation` VALUES (23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' ');
INSERT INTO `crud_input_validation` VALUES (25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' ');
INSERT INTO `crud_input_validation` VALUES (26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (27, 'alpha_dash', 'no', 'input, text', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (28, 'integer', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores');
INSERT INTO `crud_input_validation` VALUES (30, 'is_natural', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', '');
INSERT INTO `crud_input_validation` VALUES (32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric');
INSERT INTO `crud_input_validation` VALUES (36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value');
INSERT INTO `crud_input_validation` VALUES (37, 'valid_ip', 'no', 'input, text', '', 'no', '');

-- ----------------------------
-- Table structure for dashboard
-- ----------------------------
DROP TABLE IF EXISTS `dashboard`;
CREATE TABLE `dashboard`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form
-- ----------------------------

-- ----------------------------
-- Table structure for form_custom_attribute
-- ----------------------------
DROP TABLE IF EXISTS `form_custom_attribute`;
CREATE TABLE `form_custom_attribute`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int NOT NULL,
  `form_id` int NOT NULL,
  `attribute_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attribute_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_custom_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for form_custom_option
-- ----------------------------
DROP TABLE IF EXISTS `form_custom_option`;
CREATE TABLE `form_custom_option`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int NOT NULL,
  `form_id` int NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_label` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_custom_option
-- ----------------------------

-- ----------------------------
-- Table structure for form_field
-- ----------------------------
DROP TABLE IF EXISTS `form_field`;
CREATE TABLE `form_field`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` int NOT NULL,
  `sort` int NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placeholder` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `show_detail_page` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_column` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `auto_generate_help_block` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `help_block` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_field
-- ----------------------------

-- ----------------------------
-- Table structure for form_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `form_field_validation`;
CREATE TABLE `form_field_validation`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_field_id` int NOT NULL,
  `form_id` int NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_field_validation
-- ----------------------------

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 0, '6E350720A069C6118D62A0177D6612E1', 0, 0, 0, NULL, '2022-07-15 03:32:53');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for mailblastpandan
-- ----------------------------
DROP TABLE IF EXISTS `mailblastpandan`;
CREATE TABLE `mailblastpandan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `subrek` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 634 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mailblastpandan
-- ----------------------------
INSERT INTO `mailblastpandan` VALUES (1, 'adityayusuf17@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (8, 'iwan@indraco.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (14, 'newbaligoo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (15, 'jeremybryan49@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (16, 'limantorodessy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (17, 'aaron3409gt@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (18, 'budi08_08@me.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (19, 'citrach2611@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (21, 'cs.indraco@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (22, 'sharleenkang@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (24, 'alvinreynaldi40@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (25, 'linda.huang.2277@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (26, 'nayla.salsabila00@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (27, 'christopherandrew2000@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (28, 'benjamin.nathanael13@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (29, 'fendy.kimbum@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (30, 'effendyhenry21@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (31, 'marvin_arsenal@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (33, 'faishalfarisy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (34, 'havaramedia@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (35, 'mindianatta@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (36, 'elita.new.ovina@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (37, 'satriobangsawanxaverius@gmai.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (44, 'adrianhm2514@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (45, 'monicayenny87@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (46, 'faaizmzk17@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (47, 'dickypratama2375@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (48, 'jessicasanjaya@hotmail.com', NULL, 'belum', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (49, 'feelia_sanjaya@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (50, 'christian_andre45@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (54, 'yuyuzeheru5197@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (55, 'angelinecanggih12@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (56, 'Sebilrus@gmail.com', NULL, 'belum', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (57, 'designbycore@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (58, 'scout_proo@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (59, 'mon.cyrena@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (60, 'hervidng@gmail.com', NULL, 'belum', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (61, 'babysiomay@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (62, 'limpopo1684@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (63, 'sellakumalasari84@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (64, 'mopiko34@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (65, 'marianathasia@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (66, 'handrylukito@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (67, 'nesyarhenatainq@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (68, 'thomasaryaprabutyassono@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (69, 'octavianusbryan@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (72, 'belongstovanessa@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (73, 'moch.riyanbudiarta44@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (74, 'lila.sukendy@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (75, 'edwinwijayas13@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (76, 'ajiebabaz@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (78, 'christiandre45@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (79, 'lovelybartender88@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (82, 'bryanalexx@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (84, 'ariiqmuhtadeebillah@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (85, 'kelvin_scorpio91@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (86, 'etza04@rocketmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (87, 'achmadmirzayakusa@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (89, 'syafiussholih2@gmail', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (91, 'ndul_tea@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (92, 'michaeltedjokumolo@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (93, 'ribkabos@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (95, 'defric15579@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (96, 'svenlynn@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (97, 'evans_rahmat@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (99, 'isnfls@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (100, 'kddamajanti@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (101, 'jefriebox@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (102, 'chvenirosita@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (103, 'kevinvariuz@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (104, 'yw250376@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (105, 'yunitak0206@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (106, 'prakosow8012@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (107, 'warehandoko@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (108, 'dave@candogoods.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (109, 'valencialie130@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (110, 'richard96s@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (111, 'lola_popzzz@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (112, 'agung406ms@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (115, 'ray.leonardi92@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (118, 'meita.marhaeni23@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (120, 'jaggergg1@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (121, 'framlezmage@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (123, 'anzha@rexlineengineering.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (124, 'liestanley95@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (125, 'stanleyhalim95@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (126, 'billyp_95@yahoo.co.id', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (127, 'duamitrajadijayacv@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (128, 'sipiu_ng@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (129, 'bryantkioshi07@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (130, 'hwanseyo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (131, 'jimmy.andreawan.s@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (132, 'lukitolucy@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (133, 'michaeltedjokumolo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (134, 'rlnndrd20@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (136, 'yzkielchien@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (137, 'ikurjar@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (139, 'nabila.aliya97@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (140, 'noranadya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (141, 'benyfirman@kansasid.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (142, 'reeariiaa@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (143, 'agunglenggartono@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (144, 'sachiko.kwee@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (145, 'davidtanujaya17@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (146, 'karyn_luna@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (147, 'jasonadityapurnama@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (148, 'yanagisawa@parin.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (149, 'andrewjuliant1983@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (150, 'miftahuls13@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (151, 'games.id26@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (152, 'Vindyhartanto@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (153, 'Peterkenzio@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (154, 'rhartanto03@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (155, 'budi08_08@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (156, 'edwhinphotography@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (157, 'renaldosant11@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (158, 'ronny.tatagata@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (159, 'webdevahm171@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (162, 'henrianto@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (163, 'sherynyudisaputraa@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (164, 'marvellaagatha@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (165, 'b12170052@john.petra.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (166, 'klc11081999@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (167, 'gracielabahtiar@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (169, 'wmuliawan07@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (170, 'frangky.effendy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (171, 'rudykristian20@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (173, 'mrdanz01@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (174, 'danang.zardy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (175, 'nadiaputripasca@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (177, 'michael.francesco12@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (178, 'irmo.nuut@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (179, 'tjandraproperty@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (180, 'edric.sugiharto@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (181, 'vinz77@salim-group.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (182, 'gendut12@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (184, 'astridnoviany@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (185, 'allen.christian1289@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (186, 'jonathanbima107@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (187, 'pongtuluran.na@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (188, 'hendrosutikno@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (190, 'jfaminindo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (191, 'Jlifewireless@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (192, 'wifehug@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (195, 'hughesjoshuat@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (196, 'zaenhyachmad@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (198, 'lexvun8921@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (199, 'benedict.dhiaze.jo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (200, 'dikarahma667@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (201, 'mifta13@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (203, 'vcent_tanjung@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (204, 'iamtheo@live.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (205, 'vanessaevaniaa@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (206, 'zefa.jazz@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (207, 'liem.ingelin@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (208, 'michelleharsonooo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (209, 'tsuroyya18@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (210, 'june14nizz@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (211, 'aureliachia22@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (212, 'anthonykelvinn@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (213, 'ujicobaa33@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (214, 'marco@indraco.com', 'Marco', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (215, 'pristine@indraco.com', 'Pristine', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (217, 'design@indraco.com', 'Endho', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (218, 'andry@indraco.com', 'Andry', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (219, 'adi@indraco.com', 'Adi', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (220, 'ivansantoso.priv@gmail.com', 'Ivan', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (221, 'mh@indraco.com', 'MH', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (222, 'htd@indraco.com', 'HTD', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (223, 'jovita.jims@chilibeli.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (224, 'pichi@chilibeli.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (225, 'teguh.riyanto@chilibeli.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (227, 'paulushartono88@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (229, 'albertusratulangi@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (230, 'f.lukito333@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (231, 'mardia.sulaksana@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (232, 'michelle.tupamahu@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (234, 'art.bdm2@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (235, 'ajien77@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (237, 'carnation_helga@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (238, 'caseychandrawijaya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (239, 'nicolasmono@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (240, 'vyco_99@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (241, 'sansan17surabaya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (242, 'japanese_pig070585@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (243, 'antoniwiyono@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (244, 'rafaelina.fip@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (245, 'muliawanprabawa@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (246, 'budionomedian@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (247, 'andi.abdunnafie@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (248, 'andinafie@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (249, 'volare_enterprise@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (250, 'matchuang@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (256, 'audrey.channitanda@ehl.ch', 'Audrey', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (262, 'yoggi.supresso@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (263, 'risa@indraco.com', 'Risa Gina IJP', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (264, 'heti@indraco.com', 'Heti Wulan', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (265, 'fatik@indraco.com', 'admin pak naryo IJP', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (266, 'edwin@indraco.com', 'Edwin purchasing IJP', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (267, 'amin@indraco.com', 'Amin IJP', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (268, 'billy@indraco.com', 'Billy', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (269, 'edp@indraco.com', 'edp', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (270, 'farid@indraco.com', 'farid', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (271, 'fenny@indraco.com', 'fenny', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (272, 'fera@indraco.com', 'fera', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (273, 'finance@indraco.com', 'yovita', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (274, 'iso@indraco.com', 'iso', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (275, 'johan@indraco.com', 'johan', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (276, 'lukis@indraco.com', 'lukis', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (277, 'marcom@indraco.com', 'marcom', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (278, 'nining@indraco.com', 'nining', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (279, 'richard@indraco.com', 'richard', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (280, 'rosa@indraco.com', 'rosa', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (281, 'rdi_legal@indraco.com', 'rdi legal', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (282, 'recruitment@indraco.com', 'recruitment', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (283, 'fat@indraco.com', 'fat', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (284, 'robert@indraco.com', 'robert', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (285, 'stefian@indraco.com', 'stefian', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (286, 'umar@indraco.com', 'umar', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (287, 'yulian@indraco.com', 'yulian', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (288, 'rika@indraco.com', 'rika', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (289, 'sherly@indraco.com', 'sherly', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (290, 'sjeni@indraco.com', 'sjeni', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (291, 'agam@indraco.com', 'agam', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (292, 'puguh@indraco.com', 'puguh', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (293, 'iso22000@indraco.com', 'adhit', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (294, 'budi@indraco.com', 'budi', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (298, 'djoni@indraco.com', 'djoni', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (300, 'kusmanto@indraco.com', 'kusmanto', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (301, 'merry@indraco.com', 'merry', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (302, 'nurul@indraco.com', 'nurul', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (303, 'kartika@indraco.com', 'kartika', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (304, 'lenny@indraco.com', 'lenny', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (305, 'richo@indraco.com', 'richo', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (306, 'lucky@indraco.com', 'lucky', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (307, 'devita@indraco.com', 'devita', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (308, 'lohot@indraco.com', 'lohot', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (310, 'bagiyono@indraco.com', 'bagiyono', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (311, 'salim@indraco.com', 'salim', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (312, 'zaini@indraco.com', 'zaini', 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (313, 'maya@indraco.com', 'maya', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (314, 'anggreani@indraco.com', 'anggreani', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (315, 'devi@indraco.com', 'devi', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (316, 'jois@indraco.com', 'jois', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (317, 'kartika.sari@indraco.com', 'kartika', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (318, 'tere@indraco.com', 'tere', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (319, 'tiara@indraco.com', 'tiara', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (321, 'sugiarto@indraco.com', 'sugiarto', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (322, 'mashudi@indraco.com', 'mashudi', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (326, 'rahul@globalwearsolutions.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (327, 'tanadiarts@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (328, 'sanjaya.gabriella@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (329, 'meitasanti@unesa.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (330, 'satiningsih@unesa.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (334, 'gianto@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (335, 'alfianto@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (336, 'leny.yosefin06@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (337, 'bastianvaza@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (339, 'agungpp91@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (340, 'ifb.wijaya@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (341, 'mimiwijaya@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (342, 'candlespirit@live.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (343, 'jezz_wong@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (344, 'dedysidarta@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (347, 'claytondavissunarto66@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (348, 'julithe81@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (350, 'renace3772@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (351, 'giovanilie@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (352, 'rudifransmila@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (353, 'tandhiat@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (354, 'verlyn.anggono85@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (355, 'winderjem@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (356, 'marsin85@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (357, 'adit.chan81@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (358, 'sugengharianto@unesa.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (360, 'pandangarden.afb@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (361, 'agungdwilaksono15@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (362, 'usewigarbayu@gmail.com', 'Yusuf Aby', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (366, 'agung.murfatiaji88@gmail.com', 'Agung', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (367, 'daiweidong11@gmail.com', 'Wei Dong', 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (371, 'erichhartawan32@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (372, 'mlaurenshia@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (373, 'mohprobo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (375, 'edwardwitjahya@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (376, 'sintaswastika@ub.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (377, 'firmanang.id@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (378, 'marcella861015@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (379, 'jessalukito05@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (380, 'tetty@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (381, '.bobbykito@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (382, 'gionolantas@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (384, 'aria_gbu@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (385, 'ronald_prajogo@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (386, 'felixricardot@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (387, 'kecoaksakti@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (388, 'bagusbag68@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (391, 'ezra.a.iskandar@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (392, 'muhamahadi@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (393, 'vein73aditya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (394, 'kazandu@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (395, 'daniel.agustinus96@gmail.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (396, 'attartanjung@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (397, 'tonysetyabudi@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (398, 'seafoodfactory.idn@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (399, 'khanissatya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (400, 'dbudiman93@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (401, 'adelita.nirwana01@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (402, 'queennugraha@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (403, 'raisay39@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (404, 'syahliaekah17@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (405, 'samnsamon27@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (406, 'artworksd3sign@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (407, 'lvdkbali@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (408, 'hendrysoekamtos@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (409, 'josiarome@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (410, 'ronaldisantosowidjaja@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (411, 'yoanaarina@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (413, 'tatangw@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (415, 'randyliem.gms@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (416, 'k_santoso@rocketmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (417, 'gocherlie@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (418, 'h.suwignyo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (420, 'rheyasteria@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (421, 'jannaparamitha@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (422, 'gvalentina@student.ciputra.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (423, 'dewi03andyni@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (424, 'mercurius.bima@icloud.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (425, 'han.sumarto@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (426, 'eric838@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (427, 'aditya.saputro@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (428, 'hendrosutikno@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (429, 'fathisalam13@yahoo.com', NULL, 'sudah', 'unsubscribed');
INSERT INTO `mailblastpandan` VALUES (430, 'kohcayla@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (431, 'philip.dewanto@mdc.sch.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (432, 'nenny.sulistyawati@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (433, 'ratih.peilubis@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (434, 'fitri.gajahmadastone@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (436, 'randy_funnys@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (437, 'sujanto_2000@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (438, 'j3cenadi@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (439, 'yohanespaulusiwan@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (440, 'steve51092@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (441, 'yochungie@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (443, 'hana@yahoo.co.jp', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (444, 'hana.ooo@yahoo.co.jp', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (445, 'yenny.crystal@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (446, 'altafyuskar2009@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (447, 'zackfir11@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (449, 'ricky.bastian@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (451, 'dariaigoshina@mail.ru', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (454, 'willyantonygunawan@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (455, 'wongsomw@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (456, 'teguh.mariani@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (457, 'siadyhans@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (458, 'serendipityinterior@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (459, 'farehaeva95@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (460, 'udin.donzello@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (461, 'sipormio86@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (462, 'ciputria7@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (463, 'akbarindo91@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (464, 'william.purba616@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (465, 'lukmanyugo6@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (466, 'andi.abadi@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (468, 'leonardsaputra@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (469, 'art131984@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (470, 'Cahyodiman0901@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (474, 'enricosinjaya08@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (478, 'heny_indahwati2@manulife.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (479, 'levy_limando@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (481, 'smrental.sby@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (482, 'v3_oas@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (483, 'widyatjandra8395@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (484, 'cutezgirl@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (485, 'andreyzaj1995@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (487, 'jessicaardelia95@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (488, 'emmy_ie86@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (489, 'Jess_scarlet@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (490, 'sinjoelf@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (492, 'wildon_ding@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (493, 'bobmulyate@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (495, 'donnakharisma21@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (496, 'davidmalelak@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (497, 'asgianshyndi1408@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (498, 'dianaanggraenie@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (499, 'widyatjandra28272@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (500, 'vivi.ariati@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (501, 'whereeevinnn@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (504, 'andry.mul@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (507, 'josephinehidajatno@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (508, 'kimiyana01@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (509, 'tankezia44@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (510, 'bordirkarangempat@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (511, 'justinchriskoko@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (512, 'suryanto.soemardi@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (513, 'noviadewantoro@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (514, 'evangeline.ipik@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (515, 'michaelandrianowijaya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (516, 'sammkris@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (517, 'dikasultan11@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (518, 'andrew.angelo@live.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (519, 'elisasoenjoto26@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (521, 'gmsemmy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (524, 'Lilis.Prayugo@ap.jll.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (525, 'm.ihdadzulfikar@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (526, 'aditya.saputro@gmaill.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (527, 'kristinton8@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (528, 'octavianus812@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (529, 'wtanjaya06@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (530, 'tokoterangsby@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (531, 'valdeq13@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (532, 'mizpasih@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (533, 'anlyculun@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (534, 'rafaellovindra0405@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (535, 'mlino@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (536, 'lundy_88@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (537, 'allaboutme.jo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (538, 'sgi.webdev@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (539, 'Rayoc55@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (540, 'alvinakmalrr@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (541, 'akbarriskihbb@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (542, 'meylinda_palikt@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (543, 'junichitaira@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (544, 'Garj_garjito@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (545, 'hafi009@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (546, 'hadi9900@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (547, 'rosandy.rendy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (548, 'hadifoertianto@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (549, 'agussanetyo@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (550, 'windyrizqia.asd@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (551, 'yusufprastya16@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (552, 'imanuelzin@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (553, 'albertkooswandi@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (554, 'dwinugrohojuanda@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (555, 'acwismantono@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (556, 'awbclassic@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (557, 'felixcentyono96@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (558, 'shandyparama@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (559, 'florenciatiosie@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (560, 'ms.merosa@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (562, 'randliemgms@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (563, 'yanti.iik@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (564, 'ekopkpp@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (565, 'safitrimmm06@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (566, 'ivanproplayer@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (567, 'nanoe_pink@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (568, 'lorryjuniarisca@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (569, 'sheilenwei@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (570, 'fellycia@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (571, 'jackysumargo89@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (572, 'glen..kalensang.gk@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (573, 'indrabt@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (574, 'glennkal3107@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (575, 'anithakathleen0607@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (576, 'ivansuryono@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (577, 'sugeng.hariyanto.9999@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (578, 'rudirichardo01@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (579, 'sisinam@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (581, 'aoalove0604@naver.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (582, 'fly2303@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (583, 'zie120@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (586, 'mmaster080@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (587, 'ferian@alam-dianraya.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (588, 'ferian_lee@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (589, 'ferian_lee@cipiro@yahoo.com.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (591, 'ferryimam@hotmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (593, 'raraa.simple@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (594, 'juenlan90@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (595, 'nicholashendrowijaya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (596, 'mfauzanpro23@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (597, 'david.willy.wijaya@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (598, 'focxymax@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (600, 'fanny.sutanto@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (601, 'fannylovesjesus@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (602, 'teofani.sita@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (603, 'junko.alessandro@ciputra.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (604, 'junaedisantoso26@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (605, 'yuhana.sr@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (606, 'meshachcreativehouse@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (607, 'andriseptianto3996@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (608, 'naoko0127@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (609, 'dav83ek2002@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (610, 'lukassiburian@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (611, 'dupanusantara@ymail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (612, 'jlarissa@student.uc.ac.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (613, 'depotaviptc@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (614, 'fritasoc@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (615, 'ivan@indraco.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (616, 'Marlynanastasi@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (617, 'holy_viyse@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (618, 'lubydjam08@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (619, 'nuelaliasgarafox@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (620, 'aliciakosasihh@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (621, 'angelicaputri39@yahoo.co.id', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (622, 'mochammadvanda@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (623, 'leonardogozali666@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (624, 'randy_funnystourtravel@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (625, 'hilmanyusron@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (626, 'mirna.santoso@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (627, 'andreanta_halim@yahoo.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (628, 'jokomojosari@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (629, 'edhityaerma91@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (630, 'mikhaelcowandy@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (631, 'agus@indraco.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (632, 'as.sgiworld@gmail.com', NULL, 'sudah', 'subscribed');
INSERT INTO `mailblastpandan` VALUES (633, 'aldy.indraco@gmail.com', NULL, 'sudah', 'subscribed');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_color` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int NOT NULL,
  `parent` int NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_type_id` int NOT NULL,
  `active` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'MAIN NAVIGATION', 'label', '', '{admin_url}/dashboard', 1, 0, '', 1, 1);
INSERT INTO `menu` VALUES (2, 'Dashboard', 'menu', '', '{admin_url}/dashboard', 2, 0, 'fa-dashboard', 1, 1);
INSERT INTO `menu` VALUES (3, 'CRUD Builder', 'menu', '', '{admin_url}/crud', 3, 0, 'fa-table', 1, 1);
INSERT INTO `menu` VALUES (4, 'API Builder', 'menu', '', '{admin_url}/rest', 4, 0, 'fa-code', 1, 1);
INSERT INTO `menu` VALUES (5, 'Page Builder', 'menu', '', '{admin_url}/page', 5, 0, 'fa-file-o', 1, 1);
INSERT INTO `menu` VALUES (6, 'Form Builder', 'menu', '', '{admin_url}/form', 6, 0, 'fa-newspaper-o', 1, 1);
INSERT INTO `menu` VALUES (7, 'Blog', 'menu', '', '{admin_url}/blog', 7, 0, 'fa-file-text-o', 1, 1);
INSERT INTO `menu` VALUES (8, 'Menu', 'menu', '', '{admin_url}/menu', 8, 0, 'fa-bars', 1, 1);
INSERT INTO `menu` VALUES (9, 'Auth', 'menu', '', '', 9, 0, 'fa-shield', 1, 1);
INSERT INTO `menu` VALUES (10, 'User', 'menu', '', '{admin_url}/user', 10, 9, '', 1, 1);
INSERT INTO `menu` VALUES (11, 'Groups', 'menu', '', '{admin_url}/group', 11, 9, '', 1, 1);
INSERT INTO `menu` VALUES (12, 'Access', 'menu', '', '{admin_url}/access', 12, 9, '', 1, 1);
INSERT INTO `menu` VALUES (13, 'Permission', 'menu', '', '{admin_url}/permission', 13, 9, '', 1, 1);
INSERT INTO `menu` VALUES (14, 'API Keys', 'menu', '', '{admin_url}/keys', 14, 9, '', 1, 1);
INSERT INTO `menu` VALUES (15, 'Extension', 'menu', '', '{admin_url}/extension', 15, 0, 'fa-puzzle-piece', 1, 1);
INSERT INTO `menu` VALUES (16, 'Database', 'menu', '', '{admin_url}/database', 16, 0, 'fa-database', 1, 1);
INSERT INTO `menu` VALUES (17, 'OTHER', 'label', '', '', 17, 0, '', 1, 1);
INSERT INTO `menu` VALUES (18, 'Settings', 'menu', 'text-red', '{admin_url}/setting', 18, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (19, 'Web Documentation', 'menu', 'text-blue', '{admin_url}/doc/web', 19, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (20, 'API Documentation', 'menu', 'text-yellow', '{admin_url}/doc/api', 20, 0, 'fa-circle-o', 1, 1);
INSERT INTO `menu` VALUES (21, 'Home', 'menu', '', '/', 1, 0, '', 2, 1);
INSERT INTO `menu` VALUES (22, 'Blog', 'menu', '', 'blog', 4, 0, '', 2, 1);
INSERT INTO `menu` VALUES (23, 'Dashboard', 'menu', '', 'administrator/dashboard', 5, 0, '', 2, 1);
INSERT INTO `menu` VALUES (24, 'Category', 'menu', 'default', 'administrator/tb_category', 23, 0, 'fa-database', 1, 1);
INSERT INTO `menu` VALUES (25, 'Customers', 'menu', 'default', 'administrator/tb_customers', 24, 0, 'fa-users', 1, 1);
INSERT INTO `menu` VALUES (26, 'Delivery', 'menu', 'default', 'administrator/tb_delivery', 25, 0, 'fa-car', 1, 1);
INSERT INTO `menu` VALUES (27, 'Gallery', 'menu', 'default', 'administrator/tb_gallery', 26, 0, 'fa-photo', 1, 1);
INSERT INTO `menu` VALUES (28, 'Menu', 'menu', 'default', 'administrator/tb_menu', 27, 0, 'fa-cutlery', 1, 1);
INSERT INTO `menu` VALUES (29, 'Menu Po', 'menu', 'default', 'administrator/tb_menu_po', 28, 0, 'fa-cutlery', 1, 1);
INSERT INTO `menu` VALUES (30, 'Order', 'menu', 'default', 'administrator/tb_order', 29, 0, 'fa-reorder', 1, 1);
INSERT INTO `menu` VALUES (31, 'Preorder', 'menu', 'default', 'administrator/tb_preorder', 30, 0, 'fa-reorder', 1, 1);
INSERT INTO `menu` VALUES (32, 'Reservation', 'menu', 'default', 'administrator/tb_reservation', 31, 0, 'fa-headphones', 1, 1);
INSERT INTO `menu` VALUES (33, 'Takeaway', 'menu', 'default', 'administrator/tb_takeaway', 32, 0, 'fa-home', 1, 1);
INSERT INTO `menu` VALUES (34, 'Visitlog Page', 'menu', 'default', 'administrator/tb_visitlog_page', 33, 0, 'fa-sticky-note-o', 1, 1);
INSERT INTO `menu` VALUES (35, 'Visitorlog', 'menu', 'default', 'administrator/tb_visitorlog', 34, 0, 'fa-clone', 1, 1);

-- ----------------------------
-- Table structure for menu_type
-- ----------------------------
DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_type
-- ----------------------------
INSERT INTO `menu_type` VALUES (1, 'side menu', NULL);
INSERT INTO `menu_type` VALUES (2, 'top menu', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `version` bigint NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (20);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `read` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fresh_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------

-- ----------------------------
-- Table structure for page_block_element
-- ----------------------------
DROP TABLE IF EXISTS `page_block_element`;
CREATE TABLE `page_block_element`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_preview` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `block_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_block_element
-- ----------------------------

-- ----------------------------
-- Table structure for reminder
-- ----------------------------
DROP TABLE IF EXISTS `reminder`;
CREATE TABLE `reminder`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `receipent_custom_query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `receipent_department` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `primary_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `repeat_frequency` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receipent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder
-- ----------------------------

-- ----------------------------
-- Table structure for reminder_condition
-- ----------------------------
DROP TABLE IF EXISTS `reminder_condition`;
CREATE TABLE `reminder_condition`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cond_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_operator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cond_logic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'AND',
  `reminder_id` int NOT NULL,
  `group_id` int NULL DEFAULT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder_condition
-- ----------------------------

-- ----------------------------
-- Table structure for reminder_cron
-- ----------------------------
DROP TABLE IF EXISTS `reminder_cron`;
CREATE TABLE `reminder_cron`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `reminder_id` int NOT NULL,
  `reff_id` int NOT NULL,
  `reff_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminder_cron
-- ----------------------------

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `primary_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_api_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x_token` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest
-- ----------------------------

-- ----------------------------
-- Table structure for rest_field
-- ----------------------------
DROP TABLE IF EXISTS `rest_field`;
CREATE TABLE `rest_field`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rest_id` int NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_column` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_add_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_update_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_detail_api` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relation_label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_field
-- ----------------------------

-- ----------------------------
-- Table structure for rest_field_validation
-- ----------------------------
DROP TABLE IF EXISTS `rest_field_validation`;
CREATE TABLE `rest_field_validation`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rest_field_id` int NOT NULL,
  `rest_id` int NOT NULL,
  `validation_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_field_validation
-- ----------------------------

-- ----------------------------
-- Table structure for rest_input_type
-- ----------------------------
DROP TABLE IF EXISTS `rest_input_type`;
CREATE TABLE `rest_input_type`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `validation_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rest_input_type
-- ----------------------------
INSERT INTO `rest_input_type` VALUES (1, 'input', '0', 'input');
INSERT INTO `rest_input_type` VALUES (2, 'timestamp', '0', 'timestamp');
INSERT INTO `rest_input_type` VALUES (3, 'file', '0', 'file');
INSERT INTO `rest_input_type` VALUES (4, 'select', '1', 'select');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `categoryName` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuId` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categoryId`(`categoryId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `categoryId_2`(`categoryId` ASC) USING BTREE,
  INDEX `categoryName`(`categoryName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '1', 'snacks', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\"]}', '2021-04-21 00:46:33');
INSERT INTO `tb_category` VALUES (2, '2', 'dessert', '{\"id\":[\"6\",\"7\",\"8\",\"9\",\"10\"]}', '2021-03-08 00:41:00');
INSERT INTO `tb_category` VALUES (3, '3', 'sambal', '{\"id\":[\"11\",\"12\",\"13\"]}', '2021-03-04 02:31:39');
INSERT INTO `tb_category` VALUES (4, '4', 'rice', '{\"id\":[\"14\",\"15\",\"16\"]}', '2021-03-04 21:16:09');
INSERT INTO `tb_category` VALUES (5, '5', 'main course', '{\"id\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\"]}', '2021-03-04 21:17:19');
INSERT INTO `tb_category` VALUES (6, '6', 'soup', '{\"id\":[\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\"]}', '2021-03-04 21:12:54');
INSERT INTO `tb_category` VALUES (7, '7', 'appetizer', '{\"id\":[\"37\",\"38\",\"39\",\"40\",\"41\",\"42\"]}', '2021-03-04 21:17:19');
INSERT INTO `tb_category` VALUES (8, '8', 'rice bowl', '{\"id\":[\"43\",\"44\",\"45\",\"46\"]}', '2021-03-04 20:57:41');
INSERT INTO `tb_category` VALUES (9, '9', 'menu bali', '', '2021-04-13 03:38:11');
INSERT INTO `tb_category` VALUES (11, '10', 'menu ivan', '', '2021-04-14 01:21:43');
INSERT INTO `tb_category` VALUES (12, '11', 'menu masakan medan', '{\"id\":[\"50\",\"51\",\"52\",\"53\"]}', '2021-04-21 00:20:46');

-- ----------------------------
-- Table structure for tb_customers
-- ----------------------------
DROP TABLE IF EXISTS `tb_customers`;
CREATE TABLE `tb_customers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerUsername` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerEmail` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerAddress` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerPhone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customerPassword` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customerId`(`customerId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `customerId_2`(`customerId` ASC) USING BTREE,
  INDEX `customerName`(`customerName` ASC) USING BTREE,
  INDEX `customerUsername`(`customerUsername` ASC) USING BTREE,
  INDEX `customerEmail`(`customerEmail` ASC) USING BTREE,
  INDEX `customerPhone`(`customerPhone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_customers
-- ----------------------------
INSERT INTO `tb_customers` VALUES (1, '1', 'nanda messis', 'jojo1', 'yamaroni8@gmail.com', 'Jl Benjol no 10 ', '089123', '8a9bcf1e51e812d0af8465a8dbcc9f741064bf0af3b3d08e6b0246437c19f7fb', '2021-04-19 13:03:47');
INSERT INTO `tb_customers` VALUES (2, '3', 'Nanda Aditya Kusuma Nuraga', 'jojo3', 'nandamessi10@gmail.com', 'Perumahan Graha Suryanata K1-07 RT 1 RW 5', '085934547856', 'c7c618857c76bda49daf3fec259cc86d65645a52d5f1f87892121e4a5962dc70', '2021-04-06 14:46:00');
INSERT INTO `tb_customers` VALUES (3, '4', 'coba lagi', 'coba', 'yamaroni8@gmail.com', 'jl petemon kuburan no 31', '123456789', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2021-04-19 12:02:19');
INSERT INTO `tb_customers` VALUES (4, '5', 'sdf', 'fsf', 'webdevahm171@gmail.com', '333a orchard road #03-11 mandarin gallery', '0816544645', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', '2021-04-19 12:02:35');
INSERT INTO `tb_customers` VALUES (5, '6', 'agus sudiyanto', 'agus', 'as.sgiworld@gmail.com', 'pakuwon indah, the mansion pf4 no. 38', '08155101221', 'f52c8acbbbb7bad1f01da4d956bbecf38f898ec21aa8eb18bf03a923ec1cdc0d', '2021-05-23 16:02:22');
INSERT INTO `tb_customers` VALUES (6, '7', 'trial nama', 'trial', 'trialnama@gmail.com', 'Jl Sepanjang', '0987654321', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2021-05-23 14:10:39');
INSERT INTO `tb_customers` VALUES (7, '8', 'andry kurniawan', 'Andry', 'andrykhoe@gmail.com', 'MCG B4 No 34', '08123251838', 'a643a1be77a27f4073d14c67b22e852afb2c994e7686e6277cf3bd482227c435', '2021-05-23 15:23:48');
INSERT INTO `tb_customers` VALUES (8, '9', 'adi sunandar', 'adisunandar', 'adisunandar.fnb@gmail.com', 'Babatan Mukti II Blok N 111', '081703271188', '8dae7fa62f81f77e0521789cd1e4d50bb74013c420607ba810caccaed9b99509', '2021-06-13 16:46:52');
INSERT INTO `tb_customers` VALUES (9, '10', 'hartono', 'willwins', 'hmasoen@yahoo.co.id', 'Graha famili CC 11', '085748580999', 'c67d81ea652280cd0dfbee17f5a78c2cf18334e360036f339bd971c21dd1a9ac', '2021-09-06 01:00:29');
INSERT INTO `tb_customers` VALUES (10, '11', 'agung murfatiaji', 'agung88', 'agungmurfatiaji88@gmail.com', 'Jl. Dewi Sartika Barat VII/E6', '081230139178', 'd2a6b0807aa4d74d0cf54a7628404224932953f1880834c8bf9119ab5980a8e0', '2021-11-29 03:30:04');
INSERT INTO `tb_customers` VALUES (11, '12', 'udin', 'udin', 'novicyber@gmail.com', '1337', '1337', 'e2a47d699525dfa42419623a2bfcc9a96f4b7a3da2275a720deeeeebefb03a9f', '2022-04-09 15:26:01');
INSERT INTO `tb_customers` VALUES (12, '13', 'verad', 'Verad', 'kunkiki85@gmail.com', 'Hdhhdd', '12245579', '8fee4287d78fc708fdb744464f81eb363e5207dce51c48d5ce6923f6c5372d86', '2022-04-15 19:44:17');
INSERT INTO `tb_customers` VALUES (13, '14', 'aldy ramadhan', 'Aldyramadhan', 'aldy.indraco@gmail.com', 'Pondok Sidokare Indah GG-16', '082231343808', 'f423d78b713104a723d44c24e91ea53cdd9e6da4c775d2e5f2cdd1d7e26a756e', '2022-05-23 11:31:39');
INSERT INTO `tb_customers` VALUES (14, '15', 'govgov', 'govgov', 'govgov@gmail.com', 'LOTS', '625315055', 'a4579c704f463eb54de41ed91514a7d6c9c0fe10783980e4fe1efe0d5176974c', '2022-06-16 12:09:53');
INSERT INTO `tb_customers` VALUES (15, '16', 'falah', 'Falah', 'akfahamiz1@gmail.com', 'Banyu Urip Kidul', '087852522222', 'b9ce95a9b79d69c7e76d497bfd409b1a9c19aab0916598b9d6747cba35a67f66', '2022-06-20 13:25:36');

-- ----------------------------
-- Table structure for tb_delivery
-- ----------------------------
DROP TABLE IF EXISTS `tb_delivery`;
CREATE TABLE `tb_delivery`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `deliveryId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryPhone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryDate` date NOT NULL,
  `deliveryTime` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryAddress` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryCoord` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryEmail` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryNote` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deliveryFee` int NOT NULL,
  `orderId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orderFee` int NOT NULL,
  `deliveryPayment` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `paymentStatus` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paymentDate` datetime NULL DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `deliveryId`(`deliveryId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `deliveryId_2`(`deliveryId` ASC) USING BTREE,
  INDEX `deliveryName`(`deliveryName` ASC) USING BTREE,
  INDEX `deliveryPhone`(`deliveryPhone` ASC) USING BTREE,
  INDEX `deliveryDate`(`deliveryDate` ASC) USING BTREE,
  INDEX `deliveryTime`(`deliveryTime` ASC) USING BTREE,
  INDEX `deliveryAddress`(`deliveryAddress` ASC) USING BTREE,
  INDEX `deliveryCoord`(`deliveryCoord` ASC) USING BTREE,
  INDEX `deliveryEmail`(`deliveryEmail` ASC) USING BTREE,
  INDEX `deliveryNote`(`deliveryNote` ASC) USING BTREE,
  INDEX `deliveryFee`(`deliveryFee` ASC) USING BTREE,
  INDEX `orderId`(`orderId` ASC) USING BTREE,
  INDEX `orderFee`(`orderFee` ASC) USING BTREE,
  INDEX `deliveryPayment`(`deliveryPayment` ASC) USING BTREE,
  INDEX `paymentStatus`(`paymentStatus` ASC) USING BTREE,
  INDEX `paymentDate`(`paymentDate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_delivery
-- ----------------------------
INSERT INTO `tb_delivery` VALUES (1, '1', 'trial nama', '0987654321', '2021-05-28', '16:00 - 18:00', 'jalan lontar baru, lakarsantri 60216, indonesia', '-7.288357776485441,112.66352046187069', '', 'jl sepanjang', 0, '3', 200000, NULL, '1', '2021-09-07 09:35:20', '2021-09-06 19:35:20');
INSERT INTO `tb_delivery` VALUES (2, '2', 'agus sudiyanto', '08155101221', '2021-05-28', '10:00 - 12:00', 'jalan simpang darmo permai selatan 14 51, lakarsantri 60216, indonesia', '-7.278489199999999,112.6794465', 'as.sgiworld@gmail.com', 'pakuwon indah, the mansion pf4 no. 38', 10000, '6', 20000, 'transfer', '0', NULL, '2021-05-24 17:11:04');
INSERT INTO `tb_delivery` VALUES (3, '3', 'agus sudiyanto', '08155101221', '2021-05-28', '10:00 - 12:00', 'jalan simpang darmo permai selatan 14 51, lakarsantri 60216, indonesia', '-7.278489199999999,112.6794465', 'as.sgiworld@gmail.com', 'pakuwon indah, the mansion pf4 no. 38', 10000, '7', 180000, 'transfer', '0', NULL, '2021-05-24 17:23:15');
INSERT INTO `tb_delivery` VALUES (4, '4', 'agus sudiyanto', '08155101221', '2021-05-28', '16:00 - 18:00', 'jalan lingkaran dalam, wiyung 60216, indonesia', '-7.2933794999999995,112.67524909999999', '', 'pakuwon indah, the mansion pf4 no. 38', 0, '8', 200000, 'transfer', '0', NULL, '2021-05-24 17:37:58');
INSERT INTO `tb_delivery` VALUES (5, '5', 'hartono', '085748580999', '2021-09-10', '10:00 - 12:00', 'jalan graha family selatan 3 10, dukuh pakis 60226, indonesia', '-7.299326810328953,112.69325455780678', '', 'graha famili cc 11', 10000, '16', 80000, 'transfer', '0', NULL, '2021-09-06 01:03:32');
INSERT INTO `tb_delivery` VALUES (6, '6', 'hartono', '085748580999', '2021-09-10', '10:00 - 12:00', 'jalan graha family selatan 3 10, dukuh pakis 60226, indonesia', '-7.299332041274315,112.6932330399927', 'hmasoen@yahoo.co.id', 'graha famili cc 11', 10000, '17', 80000, 'transfer', '0', NULL, '2021-09-06 01:07:17');
INSERT INTO `tb_delivery` VALUES (7, '7', 'coba order', '123456789', '2022-02-18', '16:00 - 18:00', 'jalan puncak indah lontar barat, wiyung 60227, indonesia', '-7.287933647733809,112.67736925081579', 'yamaroni8@gmail.com', 'jl bunderan ptc', 0, '18', 20000, 'transfer', '0', NULL, '2022-02-15 09:05:42');

-- ----------------------------
-- Table structure for tb_gallery
-- ----------------------------
DROP TABLE IF EXISTS `tb_gallery`;
CREATE TABLE `tb_gallery`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `galleryId` int NOT NULL,
  `galleryImg` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `galleryUrl` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `galleryId`(`galleryId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_gallery
-- ----------------------------
INSERT INTO `tb_gallery` VALUES (58, 49, 'https://pandangarden.com/img/galery/49', 'https://www.instagram.com/p/CY5b-j7tooh/', '2022-01-24 10:15:22');
INSERT INTO `tb_gallery` VALUES (59, 50, 'https://pandangarden.com/img/galery/50', 'https://www.instagram.com/p/CY-lkt8NeWX/', '2022-01-24 10:15:48');
INSERT INTO `tb_gallery` VALUES (60, 51, 'https://pandangarden.com/img/galery/51', 'https://www.instagram.com/p/CZDvKG9tzd2/', '2022-01-24 10:17:08');
INSERT INTO `tb_gallery` VALUES (61, 52, 'https://pandangarden.com/img/galery/52', 'https://www.instagram.com/p/CZVwt87tCVe/', '2022-01-31 12:16:15');
INSERT INTO `tb_gallery` VALUES (62, 53, 'https://pandangarden.com/img/galery/53', 'https://www.instagram.com/p/CZa6TVdL62l/', '2022-02-02 14:42:50');
INSERT INTO `tb_gallery` VALUES (63, 54, 'https://pandangarden.com/img/galery/54', 'https://www.instagram.com/p/CZiosbGtyfJ/', '2022-02-04 16:41:47');
INSERT INTO `tb_gallery` VALUES (64, 55, 'https://pandangarden.com/img/galery/55', 'https://www.instagram.com/p/CZnySdUKht7/', '2022-02-07 12:10:35');
INSERT INTO `tb_gallery` VALUES (65, 56, 'https://pandangarden.com/img/galery/56', 'https://www.instagram.com/p/CZvgqycKVi3/', '2022-02-22 10:23:24');
INSERT INTO `tb_gallery` VALUES (66, 57, 'https://pandangarden.com/img/galery/57', 'https://www.instagram.com/p/CZ0qQW3gVJk/', '2022-02-22 10:24:45');
INSERT INTO `tb_gallery` VALUES (67, 58, 'https://pandangarden.com/img/galery/58', 'https://www.instagram.com/p/CZ5z2gYhmpe/', '2022-02-22 10:26:43');
INSERT INTO `tb_gallery` VALUES (68, 59, 'https://pandangarden.com/img/galery/59', 'https://www.instagram.com/p/CZ9B2F4smB5/', '2022-02-22 10:27:22');
INSERT INTO `tb_gallery` VALUES (69, 60, 'https://pandangarden.com/img/galery/60', 'https://www.instagram.com/p/CZ9ItOStueo/', '2022-02-22 10:27:59');
INSERT INTO `tb_gallery` VALUES (70, 61, 'https://pandangarden.com/img/galery/61', 'https://www.instagram.com/p/CaL1ahgLGuT/', '2022-02-22 10:28:35');
INSERT INTO `tb_gallery` VALUES (71, 62, 'https://pandangarden.com/img/galery/62', 'https://www.instagram.com/p/CaTjzNEJ1oe/', '2022-02-23 17:37:09');
INSERT INTO `tb_gallery` VALUES (72, 63, 'https://pandangarden.com/img/galery/63', 'https://www.instagram.com/p/CaY7kMGtqvC/', '2022-03-08 08:34:09');
INSERT INTO `tb_gallery` VALUES (73, 64, 'https://pandangarden.com/img/galery/64', 'https://www.instagram.com/p/CabSMNoBPe7/', '2022-03-08 08:34:57');
INSERT INTO `tb_gallery` VALUES (74, 65, 'https://pandangarden.com/img/galery/65', 'https://www.instagram.com/p/Cab0gnrFOgJ/', '2022-03-08 08:35:34');
INSERT INTO `tb_gallery` VALUES (75, 66, 'https://pandangarden.com/img/galery/66', 'https://www.instagram.com/p/Cad2_VHNToq/', '2022-03-08 08:36:16');
INSERT INTO `tb_gallery` VALUES (76, 67, 'https://pandangarden.com/img/galery/67', 'https://www.instagram.com/p/CallXGArqzP/', '2022-03-08 08:36:55');
INSERT INTO `tb_gallery` VALUES (77, 68, 'https://pandangarden.com/img/galery/68', 'https://www.instagram.com/p/Caqu8trJY_t/', '2022-03-08 08:37:24');
INSERT INTO `tb_gallery` VALUES (78, 69, 'https://pandangarden.com/img/galery/69', 'https://www.instagram.com/p/Cav4iuhtJ79/', '2022-03-08 08:37:56');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `categoryId` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `goFood` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `grabFood` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `whatsapp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `menuDesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `menuPrice` int NULL DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menuId`(`menuId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `menuId_2`(`menuId` ASC) USING BTREE,
  INDEX `menuName`(`menuName` ASC) USING BTREE,
  INDEX `categoryId`(`categoryId` ASC) USING BTREE,
  INDEX `menuPrice`(`menuPrice` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (1, '1', 'lumpia goreng', 'snacks', 'https://gofood.link/a/AyyRp7y', '', '', '', 0, '2021-04-21 00:46:41');
INSERT INTO `tb_menu` VALUES (2, '2', 'risoles mayo smoked beef', 'snacks', 'https://gofood.link/a/AyyQ1sL', '', '', '', 0, '2021-04-11 20:50:17');
INSERT INTO `tb_menu` VALUES (5, '3', 'kroket ayam', 'snacks', 'https://gofood.link/a/AyyRF3L', '', '', '', 0, '2021-04-11 20:50:43');
INSERT INTO `tb_menu` VALUES (6, '4', 'risoles ayam', 'snacks', 'https://gofood.link/a/AyyR5cA', '', '', '', 0, '2021-04-11 20:50:28');
INSERT INTO `tb_menu` VALUES (7, '5', 'pastel', 'snacks', 'https://gofood.link/a/AyyRVu9', '', '', '', 0, '2021-04-11 20:50:51');
INSERT INTO `tb_menu` VALUES (8, '6', 'bubur candil', 'dessert', 'https://gofood.link/a/AyyKteN', '', '', '', 0, '2021-04-11 20:51:13');
INSERT INTO `tb_menu` VALUES (9, '7', 'es cendol', 'dessert', 'https://gofood.link/a/AyyM6Jm', '', '', '', 0, '2021-04-11 20:51:21');
INSERT INTO `tb_menu` VALUES (10, '8', 'es kelapa jelly', 'dessert', 'https://gofood.link/a/AyyKJJY', '', '', '', 0, '2021-04-11 20:51:30');
INSERT INTO `tb_menu` VALUES (11, '9', 'ronde', 'dessert', 'https://gofood.link/a/AyyLMym', '', '', '', 0, '2021-04-11 20:51:39');
INSERT INTO `tb_menu` VALUES (12, '10', 'es jagung manis', 'dessert', 'https://gofood.link/a/AyyLvBb', '', '', '', 0, '2021-04-11 20:51:48');
INSERT INTO `tb_menu` VALUES (13, '11', 'sambal hijau', 'sambal', 'https://gofood.link/a/AyyNBMA', '', '', '', 0, '2021-04-11 20:51:59');
INSERT INTO `tb_menu` VALUES (14, '12', 'sambal terasi', 'sambal', 'https://gofood.link/a/AyyP21h', '', '', '', 0, '2021-04-11 20:52:07');
INSERT INTO `tb_menu` VALUES (15, '13', 'sambal petai', 'sambal', 'https://gofood.link/a/AyyPtJY', '', '', '', 0, '2021-04-11 20:52:14');
INSERT INTO `tb_menu` VALUES (16, '14', 'nasi putih', 'rice', 'https://gofood.link/a/AyyMvF7', '', '', '', 0, '2021-04-11 20:52:24');
INSERT INTO `tb_menu` VALUES (17, '15', 'nasi merah', 'rice', 'https://gofood.link/a/AyyMLQy', '', '', '', 0, '2021-04-11 20:52:33');
INSERT INTO `tb_menu` VALUES (18, '16', 'nasi jagung', 'rice', 'https://gofood.link/a/AyyNea3', '', '', '', 0, '2021-04-11 20:52:41');
INSERT INTO `tb_menu` VALUES (19, '17', 'nasi rendang daging', 'main course', 'https://gofood.link/a/AyyEj1h', '', '', '', 0, '2021-04-11 20:52:53');
INSERT INTO `tb_menu` VALUES (20, '18', 'nasi kare ayam', 'main course', 'https://gofood.link/a/AyyEzeN', '', '', '', 0, '2021-04-11 20:53:01');
INSERT INTO `tb_menu` VALUES (21, '19', 'nasi ayam goreng laos', 'main course', 'https://gofood.link/a/AyyEUhC', '', '', '', 0, '2021-04-11 20:53:11');
INSERT INTO `tb_menu` VALUES (22, '20', 'nasi ayam geprek', 'main course', 'https://gofood.link/a/AyyGpf9', '', '', '', 0, '2021-04-11 20:53:48');
INSERT INTO `tb_menu` VALUES (23, '21', 'mie ayam jamur', 'main course', 'https://gofood.link/a/AyyHcyG', '', '', '', 0, '2021-04-11 20:54:11');
INSERT INTO `tb_menu` VALUES (24, '22', 'nasi pecel sayur', 'main course', 'https://gofood.link/a/AyyHtu1', '', '', '', 0, '2021-04-11 20:55:40');
INSERT INTO `tb_menu` VALUES (25, '23', 'nasi urap sayur', 'main course', 'https://gofood.link/a/AyyHKmG', '', '', '', 0, '2021-04-11 20:55:57');
INSERT INTO `tb_menu` VALUES (26, '24', 'nasi rames komplit', 'main course', 'https://gofood.link/a/AyyJ6vE', '', '', '', 0, '2021-04-11 20:56:10');
INSERT INTO `tb_menu` VALUES (27, '25', 'nasi jagung komplit', 'main course', 'https://gofood.link/a/AyyJr4N', '', '', '', 0, '2021-04-11 20:56:21');
INSERT INTO `tb_menu` VALUES (28, '26', 'nasi merah komplit', 'main course', 'https://gofood.link/a/xGHa3CG', '', '', '', 0, '2021-04-11 20:56:33');
INSERT INTO `tb_menu` VALUES (29, '27', 'nasi campur komplit', 'main course', 'https://gofood.link/a/AyyK8Yy', '', '', '', 0, '2021-04-11 20:56:41');
INSERT INTO `tb_menu` VALUES (30, '28', 'bubur ayam', 'main course', 'https://gofood.link/a/AyyGGnS', '', '', '', 0, '2021-04-11 20:56:50');
INSERT INTO `tb_menu` VALUES (32, '30', 'nasi gulai kambing', 'soup', 'https://gofood.link/a/Ay9Lqo5', '', '', '', 0, '2021-04-11 20:57:17');
INSERT INTO `tb_menu` VALUES (33, '31', 'nasi rawon daging', 'soup', 'https://gofood.link/a/Ay9LKmd', '', '', '', 0, '2021-04-11 20:57:29');
INSERT INTO `tb_menu` VALUES (34, '32', 'nasi soto betawi', 'soup', 'https://gofood.link/a/Ay9M9Ay', '', '', '', 0, '2021-04-11 20:57:41');
INSERT INTO `tb_menu` VALUES (35, '33', 'nasi soto ayam', 'soup', 'https://gofood.link/a/Ay9MpQh', '', '', '', 0, '2021-04-11 20:57:50');
INSERT INTO `tb_menu` VALUES (36, '34', 'nasi asem asem ayam', 'soup', 'https://gofood.link/a/Ay9MEFN', '', '', '', 0, '2021-04-11 20:58:00');
INSERT INTO `tb_menu` VALUES (37, '35', 'nasi tongseng kambing', 'soup', 'https://gofood.link/a/Ay9L8JL', '', '', '', 0, '2021-04-11 20:57:06');
INSERT INTO `tb_menu` VALUES (38, '36', 'sayur asem', 'soup', 'https://gofood.link/a/Ay9N1bC', '', '', '', 0, '2021-04-11 20:58:10');
INSERT INTO `tb_menu` VALUES (39, '37', 'tahu isi', 'appetizer', 'https://gofood.link/a/Ay9AALC', '', '', '', 0, '2021-04-11 20:58:25');
INSERT INTO `tb_menu` VALUES (40, '38', 'lumpia', 'appetizer', 'https://gofood.link/a/Ay9B7h5', '', '', '', 0, '2021-04-11 20:58:35');
INSERT INTO `tb_menu` VALUES (41, '39', 'tempe mendoan', 'appetizer', 'https://gofood.link/a/Ay9DwDN', '', '', '', 0, '2021-04-11 20:58:47');
INSERT INTO `tb_menu` VALUES (42, '40', 'bola bola goreng', 'appetizer', 'https://gofood.link/a/Ay9JPqm', '', '', '', 0, '2021-04-11 20:58:56');
INSERT INTO `tb_menu` VALUES (43, '41', 'tape roll', 'appetizer', 'https://gofood.link/a/Ay9KtvA', '', '', '', 0, '2021-04-11 20:59:06');
INSERT INTO `tb_menu` VALUES (44, '42', 'martabak pisang', 'appetizer', 'https://gofood.link/a/Ay9KLXS', '', '', '', 0, '2021-04-11 20:59:17');
INSERT INTO `tb_menu` VALUES (45, '43', 'nasi goreng rawon', 'rice bowl', 'https://gofood.link/a/Ay9k3yu', '', '', '', 0, '2021-04-12 03:05:23');
INSERT INTO `tb_menu` VALUES (46, '44', 'nasi goreng soto', 'rice bowl', 'https://gofood.link/a/Ay9jEPs', '', '', '', 0, '2021-04-12 03:05:34');
INSERT INTO `tb_menu` VALUES (47, '45', 'nasi ayam teriyaki', 'rice bowl', 'https://gofood.link/a/Ay9iPtN', '', '', '', 0, '2021-04-12 03:04:49');
INSERT INTO `tb_menu` VALUES (48, '46', 'nasi dory sambal matah', 'rice bowl', 'https://gofood.link/a/Ay9jmqy', '', '', '', 0, '2021-04-12 03:05:03');
INSERT INTO `tb_menu` VALUES (49, '47', 'mie ayam sisit sambal matah', '', 'https://gofood.link/a/AyySzWG', '', '', '', 0, '2021-04-14 18:12:23');
INSERT INTO `tb_menu` VALUES (50, '48', 'nasi ayam betutu', '', 'https://gofood.link/a/AyySj7C', '', '', '', 0, '2021-04-14 01:21:43');
INSERT INTO `tb_menu` VALUES (51, '49', 'nasi sup ayam balung', '', 'https://gofood.link/a/AyySUuC', '', '', '', 0, '2021-04-12 23:55:55');
INSERT INTO `tb_menu` VALUES (52, '50', 'lontong sayur', 'menu masakan medan', '', '', '', '', NULL, '2021-04-14 18:11:43');
INSERT INTO `tb_menu` VALUES (53, '51', 'mie ayam medan', 'menu masakan medan', '', '', '', '', NULL, '2021-04-14 18:12:55');
INSERT INTO `tb_menu` VALUES (54, '52', 'nasi goreng teri', 'menu masakan medan', '', '', '', '', NULL, '2021-04-21 00:15:03');
INSERT INTO `tb_menu` VALUES (55, '53', 'soto ayam medan', 'menu masakan medan', '', '', '', '', NULL, '2021-04-21 00:15:40');

-- ----------------------------
-- Table structure for tb_menu_po
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_po`;
CREATE TABLE `tb_menu_po`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuDesc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `menuPrice` int NULL DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menuId`(`menuId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `menuId_2`(`menuId` ASC) USING BTREE,
  INDEX `menuName`(`menuName` ASC) USING BTREE,
  INDEX `menuPrice`(`menuPrice` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_po
-- ----------------------------
INSERT INTO `tb_menu_po` VALUES (1, '1', 'nasi krengsengan ayam', '', 20000, '2021-04-07 04:47:02');
INSERT INTO `tb_menu_po` VALUES (2, '2', 'nasi kare ayam', '', 20000, '2021-04-07 04:47:30');
INSERT INTO `tb_menu_po` VALUES (3, '3', 'nasi pecel ayam', '', 20000, '2021-04-07 04:47:43');
INSERT INTO `tb_menu_po` VALUES (9, '4', 'nasi ayam bakar madu', '', 20000, '2021-04-07 04:50:52');
INSERT INTO `tb_menu_po` VALUES (10, '5', 'nasi goreng bali', '', 20000, '2021-04-12 02:58:42');
INSERT INTO `tb_menu_po` VALUES (11, '6', 'nasi ayam geprek', '', 20000, '2021-04-12 02:59:11');
INSERT INTO `tb_menu_po` VALUES (12, '7', 'nasi ayam goreng kalasan', '', 20000, '2021-04-12 02:59:57');
INSERT INTO `tb_menu_po` VALUES (13, '8', 'nasi goreng gila', '', 20000, '2021-07-04 03:39:32');
INSERT INTO `tb_menu_po` VALUES (14, '9', 'nasi dory salted egg', '', 20000, '2021-07-09 20:37:59');
INSERT INTO `tb_menu_po` VALUES (15, '10', 'nasi ayam serundeng', '', 20000, '2021-07-16 20:20:09');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orderType` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customerId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuQty` int NOT NULL,
  `menuPrice` int NOT NULL,
  `orderSubtotal` int NOT NULL,
  `orderNote` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `orderStatus` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orderExpired` date NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `orderId`(`orderId` ASC) USING BTREE,
  INDEX `orderType`(`orderType` ASC) USING BTREE,
  INDEX `customerId`(`customerId` ASC) USING BTREE,
  INDEX `menuId`(`menuId` ASC) USING BTREE,
  INDEX `menuQty`(`menuQty` ASC) USING BTREE,
  INDEX `menuPrice`(`menuPrice` ASC) USING BTREE,
  INDEX `orderSubtotal`(`orderSubtotal` ASC) USING BTREE,
  INDEX `orderNote`(`orderNote` ASC) USING BTREE,
  INDEX `orderStatus`(`orderStatus` ASC) USING BTREE,
  INDEX `orderExpired`(`orderExpired` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (1, '1', 'delivery', '6', '2', 2, 20000, 40000, '-', '0', '2021-04-22', '2021-04-19 12:06:12');
INSERT INTO `tb_order` VALUES (2, '2', 'delivery', '1', '2', 4, 20000, 80000, '-', '0', '2021-04-22', '2021-04-20 14:49:43');
INSERT INTO `tb_order` VALUES (3, '3', 'delivery', '7', '7', 10, 20000, 200000, '-', '0', '2021-05-27', '2021-05-24 17:36:07');
INSERT INTO `tb_order` VALUES (4, '4', 'pickup', '6', '7', 1, 20000, 20000, '-', '1', '2021-05-27', '2021-05-24 14:33:33');
INSERT INTO `tb_order` VALUES (5, '5', 'pickup', '6', '7', 1, 20000, 20000, '-', '1', '2021-05-27', '2021-05-24 17:03:37');
INSERT INTO `tb_order` VALUES (6, '6', 'delivery', '6', '7', 1, 20000, 20000, '-', '1', '2021-05-27', '2021-05-24 17:11:04');
INSERT INTO `tb_order` VALUES (7, '7', 'delivery', '6', '7', 9, 20000, 180000, '-', '1', '2021-05-27', '2021-05-24 17:23:15');
INSERT INTO `tb_order` VALUES (8, '8', 'delivery', '6', '7', 10, 20000, 200000, '-', '1', '2021-05-27', '2021-05-24 17:37:58');
INSERT INTO `tb_order` VALUES (9, '9', 'pickup', '6', '1', 1, 20000, 20000, '-', '1', '2021-06-03', '2021-05-30 13:43:07');
INSERT INTO `tb_order` VALUES (10, '10', 'pickup', '0', '1', 1, 20000, 20000, '-', '1', '2021-06-03', '2021-05-30 14:17:43');
INSERT INTO `tb_order` VALUES (11, '11', 'pickup', '9', '5', 1, 20000, 20000, '-', '1', '2021-06-17', '2021-06-15 15:47:18');
INSERT INTO `tb_order` VALUES (12, '12', 'pickup', '6', '5', 1, 20000, 20000, '-', '1', '2021-06-17', '2021-06-15 15:03:06');
INSERT INTO `tb_order` VALUES (13, '13', NULL, '1', '5', 5, 20000, 100000, NULL, '0', '2021-06-17', '2021-06-15 14:05:03');
INSERT INTO `tb_order` VALUES (14, '14', NULL, '4', '5', 1, 20000, 20000, NULL, '0', '2021-06-17', '2021-06-15 13:08:06');
INSERT INTO `tb_order` VALUES (15, '15', NULL, '9', '4', 1, 20000, 20000, NULL, '0', '2021-06-24', '2021-06-20 14:44:16');
INSERT INTO `tb_order` VALUES (16, '16', 'delivery', '10', '1', 4, 20000, 80000, 'ayamnya dada / paha aja ya, jangan yg lain...tq', '1', '2021-09-09', '2021-09-06 01:03:32');
INSERT INTO `tb_order` VALUES (17, '17', 'delivery', '10', '1', 4, 20000, 80000, 'ayamnya dada / paha aja ya...jangan yg lain misal sayap...tq', '1', '2021-09-09', '2021-09-06 01:07:17');
INSERT INTO `tb_order` VALUES (18, '18', 'delivery', '0', '1', 1, 20000, 20000, '-', '1', '2022-02-17', '2022-02-15 09:05:42');
INSERT INTO `tb_order` VALUES (19, '19', 'pickup', '9', '2', 1, 20000, 20000, '-', '1', '2022-05-26', '2022-05-23 14:09:31');
INSERT INTO `tb_order` VALUES (20, '20', 'pickup', '14', '2', 1, 20000, 20000, 'testing oleh team webdev indraco', '1', '2022-05-26', '2022-05-23 11:35:02');
INSERT INTO `tb_order` VALUES (21, '21', NULL, '9', '2', 1, 20000, 20000, NULL, '0', '2022-05-26', '2022-05-23 14:37:08');
INSERT INTO `tb_order` VALUES (22, '22', 'pickup', '16', '6', 2, 20000, 40000, '-', '0', '2022-06-23', '2022-06-20 13:28:33');

-- ----------------------------
-- Table structure for tb_preorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_preorder`;
CREATE TABLE `tb_preorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `preorderId` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menuId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `preorderStart` date NOT NULL,
  `preorderEnd` date NOT NULL,
  `preorderStatus` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `preorderId`(`preorderId` ASC) USING BTREE,
  INDEX `menuId`(`menuId` ASC) USING BTREE,
  INDEX `preorderStart`(`preorderStart` ASC) USING BTREE,
  INDEX `preorderEnd`(`preorderEnd` ASC) USING BTREE,
  INDEX `preorderStatus`(`preorderStatus` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_preorder
-- ----------------------------
INSERT INTO `tb_preorder` VALUES (1, '1', '4', '2021-04-05', '2021-04-07', '1', '2021-09-14 02:47:38');
INSERT INTO `tb_preorder` VALUES (2, '2', '1', '2021-04-12', '2021-04-14', '1', '2021-09-14 02:47:40');
INSERT INTO `tb_preorder` VALUES (3, '3', '2', '2021-04-19', '2021-04-21', '0', '2021-12-28 09:34:48');
INSERT INTO `tb_preorder` VALUES (4, '4', '3', '2021-04-26', '2021-04-28', '0', '2021-12-28 09:34:50');
INSERT INTO `tb_preorder` VALUES (5, '5', '4', '2021-05-03', '2021-05-05', '0', '2021-12-28 09:34:51');
INSERT INTO `tb_preorder` VALUES (6, '6', '5', '2021-05-10', '2021-05-12', '0', '2021-12-28 09:34:53');
INSERT INTO `tb_preorder` VALUES (7, '7', '6', '2021-05-17', '2021-05-19', '0', '2021-12-28 09:34:54');
INSERT INTO `tb_preorder` VALUES (8, '8', '7', '2021-05-24', '2021-05-26', '0', '2021-12-28 09:34:55');
INSERT INTO `tb_preorder` VALUES (9, '9', '1', '2021-05-31', '2021-06-02', '0', '2021-12-28 09:34:56');
INSERT INTO `tb_preorder` VALUES (10, '10', '3', '2021-06-07', '2021-06-09', '0', '2021-12-28 09:34:57');
INSERT INTO `tb_preorder` VALUES (11, '11', '5', '2021-06-14', '2021-06-16', '0', '2021-12-28 09:34:58');
INSERT INTO `tb_preorder` VALUES (12, '12', '4', '2021-06-21', '2021-06-23', '0', '2021-12-28 09:34:59');
INSERT INTO `tb_preorder` VALUES (13, '13', '6', '2021-06-28', '2021-06-30', '0', '2021-12-28 09:35:00');
INSERT INTO `tb_preorder` VALUES (14, '14', '8', '2021-07-05', '2021-07-07', '0', '2021-12-28 09:35:01');
INSERT INTO `tb_preorder` VALUES (15, '15', '9', '2021-07-12', '2021-07-14', '0', '2021-12-28 09:35:04');
INSERT INTO `tb_preorder` VALUES (16, '16', '10', '2021-07-19', '2021-07-21', '0', '2021-12-28 09:35:06');
INSERT INTO `tb_preorder` VALUES (17, '17', '1', '2021-07-26', '2021-07-28', '0', '2021-12-28 09:35:07');
INSERT INTO `tb_preorder` VALUES (18, '18', '5', '2021-08-02', '2021-08-04', '0', '2021-12-28 09:35:08');
INSERT INTO `tb_preorder` VALUES (19, '19', '6', '2021-08-09', '2021-08-11', '0', '2021-12-28 09:35:09');
INSERT INTO `tb_preorder` VALUES (20, '20', '8', '2021-08-16', '2021-08-18', '0', '2021-12-28 09:35:10');
INSERT INTO `tb_preorder` VALUES (21, '21', '7', '2021-08-23', '2021-08-25', '0', '2021-12-28 09:35:11');
INSERT INTO `tb_preorder` VALUES (22, '22', '9', '2021-08-30', '2021-09-01', '0', '2021-12-28 09:35:13');
INSERT INTO `tb_preorder` VALUES (23, '23', '1', '2021-09-06', '2021-09-08', '0', '2021-12-28 09:35:14');
INSERT INTO `tb_preorder` VALUES (24, '24', '10', '2021-09-13', '2021-09-15', '1', '2021-09-14 04:06:40');
INSERT INTO `tb_preorder` VALUES (25, '25', '5', '2021-09-20', '2021-09-22', '1', '2021-09-18 06:12:12');
INSERT INTO `tb_preorder` VALUES (26, '26', '6', '2021-09-27', '2021-09-29', '1', '2021-09-25 03:32:00');
INSERT INTO `tb_preorder` VALUES (27, '27', '8', '2021-10-04', '2021-10-06', '1', '2021-10-02 05:49:09');
INSERT INTO `tb_preorder` VALUES (28, '28', '9', '2021-10-11', '2021-10-13', '1', '2021-10-09 14:26:56');
INSERT INTO `tb_preorder` VALUES (29, '29', '1', '2021-10-18', '2021-10-20', '1', '2021-10-15 07:55:18');
INSERT INTO `tb_preorder` VALUES (30, '30', '10', '2021-10-25', '2021-10-27', '0', '2021-10-26 07:55:40');
INSERT INTO `tb_preorder` VALUES (31, '31', '6', '2021-11-01', '2021-11-03', '0', '2021-11-01 05:07:47');
INSERT INTO `tb_preorder` VALUES (32, '32', '8', '2021-11-08', '2021-11-10', '1', '2021-11-02 08:14:19');
INSERT INTO `tb_preorder` VALUES (33, '33', '9', '2021-11-15', '2021-11-17', '1', '2021-11-10 11:30:51');
INSERT INTO `tb_preorder` VALUES (34, '34', '2', '2021-11-22', '2021-11-24', '1', '2021-11-18 01:27:20');
INSERT INTO `tb_preorder` VALUES (35, '35', '4', '2021-11-29', '2021-12-01', '1', '2021-11-23 03:08:42');
INSERT INTO `tb_preorder` VALUES (36, '36', '7', '2021-12-06', '2021-12-08', '0', '2021-12-07 01:56:39');
INSERT INTO `tb_preorder` VALUES (37, '37', '1', '2021-12-13', '2021-12-15', '0', '2021-12-14 02:51:00');
INSERT INTO `tb_preorder` VALUES (38, '38', '5', '2021-12-20', '2021-12-22', '1', '2021-12-15 04:18:21');
INSERT INTO `tb_preorder` VALUES (39, '39', '6', '2022-01-03', '2022-01-05', '1', '2021-12-21 10:31:48');
INSERT INTO `tb_preorder` VALUES (40, '40', '8', '2022-01-10', '2022-01-12', '1', '2022-01-05 17:31:19');
INSERT INTO `tb_preorder` VALUES (41, '41', '10', '2022-01-17', '2022-01-19', '1', '2022-01-11 16:26:05');
INSERT INTO `tb_preorder` VALUES (42, '42', '2', '2022-01-24', '2022-01-26', '1', '2022-01-21 14:38:34');
INSERT INTO `tb_preorder` VALUES (43, '43', '7', '2022-01-31', '2022-02-02', '1', '2022-01-26 14:00:33');
INSERT INTO `tb_preorder` VALUES (44, '44', '9', '2022-02-07', '2022-02-09', '1', '2022-02-02 11:52:53');
INSERT INTO `tb_preorder` VALUES (45, '45', '1', '2022-02-14', '2022-02-16', '1', '2022-02-09 14:29:23');
INSERT INTO `tb_preorder` VALUES (46, '46', '5', '2022-02-21', '2022-02-23', '0', '2022-02-22 15:14:27');
INSERT INTO `tb_preorder` VALUES (47, '47', '6', '2022-02-28', '2022-03-02', '1', '2022-02-23 16:06:58');
INSERT INTO `tb_preorder` VALUES (48, '48', '8', '2022-03-07', '2022-03-09', '1', '2022-03-02 12:17:07');
INSERT INTO `tb_preorder` VALUES (49, '49', '10', '2022-03-14', '2022-03-16', '1', '2022-03-08 12:02:32');
INSERT INTO `tb_preorder` VALUES (50, '50', '2', '2022-03-21', '2022-03-23', '1', '2022-03-16 15:26:42');
INSERT INTO `tb_preorder` VALUES (54, '51', '7', '2022-03-28', '2022-03-30', '1', '2022-03-23 14:20:10');
INSERT INTO `tb_preorder` VALUES (55, '52', '9', '2022-04-04', '2022-04-06', '1', '2022-03-30 15:43:50');
INSERT INTO `tb_preorder` VALUES (56, '53', '1', '2022-04-11', '2022-04-13', '0', '2022-04-11 16:00:31');
INSERT INTO `tb_preorder` VALUES (57, '54', '5', '2022-04-18', '2022-04-20', '1', '2022-04-14 11:28:57');
INSERT INTO `tb_preorder` VALUES (58, '55', '6', '2022-04-25', '2022-04-27', '1', '2022-04-25 10:50:18');
INSERT INTO `tb_preorder` VALUES (59, '56', '8', '2022-05-09', '2022-05-11', '1', '2022-04-25 11:08:00');
INSERT INTO `tb_preorder` VALUES (62, '57', '10', '2022-05-16', '2022-05-18', '1', '2022-05-10 09:36:33');
INSERT INTO `tb_preorder` VALUES (63, '58', '2', '2022-05-23', '2022-05-25', '1', '2022-05-18 11:14:34');
INSERT INTO `tb_preorder` VALUES (64, '59', '7', '2022-05-30', '2022-06-01', '1', '2022-05-25 20:30:23');
INSERT INTO `tb_preorder` VALUES (65, '60', '9', '2022-06-06', '2022-06-08', '1', '2022-06-02 00:00:31');
INSERT INTO `tb_preorder` VALUES (66, '61', '1', '2022-06-13', '2022-06-15', '0', '2022-06-14 13:48:22');
INSERT INTO `tb_preorder` VALUES (67, '62', '6', '2022-06-20', '2022-06-22', '1', '2022-06-16 09:33:48');
INSERT INTO `tb_preorder` VALUES (68, '63', '10', '2022-06-27', '2022-06-29', '1', '2022-06-22 19:52:59');
INSERT INTO `tb_preorder` VALUES (69, '64', '2', '2022-07-04', '2022-07-06', '1', '2022-06-29 19:23:06');

-- ----------------------------
-- Table structure for tb_reservation
-- ----------------------------
DROP TABLE IF EXISTS `tb_reservation`;
CREATE TABLE `tb_reservation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `reservationId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reservationName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reservationPhone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reservationDate` date NOT NULL,
  `reservationTime` time NOT NULL,
  `reservationType` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reservationRequest` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reservationId`(`reservationId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `reservationId_2`(`reservationId` ASC) USING BTREE,
  INDEX `reservationName`(`reservationName` ASC) USING BTREE,
  INDEX `reservationPhone`(`reservationPhone` ASC) USING BTREE,
  INDEX `reservationDate`(`reservationDate` ASC) USING BTREE,
  INDEX `reservationTime`(`reservationTime` ASC) USING BTREE,
  INDEX `reservationType`(`reservationType` ASC) USING BTREE,
  INDEX `reservationRequest`(`reservationRequest` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_reservation
-- ----------------------------
INSERT INTO `tb_reservation` VALUES (1, '1', 'nanda', '0859', '2021-04-07', '12:00:00', 'Launch', 'tes', '2021-04-05 20:53:28');
INSERT INTO `tb_reservation` VALUES (2, '2', 'aldebaran', '999', '2021-04-06', '18:45:00', 'Launch', 'delounge', '2021-04-05 21:04:50');
INSERT INTO `tb_reservation` VALUES (3, '3', 'andien manopo', '991', '2021-04-30', '16:00:00', 'Birthday', 'badut', '2021-04-05 21:08:19');
INSERT INTO `tb_reservation` VALUES (4, '4', 'alpin', '0859', '2021-04-08', '10:45:00', 'Launch', '', '2021-04-05 21:09:41');
INSERT INTO `tb_reservation` VALUES (5, '5', 'andien manopo', '0859', '2021-04-22', '12:00:00', 'Launch', '', '2021-04-05 21:11:28');

-- ----------------------------
-- Table structure for tb_takeaway
-- ----------------------------
DROP TABLE IF EXISTS `tb_takeaway`;
CREATE TABLE `tb_takeaway`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `takeawayId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `takeawayName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `takeawayPhone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `takeawayDate` date NOT NULL,
  `takeawayTime` time NOT NULL,
  `takeawayEmail` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orderId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orderFee` int NOT NULL,
  `takeawayPayment` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `paymentStatus` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paymentDate` datetime NULL DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `takeawayId`(`takeawayId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `takeawayId_2`(`takeawayId` ASC) USING BTREE,
  INDEX `takeawayName`(`takeawayName` ASC) USING BTREE,
  INDEX `takeawayPhone`(`takeawayPhone` ASC) USING BTREE,
  INDEX `takeawayDate`(`takeawayDate` ASC) USING BTREE,
  INDEX `takeawayTime`(`takeawayTime` ASC) USING BTREE,
  INDEX `takeawayEmail`(`takeawayEmail` ASC) USING BTREE,
  INDEX `orderId`(`orderId` ASC) USING BTREE,
  INDEX `orderFee`(`orderFee` ASC) USING BTREE,
  INDEX `takeawayPayment`(`takeawayPayment` ASC) USING BTREE,
  INDEX `paymentStatus`(`paymentStatus` ASC) USING BTREE,
  INDEX `paymentDate`(`paymentDate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_takeaway
-- ----------------------------
INSERT INTO `tb_takeaway` VALUES (1, '1', 'agus sudiyanto', '08155101221', '2021-05-28', '12:00:00', 'as.sgiworld@gmail.com', '4', 20000, 'transfer', '0', NULL, '2021-05-24 21:33:33');
INSERT INTO `tb_takeaway` VALUES (2, '2', 'agus sudiyanto', '08155101221', '2021-05-28', '12:00:00', 'as.sgiworld@gmail.com', '5', 20000, 'transfer', '0', NULL, '2021-05-25 00:03:37');
INSERT INTO `tb_takeaway` VALUES (3, '3', 'agus sudiyanto', '081297971221', '2021-06-04', '12:00:00', 'as.sgiworld@gmail.com', '9', 20000, 'transfer', '1', '2021-06-02 10:52:54', '2021-06-01 20:52:54');
INSERT INTO `tb_takeaway` VALUES (4, '4', 'andry kurniawan', '08123251838', '2021-06-04', '12:00:00', 'andrykhoe@gmail.com', '10', 20000, 'transfer', '1', '2021-05-31 11:26:39', '2021-05-30 21:26:39');
INSERT INTO `tb_takeaway` VALUES (5, '5', 'agus sudiyanto', '081297971221', '2021-06-18', '11:30:00', 'as.sgiworld@gmail.com', '12', 20000, 'transfer', '1', '2021-06-16 12:58:09', '2021-06-15 22:58:09');
INSERT INTO `tb_takeaway` VALUES (6, '6', 'adi sunandar', '081703271188', '2021-06-18', '12:00:00', 'adisunandar.fnb@gmail.com', '11', 20000, 'transfer', '1', '2021-06-16 13:25:42', '2021-06-15 23:25:42');
INSERT INTO `tb_takeaway` VALUES (7, '7', 'adi sunandar', '081703271188', '2022-05-27', '11:35:00', '', '19', 20000, 'transfer', '0', NULL, '2022-05-23 14:09:31');
INSERT INTO `tb_takeaway` VALUES (8, '8', 'aldy ramadhan', '082231343808', '2022-05-27', '12:00:00', 'aldy.indraco@gmail.com', '20', 20000, 'transfer', '0', NULL, '2022-05-23 11:35:02');
INSERT INTO `tb_takeaway` VALUES (9, '9', 'adi sunandar', '081703271188', '2022-05-27', '11:36:00', '', '21', 20000, NULL, '0', NULL, '2022-05-23 14:48:20');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userName` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userPassword` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userLevel` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userHash` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userId`(`userId` ASC) USING BTREE,
  INDEX `uid`(`id` ASC) USING BTREE,
  INDEX `userId_2`(`userId` ASC) USING BTREE,
  INDEX `userName`(`userName` ASC) USING BTREE,
  INDEX `userLevel`(`userLevel` ASC) USING BTREE,
  INDEX `userHash`(`userHash` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES (1, '1', 'admin', '8a9bcf1e51e812d0af8465a8dbcc9f741064bf0af3b3d08e6b0246437c19f7fb', 'admin', 'LMsZ3fRunYC9wVmLhSwLpjVEBGg44TMwbjVPVABiwBWMC2MX99', '2022-06-29 19:20:44');
INSERT INTO `tb_users` VALUES (2, '0', 'root', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'root', '7LTRXOqtHZQfYIF0TPOzsqrsWcSnMOnRcpL1Xa5FJtHgzKAX1R', '2022-06-14 13:48:14');

-- ----------------------------
-- Table structure for tb_visitlog_page
-- ----------------------------
DROP TABLE IF EXISTS `tb_visitlog_page`;
CREATE TABLE `tb_visitlog_page`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tb_visitlog_ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tb_visitlog_page_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tb_visitlog_page_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_visitlog_page_id`(`id` ASC) USING BTREE,
  INDEX `tb_visitlog_ip`(`tb_visitlog_ip` ASC) USING BTREE,
  INDEX `tb_visitlog_page_name`(`tb_visitlog_page_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3379 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_visitlog_page
-- ----------------------------
INSERT INTO `tb_visitlog_page` VALUES (1, '125.164.14.212', 'home', '2021-12-28 16:28:10');
INSERT INTO `tb_visitlog_page` VALUES (2, '66.249.64.120', 'home', '2021-12-28 19:08:53');
INSERT INTO `tb_visitlog_page` VALUES (3, '114.119.152.54', 'order', '2021-12-28 21:03:57');
INSERT INTO `tb_visitlog_page` VALUES (4, '182.1.77.10', 'home', '2021-12-29 07:48:28');
INSERT INTO `tb_visitlog_page` VALUES (5, '182.1.76.30', 'wacana', '2021-12-29 07:54:11');
INSERT INTO `tb_visitlog_page` VALUES (6, '36.81.255.151', 'home', '2021-12-29 10:58:00');
INSERT INTO `tb_visitlog_page` VALUES (7, '125.164.13.173', 'wacana', '2021-12-29 14:36:00');
INSERT INTO `tb_visitlog_page` VALUES (8, '202.6.227.46', 'home', '2021-12-29 17:00:54');
INSERT INTO `tb_visitlog_page` VALUES (9, '202.6.227.46', 'menu', '2021-12-29 17:01:02');
INSERT INTO `tb_visitlog_page` VALUES (10, '114.119.158.234', 'order', '2021-12-29 23:09:47');
INSERT INTO `tb_visitlog_page` VALUES (11, '40.77.167.36', 'login', '2021-12-30 00:42:45');
INSERT INTO `tb_visitlog_page` VALUES (12, '202.6.227.46', 'home', '2021-12-30 08:31:10');
INSERT INTO `tb_visitlog_page` VALUES (13, '202.6.227.46', 'wacana', '2021-12-30 08:31:18');
INSERT INTO `tb_visitlog_page` VALUES (14, '202.6.227.46', 'news', '2021-12-30 08:31:23');
INSERT INTO `tb_visitlog_page` VALUES (15, '202.6.227.46', 'wacana', '2021-12-30 08:31:26');
INSERT INTO `tb_visitlog_page` VALUES (16, '125.164.2.111', 'home', '2021-12-30 08:38:54');
INSERT INTO `tb_visitlog_page` VALUES (17, '125.164.2.111', 'wacana', '2021-12-30 08:39:05');
INSERT INTO `tb_visitlog_page` VALUES (18, '125.164.2.111', 'news', '2021-12-30 08:39:21');
INSERT INTO `tb_visitlog_page` VALUES (19, '125.164.2.111', 'wacana', '2021-12-30 08:40:10');
INSERT INTO `tb_visitlog_page` VALUES (20, '114.119.157.103', 'wacana', '2021-12-30 10:31:14');
INSERT INTO `tb_visitlog_page` VALUES (21, '202.6.227.46', 'news', '2021-12-30 15:26:21');
INSERT INTO `tb_visitlog_page` VALUES (22, '202.6.227.46', 'news', '2021-12-30 15:27:43');
INSERT INTO `tb_visitlog_page` VALUES (23, '202.6.227.46', 'wacana', '2021-12-30 15:27:59');
INSERT INTO `tb_visitlog_page` VALUES (24, '202.6.227.46', 'news', '2021-12-30 15:28:01');
INSERT INTO `tb_visitlog_page` VALUES (25, '202.6.227.46', 'news', '2021-12-30 15:28:16');
INSERT INTO `tb_visitlog_page` VALUES (26, '202.6.227.46', 'news', '2021-12-30 15:36:38');
INSERT INTO `tb_visitlog_page` VALUES (27, '202.6.227.46', 'news', '2021-12-30 15:36:52');
INSERT INTO `tb_visitlog_page` VALUES (28, '202.6.227.46', 'wacana', '2021-12-30 15:36:54');
INSERT INTO `tb_visitlog_page` VALUES (29, '202.6.227.46', 'news', '2021-12-30 15:37:01');
INSERT INTO `tb_visitlog_page` VALUES (30, '202.6.227.46', 'news', '2021-12-30 15:39:32');
INSERT INTO `tb_visitlog_page` VALUES (31, '202.6.227.46', 'order', '2021-12-30 15:39:36');
INSERT INTO `tb_visitlog_page` VALUES (32, '202.6.227.46', 'news', '2021-12-30 15:39:40');
INSERT INTO `tb_visitlog_page` VALUES (33, '202.6.227.46', 'news', '2021-12-30 15:39:42');
INSERT INTO `tb_visitlog_page` VALUES (34, '202.6.227.46', 'news', '2021-12-30 15:39:47');
INSERT INTO `tb_visitlog_page` VALUES (35, '202.6.227.46', 'news', '2021-12-30 15:39:53');
INSERT INTO `tb_visitlog_page` VALUES (36, '202.6.227.46', 'wacana', '2021-12-30 15:40:09');
INSERT INTO `tb_visitlog_page` VALUES (37, '202.6.227.46', 'news', '2021-12-30 15:55:49');
INSERT INTO `tb_visitlog_page` VALUES (38, '125.164.2.111', 'wacana', '2021-12-30 17:21:17');
INSERT INTO `tb_visitlog_page` VALUES (39, '125.164.2.111', 'news', '2021-12-30 17:21:19');
INSERT INTO `tb_visitlog_page` VALUES (40, '202.6.227.46', 'news', '2021-12-30 18:03:41');
INSERT INTO `tb_visitlog_page` VALUES (41, '66.249.70.84', 'kebijakan privasi', '2021-12-30 18:46:50');
INSERT INTO `tb_visitlog_page` VALUES (42, '66.249.70.80', 'home', '2021-12-30 20:26:17');
INSERT INTO `tb_visitlog_page` VALUES (43, '66.249.70.76', 'home', '2021-12-30 23:28:27');
INSERT INTO `tb_visitlog_page` VALUES (44, '66.249.70.84', 'home', '2021-12-31 01:36:33');
INSERT INTO `tb_visitlog_page` VALUES (45, '40.77.167.36', 'home', '2021-12-31 01:53:49');
INSERT INTO `tb_visitlog_page` VALUES (46, '66.249.64.120', 'kebijakan privasi', '2021-12-31 06:00:22');
INSERT INTO `tb_visitlog_page` VALUES (47, '202.6.227.46', 'home', '2021-12-31 09:22:24');
INSERT INTO `tb_visitlog_page` VALUES (48, '202.6.227.46', 'news', '2021-12-31 09:40:14');
INSERT INTO `tb_visitlog_page` VALUES (49, '202.6.227.46', 'news', '2021-12-31 09:40:43');
INSERT INTO `tb_visitlog_page` VALUES (50, '66.249.70.82', 'home', '2021-12-31 10:39:58');
INSERT INTO `tb_visitlog_page` VALUES (51, '202.6.227.46', 'wacana', '2021-12-31 11:23:41');
INSERT INTO `tb_visitlog_page` VALUES (52, '202.6.227.46', 'menu', '2021-12-31 11:23:45');
INSERT INTO `tb_visitlog_page` VALUES (53, '202.6.227.46', 'menu', '2021-12-31 11:23:51');
INSERT INTO `tb_visitlog_page` VALUES (54, '202.6.227.46', 'menu', '2021-12-31 11:24:14');
INSERT INTO `tb_visitlog_page` VALUES (55, '180.247.180.10', 'menu', '2021-12-31 11:24:23');
INSERT INTO `tb_visitlog_page` VALUES (56, '220.255.211.112', 'menu', '2021-12-31 11:24:58');
INSERT INTO `tb_visitlog_page` VALUES (57, '202.6.227.46', 'news', '2021-12-31 11:27:55');
INSERT INTO `tb_visitlog_page` VALUES (58, '202.6.227.46', 'menu', '2021-12-31 11:28:34');
INSERT INTO `tb_visitlog_page` VALUES (59, '180.247.180.10', 'news', '2021-12-31 12:58:29');
INSERT INTO `tb_visitlog_page` VALUES (60, '114.4.4.134', 'news', '2021-12-31 17:03:55');
INSERT INTO `tb_visitlog_page` VALUES (61, '202.67.40.253', 'home', '2021-12-31 18:04:00');
INSERT INTO `tb_visitlog_page` VALUES (62, '202.67.40.253', 'wacana', '2021-12-31 18:04:03');
INSERT INTO `tb_visitlog_page` VALUES (63, '202.67.40.253', 'news', '2021-12-31 18:04:18');
INSERT INTO `tb_visitlog_page` VALUES (64, '66.249.70.74', 'home', '2021-12-31 19:03:38');
INSERT INTO `tb_visitlog_page` VALUES (65, '103.108.21.125', 'news', '2022-01-01 16:58:49');
INSERT INTO `tb_visitlog_page` VALUES (66, '66.249.64.120', 'home', '2022-01-01 22:14:23');
INSERT INTO `tb_visitlog_page` VALUES (67, '40.77.167.36', 'wacana', '2022-01-02 02:02:22');
INSERT INTO `tb_visitlog_page` VALUES (68, '66.249.70.68', 'home', '2022-01-02 03:44:47');
INSERT INTO `tb_visitlog_page` VALUES (69, '66.249.70.68', 'kebijakan privasi', '2022-01-02 08:21:20');
INSERT INTO `tb_visitlog_page` VALUES (70, '202.67.40.207', 'news', '2022-01-02 12:40:04');
INSERT INTO `tb_visitlog_page` VALUES (71, '69.160.160.59', 'home', '2022-01-02 18:34:58');
INSERT INTO `tb_visitlog_page` VALUES (72, '114.125.110.208', 'home', '2022-01-03 08:19:12');
INSERT INTO `tb_visitlog_page` VALUES (73, '140.0.3.131', 'kontak', '2022-01-03 08:19:44');
INSERT INTO `tb_visitlog_page` VALUES (74, '202.6.227.46', 'home', '2022-01-03 08:24:23');
INSERT INTO `tb_visitlog_page` VALUES (75, '180.247.130.192', 'home', '2022-01-03 08:52:44');
INSERT INTO `tb_visitlog_page` VALUES (76, '180.247.130.192', 'wacana', '2022-01-03 08:52:45');
INSERT INTO `tb_visitlog_page` VALUES (77, '180.247.130.192', 'order', '2022-01-03 08:52:46');
INSERT INTO `tb_visitlog_page` VALUES (78, '180.247.130.192', 'open po', '2022-01-03 08:52:47');
INSERT INTO `tb_visitlog_page` VALUES (79, '202.6.227.46', 'home', '2022-01-03 08:54:04');
INSERT INTO `tb_visitlog_page` VALUES (80, '180.247.130.192', 'home', '2022-01-03 08:55:51');
INSERT INTO `tb_visitlog_page` VALUES (81, '180.253.161.249', 'home', '2022-01-03 08:56:21');
INSERT INTO `tb_visitlog_page` VALUES (82, '180.247.130.192', 'home', '2022-01-03 08:56:29');
INSERT INTO `tb_visitlog_page` VALUES (83, '180.253.161.249', 'syarat & ketentuan', '2022-01-03 08:56:50');
INSERT INTO `tb_visitlog_page` VALUES (84, '180.253.161.249', 'tentang', '2022-01-03 08:57:15');
INSERT INTO `tb_visitlog_page` VALUES (85, '180.253.161.249', 'order', '2022-01-03 08:57:25');
INSERT INTO `tb_visitlog_page` VALUES (86, '180.253.161.249', 'wacana', '2022-01-03 08:57:28');
INSERT INTO `tb_visitlog_page` VALUES (87, '180.253.161.249', 'wacana', '2022-01-03 08:57:52');
INSERT INTO `tb_visitlog_page` VALUES (88, '180.253.161.249', 'order', '2022-01-03 08:57:54');
INSERT INTO `tb_visitlog_page` VALUES (89, '180.253.161.249', 'keranjang', '2022-01-03 08:57:55');
INSERT INTO `tb_visitlog_page` VALUES (90, '180.247.130.192', 'kontak', '2022-01-03 08:57:56');
INSERT INTO `tb_visitlog_page` VALUES (91, '202.6.227.46', 'home', '2022-01-03 08:59:13');
INSERT INTO `tb_visitlog_page` VALUES (92, '202.6.227.46', 'open po', '2022-01-03 09:30:49');
INSERT INTO `tb_visitlog_page` VALUES (93, '180.253.161.249', 'home', '2022-01-03 09:58:01');
INSERT INTO `tb_visitlog_page` VALUES (94, '180.247.130.192', 'wacana', '2022-01-03 09:58:29');
INSERT INTO `tb_visitlog_page` VALUES (95, '202.6.227.46', 'open po', '2022-01-03 09:58:40');
INSERT INTO `tb_visitlog_page` VALUES (96, '180.253.161.249', 'menu', '2022-01-03 12:20:17');
INSERT INTO `tb_visitlog_page` VALUES (97, '66.249.70.74', 'home', '2022-01-03 12:31:26');
INSERT INTO `tb_visitlog_page` VALUES (98, '202.6.227.46', 'open po', '2022-01-03 15:16:39');
INSERT INTO `tb_visitlog_page` VALUES (99, '202.6.227.46', 'open po', '2022-01-03 17:35:05');
INSERT INTO `tb_visitlog_page` VALUES (100, '66.249.70.74', 'menu', '2022-01-04 05:46:26');
INSERT INTO `tb_visitlog_page` VALUES (101, '202.6.227.46', 'open po', '2022-01-04 14:14:22');
INSERT INTO `tb_visitlog_page` VALUES (102, '202.6.227.46', 'home', '2022-01-04 14:14:31');
INSERT INTO `tb_visitlog_page` VALUES (103, '202.6.227.46', 'home', '2022-01-04 14:16:28');
INSERT INTO `tb_visitlog_page` VALUES (104, '180.247.130.192', 'home', '2022-01-04 14:18:01');
INSERT INTO `tb_visitlog_page` VALUES (105, '180.253.161.249', 'home', '2022-01-04 16:03:30');
INSERT INTO `tb_visitlog_page` VALUES (106, '180.247.130.192', 'home', '2022-01-04 17:21:23');
INSERT INTO `tb_visitlog_page` VALUES (107, '180.247.130.192', 'galeri', '2022-01-04 17:21:24');
INSERT INTO `tb_visitlog_page` VALUES (108, '180.247.130.192', 'galeri', '2022-01-04 17:21:30');
INSERT INTO `tb_visitlog_page` VALUES (109, '202.6.227.46', 'home', '2022-01-04 17:30:22');
INSERT INTO `tb_visitlog_page` VALUES (110, '202.6.227.46', 'galeri', '2022-01-04 17:30:25');
INSERT INTO `tb_visitlog_page` VALUES (111, '202.6.227.46', 'galeri', '2022-01-04 17:30:28');
INSERT INTO `tb_visitlog_page` VALUES (112, '180.253.161.249', 'home', '2022-01-04 17:30:30');
INSERT INTO `tb_visitlog_page` VALUES (113, '180.253.161.249', 'galeri', '2022-01-04 17:30:32');
INSERT INTO `tb_visitlog_page` VALUES (114, '202.6.227.46', 'galeri', '2022-01-04 17:31:21');
INSERT INTO `tb_visitlog_page` VALUES (115, '180.247.130.192', 'galeri', '2022-01-04 17:32:48');
INSERT INTO `tb_visitlog_page` VALUES (116, '180.247.130.192', 'galeri', '2022-01-04 17:33:04');
INSERT INTO `tb_visitlog_page` VALUES (117, '202.6.227.46', 'galeri', '2022-01-04 17:33:21');
INSERT INTO `tb_visitlog_page` VALUES (118, '180.247.130.192', 'galeri', '2022-01-04 17:33:35');
INSERT INTO `tb_visitlog_page` VALUES (119, '202.6.227.46', 'galeri', '2022-01-04 17:34:14');
INSERT INTO `tb_visitlog_page` VALUES (120, '202.6.227.46', 'galeri', '2022-01-04 17:34:18');
INSERT INTO `tb_visitlog_page` VALUES (121, '180.247.130.192', 'galeri', '2022-01-04 17:34:24');
INSERT INTO `tb_visitlog_page` VALUES (122, '66.249.70.84', 'home', '2022-01-05 03:13:37');
INSERT INTO `tb_visitlog_page` VALUES (123, '38.108.182.5', 'news', '2022-01-05 06:29:34');
INSERT INTO `tb_visitlog_page` VALUES (124, '180.253.166.134', 'home', '2022-01-05 08:59:18');
INSERT INTO `tb_visitlog_page` VALUES (125, '180.253.166.134', 'wacana', '2022-01-05 08:59:20');
INSERT INTO `tb_visitlog_page` VALUES (126, '202.6.227.230', 'home', '2022-01-05 12:42:23');
INSERT INTO `tb_visitlog_page` VALUES (127, '125.166.124.131', 'menu', '2022-01-05 14:24:12');
INSERT INTO `tb_visitlog_page` VALUES (128, '36.72.215.227', 'wacana', '2022-01-05 14:57:21');
INSERT INTO `tb_visitlog_page` VALUES (129, '118.99.76.128', 'home', '2022-01-05 18:40:48');
INSERT INTO `tb_visitlog_page` VALUES (130, '66.249.70.74', 'kebijakan privasi', '2022-01-05 19:00:58');
INSERT INTO `tb_visitlog_page` VALUES (131, '66.249.70.74', 'home', '2022-01-05 20:04:38');
INSERT INTO `tb_visitlog_page` VALUES (132, '66.249.70.68', 'home', '2022-01-05 20:34:36');
INSERT INTO `tb_visitlog_page` VALUES (133, '66.249.64.106', 'home', '2022-01-05 21:05:21');
INSERT INTO `tb_visitlog_page` VALUES (134, '66.249.70.82', 'home', '2022-01-05 21:20:26');
INSERT INTO `tb_visitlog_page` VALUES (135, '66.249.70.68', 'menu', '2022-01-05 22:00:23');
INSERT INTO `tb_visitlog_page` VALUES (136, '202.6.227.46', 'home', '2022-01-06 08:22:51');
INSERT INTO `tb_visitlog_page` VALUES (137, '202.6.227.46', 'order', '2022-01-06 08:22:54');
INSERT INTO `tb_visitlog_page` VALUES (138, '202.6.227.46', 'order', '2022-01-06 08:28:59');
INSERT INTO `tb_visitlog_page` VALUES (139, '202.6.227.46', 'order', '2022-01-06 08:30:25');
INSERT INTO `tb_visitlog_page` VALUES (140, '202.6.227.46', 'home', '2022-01-06 08:34:53');
INSERT INTO `tb_visitlog_page` VALUES (141, '110.139.26.116', 'home', '2022-01-06 08:44:02');
INSERT INTO `tb_visitlog_page` VALUES (142, '180.253.37.61', 'home', '2022-01-06 08:50:45');
INSERT INTO `tb_visitlog_page` VALUES (143, '180.253.37.61', 'order', '2022-01-06 08:51:19');
INSERT INTO `tb_visitlog_page` VALUES (144, '180.253.37.61', 'order', '2022-01-06 08:51:29');
INSERT INTO `tb_visitlog_page` VALUES (145, '180.253.37.61', 'home', '2022-01-06 08:51:31');
INSERT INTO `tb_visitlog_page` VALUES (146, '180.253.37.61', 'order', '2022-01-06 08:51:33');
INSERT INTO `tb_visitlog_page` VALUES (147, '180.253.37.61', 'home', '2022-01-06 08:52:02');
INSERT INTO `tb_visitlog_page` VALUES (148, '180.253.37.61', 'home', '2022-01-06 09:00:14');
INSERT INTO `tb_visitlog_page` VALUES (149, '180.253.37.61', 'home', '2022-01-06 09:00:21');
INSERT INTO `tb_visitlog_page` VALUES (150, '180.253.37.61', 'home', '2022-01-06 09:07:08');
INSERT INTO `tb_visitlog_page` VALUES (151, '202.6.227.46', 'home', '2022-01-06 09:08:36');
INSERT INTO `tb_visitlog_page` VALUES (152, '202.6.227.46', 'home', '2022-01-06 09:10:02');
INSERT INTO `tb_visitlog_page` VALUES (153, '202.6.227.46', 'home', '2022-01-06 09:10:08');
INSERT INTO `tb_visitlog_page` VALUES (154, '103.142.21.199', 'home', '2022-01-06 09:11:16');
INSERT INTO `tb_visitlog_page` VALUES (155, '180.253.37.61', 'home', '2022-01-06 09:11:28');
INSERT INTO `tb_visitlog_page` VALUES (156, '180.253.37.61', 'home', '2022-01-06 09:12:03');
INSERT INTO `tb_visitlog_page` VALUES (157, '110.139.26.116', 'home', '2022-01-06 09:14:02');
INSERT INTO `tb_visitlog_page` VALUES (158, '180.253.37.61', 'tentang', '2022-01-06 09:14:25');
INSERT INTO `tb_visitlog_page` VALUES (159, '110.139.26.116', 'home', '2022-01-06 09:14:57');
INSERT INTO `tb_visitlog_page` VALUES (160, '202.6.227.46', 'open po', '2022-01-06 09:36:42');
INSERT INTO `tb_visitlog_page` VALUES (161, '202.6.227.46', 'home', '2022-01-06 09:36:54');
INSERT INTO `tb_visitlog_page` VALUES (162, '110.139.26.116', 'home', '2022-01-06 09:37:24');
INSERT INTO `tb_visitlog_page` VALUES (163, '110.139.26.116', 'order', '2022-01-06 09:37:35');
INSERT INTO `tb_visitlog_page` VALUES (164, '110.139.26.116', 'home', '2022-01-06 09:37:49');
INSERT INTO `tb_visitlog_page` VALUES (165, '110.139.26.116', 'order', '2022-01-06 09:37:51');
INSERT INTO `tb_visitlog_page` VALUES (166, '110.139.26.116', 'home', '2022-01-06 09:37:57');
INSERT INTO `tb_visitlog_page` VALUES (167, '110.139.26.116', 'home', '2022-01-06 09:38:15');
INSERT INTO `tb_visitlog_page` VALUES (168, '110.139.26.116', 'home', '2022-01-06 09:38:21');
INSERT INTO `tb_visitlog_page` VALUES (169, '110.139.26.116', 'order', '2022-01-06 09:38:23');
INSERT INTO `tb_visitlog_page` VALUES (170, '110.139.26.116', 'open po', '2022-01-06 09:38:24');
INSERT INTO `tb_visitlog_page` VALUES (171, '202.6.227.46', 'home', '2022-01-06 09:38:26');
INSERT INTO `tb_visitlog_page` VALUES (172, '110.139.26.116', 'open po', '2022-01-06 09:39:48');
INSERT INTO `tb_visitlog_page` VALUES (173, '110.139.26.116', 'home', '2022-01-06 09:39:53');
INSERT INTO `tb_visitlog_page` VALUES (174, '110.139.26.116', 'open po', '2022-01-06 09:39:55');
INSERT INTO `tb_visitlog_page` VALUES (175, '110.139.26.116', 'home', '2022-01-06 09:39:57');
INSERT INTO `tb_visitlog_page` VALUES (176, '110.139.26.116', 'open po', '2022-01-06 09:40:01');
INSERT INTO `tb_visitlog_page` VALUES (177, '202.6.227.46', 'home', '2022-01-06 09:40:08');
INSERT INTO `tb_visitlog_page` VALUES (178, '110.139.26.116', 'home', '2022-01-06 09:41:03');
INSERT INTO `tb_visitlog_page` VALUES (179, '180.253.37.61', 'home', '2022-01-06 09:47:48');
INSERT INTO `tb_visitlog_page` VALUES (180, '180.253.37.61', 'home', '2022-01-06 09:51:08');
INSERT INTO `tb_visitlog_page` VALUES (181, '111.65.46.242', 'home', '2022-01-06 10:06:59');
INSERT INTO `tb_visitlog_page` VALUES (182, '202.6.227.46', 'home', '2022-01-06 10:24:48');
INSERT INTO `tb_visitlog_page` VALUES (183, '202.6.227.46', 'order', '2022-01-06 10:24:51');
INSERT INTO `tb_visitlog_page` VALUES (184, '180.253.37.61', 'home', '2022-01-06 10:31:53');
INSERT INTO `tb_visitlog_page` VALUES (185, '180.253.37.61', 'open po', '2022-01-06 10:32:14');
INSERT INTO `tb_visitlog_page` VALUES (186, '180.253.37.61', 'home', '2022-01-06 10:32:17');
INSERT INTO `tb_visitlog_page` VALUES (187, '202.6.227.46', 'home', '2022-01-06 10:37:25');
INSERT INTO `tb_visitlog_page` VALUES (188, '202.6.227.46', 'home', '2022-01-06 10:37:32');
INSERT INTO `tb_visitlog_page` VALUES (189, '202.6.227.46', 'home', '2022-01-06 10:37:46');
INSERT INTO `tb_visitlog_page` VALUES (190, '110.139.26.116', 'home', '2022-01-06 10:38:08');
INSERT INTO `tb_visitlog_page` VALUES (191, '180.253.37.61', 'home', '2022-01-06 10:40:35');
INSERT INTO `tb_visitlog_page` VALUES (192, '180.253.37.61', 'open po', '2022-01-06 10:40:49');
INSERT INTO `tb_visitlog_page` VALUES (193, '180.253.37.61', 'home', '2022-01-06 10:49:20');
INSERT INTO `tb_visitlog_page` VALUES (194, '180.253.37.61', 'wacana', '2022-01-06 10:49:21');
INSERT INTO `tb_visitlog_page` VALUES (195, '202.6.227.46', 'home', '2022-01-06 11:17:35');
INSERT INTO `tb_visitlog_page` VALUES (196, '202.6.227.46', 'order', '2022-01-06 11:17:40');
INSERT INTO `tb_visitlog_page` VALUES (197, '202.6.227.46', 'open po', '2022-01-06 11:17:43');
INSERT INTO `tb_visitlog_page` VALUES (198, '202.6.227.46', 'home', '2022-01-06 13:38:31');
INSERT INTO `tb_visitlog_page` VALUES (199, '202.6.227.46', 'home', '2022-01-06 13:39:21');
INSERT INTO `tb_visitlog_page` VALUES (200, '180.253.37.61', 'home', '2022-01-06 15:11:29');
INSERT INTO `tb_visitlog_page` VALUES (201, '110.139.26.116', 'order', '2022-01-06 15:41:15');
INSERT INTO `tb_visitlog_page` VALUES (202, '110.139.26.116', 'menu', '2022-01-06 15:41:16');
INSERT INTO `tb_visitlog_page` VALUES (203, '180.253.37.61', 'home', '2022-01-06 15:50:13');
INSERT INTO `tb_visitlog_page` VALUES (204, '180.253.37.61', 'wacana', '2022-01-06 15:50:14');
INSERT INTO `tb_visitlog_page` VALUES (205, '180.253.37.61', 'news', '2022-01-06 15:50:22');
INSERT INTO `tb_visitlog_page` VALUES (206, '180.253.37.61', 'wacana', '2022-01-06 15:50:40');
INSERT INTO `tb_visitlog_page` VALUES (207, '180.253.37.61', 'home', '2022-01-06 15:50:54');
INSERT INTO `tb_visitlog_page` VALUES (208, '110.139.26.116', 'wacana', '2022-01-06 15:50:56');
INSERT INTO `tb_visitlog_page` VALUES (209, '110.139.26.116', 'news', '2022-01-06 15:51:42');
INSERT INTO `tb_visitlog_page` VALUES (210, '110.139.26.116', 'news', '2022-01-06 15:51:51');
INSERT INTO `tb_visitlog_page` VALUES (211, '202.6.227.46', 'home', '2022-01-06 15:52:36');
INSERT INTO `tb_visitlog_page` VALUES (212, '180.253.37.61', 'news', '2022-01-06 15:57:36');
INSERT INTO `tb_visitlog_page` VALUES (213, '180.253.37.61', 'news', '2022-01-06 15:59:39');
INSERT INTO `tb_visitlog_page` VALUES (214, '110.139.26.116', 'news', '2022-01-06 16:00:02');
INSERT INTO `tb_visitlog_page` VALUES (215, '110.139.26.116', 'news', '2022-01-06 16:00:24');
INSERT INTO `tb_visitlog_page` VALUES (216, '110.139.26.116', 'wacana', '2022-01-06 16:00:29');
INSERT INTO `tb_visitlog_page` VALUES (217, '110.139.26.116', 'news', '2022-01-06 16:00:30');
INSERT INTO `tb_visitlog_page` VALUES (218, '110.139.26.116', 'news', '2022-01-06 16:00:46');
INSERT INTO `tb_visitlog_page` VALUES (219, '110.139.26.116', 'news', '2022-01-06 16:01:16');
INSERT INTO `tb_visitlog_page` VALUES (220, '180.253.37.61', 'news', '2022-01-06 16:02:04');
INSERT INTO `tb_visitlog_page` VALUES (221, '110.139.26.116', 'news', '2022-01-06 16:02:34');
INSERT INTO `tb_visitlog_page` VALUES (222, '180.253.37.61', 'news', '2022-01-06 16:02:53');
INSERT INTO `tb_visitlog_page` VALUES (223, '180.253.37.61', 'home', '2022-01-06 16:13:03');
INSERT INTO `tb_visitlog_page` VALUES (224, '110.139.26.116', 'home', '2022-01-06 16:14:50');
INSERT INTO `tb_visitlog_page` VALUES (225, '202.6.227.46', 'news', '2022-01-06 16:29:13');
INSERT INTO `tb_visitlog_page` VALUES (226, '202.6.227.46', 'wacana', '2022-01-06 16:29:14');
INSERT INTO `tb_visitlog_page` VALUES (227, '202.6.227.46', 'news', '2022-01-06 16:29:17');
INSERT INTO `tb_visitlog_page` VALUES (228, '202.6.227.46', 'home', '2022-01-06 16:30:10');
INSERT INTO `tb_visitlog_page` VALUES (229, '180.253.37.61', 'home', '2022-01-06 16:32:56');
INSERT INTO `tb_visitlog_page` VALUES (230, '110.139.26.116', 'wacana', '2022-01-06 16:33:29');
INSERT INTO `tb_visitlog_page` VALUES (231, '110.139.26.116', 'news', '2022-01-06 16:33:31');
INSERT INTO `tb_visitlog_page` VALUES (232, '110.139.26.116', 'wacana', '2022-01-06 16:33:49');
INSERT INTO `tb_visitlog_page` VALUES (233, '110.139.26.116', 'home', '2022-01-06 16:33:51');
INSERT INTO `tb_visitlog_page` VALUES (234, '66.249.64.106', 'menu', '2022-01-06 16:41:49');
INSERT INTO `tb_visitlog_page` VALUES (235, '180.253.37.61', 'wacana', '2022-01-06 16:41:59');
INSERT INTO `tb_visitlog_page` VALUES (236, '180.253.37.61', 'news', '2022-01-06 16:42:03');
INSERT INTO `tb_visitlog_page` VALUES (237, '180.253.37.61', 'home', '2022-01-06 16:42:10');
INSERT INTO `tb_visitlog_page` VALUES (238, '202.6.227.46', 'home', '2022-01-06 16:48:49');
INSERT INTO `tb_visitlog_page` VALUES (239, '202.6.227.46', 'home', '2022-01-06 16:48:54');
INSERT INTO `tb_visitlog_page` VALUES (240, '202.6.227.46', 'home', '2022-01-06 16:49:29');
INSERT INTO `tb_visitlog_page` VALUES (241, '202.6.227.46', 'home', '2022-01-06 16:49:45');
INSERT INTO `tb_visitlog_page` VALUES (242, '202.6.227.46', 'home', '2022-01-06 16:49:48');
INSERT INTO `tb_visitlog_page` VALUES (243, '202.6.227.46', 'home', '2022-01-06 16:52:13');
INSERT INTO `tb_visitlog_page` VALUES (244, '66.249.64.108', 'home', '2022-01-06 17:04:36');
INSERT INTO `tb_visitlog_page` VALUES (245, '202.6.227.46', 'open po', '2022-01-06 17:21:32');
INSERT INTO `tb_visitlog_page` VALUES (246, '110.139.26.116', 'home', '2022-01-06 17:25:15');
INSERT INTO `tb_visitlog_page` VALUES (247, '110.139.26.116', 'home', '2022-01-06 17:51:31');
INSERT INTO `tb_visitlog_page` VALUES (248, '40.77.167.36', 'menu', '2022-01-07 06:43:53');
INSERT INTO `tb_visitlog_page` VALUES (249, '110.139.26.116', 'home', '2022-01-07 08:46:31');
INSERT INTO `tb_visitlog_page` VALUES (250, '110.139.26.116', 'wacana', '2022-01-07 08:46:31');
INSERT INTO `tb_visitlog_page` VALUES (251, '35.84.28.123', 'home', '2022-01-07 13:17:14');
INSERT INTO `tb_visitlog_page` VALUES (252, '182.1.67.0', 'home', '2022-01-07 15:41:16');
INSERT INTO `tb_visitlog_page` VALUES (253, '110.139.26.116', 'home', '2022-01-07 15:53:18');
INSERT INTO `tb_visitlog_page` VALUES (254, '202.6.227.46', 'news', '2022-01-07 16:39:24');
INSERT INTO `tb_visitlog_page` VALUES (255, '110.50.81.196', 'news', '2022-01-07 17:03:07');
INSERT INTO `tb_visitlog_page` VALUES (256, '20.75.33.245', 'news', '2022-01-07 17:03:56');
INSERT INTO `tb_visitlog_page` VALUES (257, '20.75.33.245', 'home', '2022-01-07 17:03:56');
INSERT INTO `tb_visitlog_page` VALUES (258, '20.75.33.245', 'wacana', '2022-01-07 17:04:30');
INSERT INTO `tb_visitlog_page` VALUES (259, '20.75.33.245', 'keranjang', '2022-01-07 17:04:31');
INSERT INTO `tb_visitlog_page` VALUES (260, '20.75.33.245', 'home', '2022-01-07 17:04:31');
INSERT INTO `tb_visitlog_page` VALUES (261, '202.6.227.46', 'home', '2022-01-07 17:47:01');
INSERT INTO `tb_visitlog_page` VALUES (262, '202.6.227.46', 'wacana', '2022-01-07 17:47:06');
INSERT INTO `tb_visitlog_page` VALUES (263, '202.6.227.46', 'news', '2022-01-07 17:47:18');
INSERT INTO `tb_visitlog_page` VALUES (264, '66.249.70.68', 'kebijakan privasi', '2022-01-07 22:51:07');
INSERT INTO `tb_visitlog_page` VALUES (265, '66.249.70.68', 'wacana', '2022-01-07 22:52:13');
INSERT INTO `tb_visitlog_page` VALUES (266, '40.77.167.35', 'wacana', '2022-01-08 01:56:31');
INSERT INTO `tb_visitlog_page` VALUES (267, '66.249.70.82', 'menu', '2022-01-08 07:37:02');
INSERT INTO `tb_visitlog_page` VALUES (268, '66.249.70.82', 'kebijakan privasi', '2022-01-08 07:59:50');
INSERT INTO `tb_visitlog_page` VALUES (269, '66.249.70.82', 'home', '2022-01-08 22:47:01');
INSERT INTO `tb_visitlog_page` VALUES (270, '66.249.70.84', 'wacana', '2022-01-08 23:16:58');
INSERT INTO `tb_visitlog_page` VALUES (271, '66.249.70.74', 'menu', '2022-01-09 04:51:30');
INSERT INTO `tb_visitlog_page` VALUES (272, '66.249.70.82', 'keranjang', '2022-01-09 06:56:31');
INSERT INTO `tb_visitlog_page` VALUES (273, '66.249.70.84', 'home', '2022-01-09 08:53:48');
INSERT INTO `tb_visitlog_page` VALUES (274, '66.249.70.82', 'open po', '2022-01-09 09:55:17');
INSERT INTO `tb_visitlog_page` VALUES (275, '66.249.70.74', 'wacana', '2022-01-09 10:05:31');
INSERT INTO `tb_visitlog_page` VALUES (276, '66.249.70.78', 'home', '2022-01-09 10:55:31');
INSERT INTO `tb_visitlog_page` VALUES (277, '66.249.64.108', 'galeri', '2022-01-09 10:59:03');
INSERT INTO `tb_visitlog_page` VALUES (278, '66.249.64.120', 'kebijakan privasi', '2022-01-09 14:36:30');
INSERT INTO `tb_visitlog_page` VALUES (279, '66.249.70.74', 'home', '2022-01-09 20:00:55');
INSERT INTO `tb_visitlog_page` VALUES (280, '66.249.70.86', 'home', '2022-01-09 23:24:45');
INSERT INTO `tb_visitlog_page` VALUES (281, '66.249.70.76', 'open po', '2022-01-10 02:22:16');
INSERT INTO `tb_visitlog_page` VALUES (282, '66.249.70.76', 'menu', '2022-01-10 05:50:08');
INSERT INTO `tb_visitlog_page` VALUES (283, '66.249.70.76', 'home', '2022-01-10 08:14:53');
INSERT INTO `tb_visitlog_page` VALUES (284, '202.6.227.46', 'open po', '2022-01-10 08:40:51');
INSERT INTO `tb_visitlog_page` VALUES (285, '202.6.227.46', 'open po', '2022-01-10 08:43:36');
INSERT INTO `tb_visitlog_page` VALUES (286, '202.6.227.46', 'order', '2022-01-10 08:44:10');
INSERT INTO `tb_visitlog_page` VALUES (287, '202.6.227.46', 'open po', '2022-01-10 08:44:17');
INSERT INTO `tb_visitlog_page` VALUES (288, '36.79.203.215', 'home', '2022-01-10 08:47:31');
INSERT INTO `tb_visitlog_page` VALUES (289, '36.79.203.215', 'order', '2022-01-10 08:47:36');
INSERT INTO `tb_visitlog_page` VALUES (290, '36.79.203.215', 'open po', '2022-01-10 08:47:37');
INSERT INTO `tb_visitlog_page` VALUES (291, '180.246.242.55', 'home', '2022-01-10 09:13:11');
INSERT INTO `tb_visitlog_page` VALUES (292, '36.79.203.215', 'galeri', '2022-01-10 09:13:42');
INSERT INTO `tb_visitlog_page` VALUES (293, '180.246.242.55', 'home', '2022-01-10 10:31:40');
INSERT INTO `tb_visitlog_page` VALUES (294, '180.246.242.55', 'home', '2022-01-10 10:32:13');
INSERT INTO `tb_visitlog_page` VALUES (295, '36.79.203.215', 'home', '2022-01-10 10:32:49');
INSERT INTO `tb_visitlog_page` VALUES (296, '202.6.227.46', 'open po', '2022-01-10 10:36:07');
INSERT INTO `tb_visitlog_page` VALUES (297, '180.246.242.55', 'home', '2022-01-10 10:48:16');
INSERT INTO `tb_visitlog_page` VALUES (298, '180.246.242.55', 'home', '2022-01-10 10:55:03');
INSERT INTO `tb_visitlog_page` VALUES (299, '36.79.203.215', 'home', '2022-01-10 11:19:23');
INSERT INTO `tb_visitlog_page` VALUES (300, '36.79.203.215', 'order', '2022-01-10 11:19:23');
INSERT INTO `tb_visitlog_page` VALUES (301, '36.79.203.215', 'open po', '2022-01-10 11:19:24');
INSERT INTO `tb_visitlog_page` VALUES (302, '36.79.203.215', 'open po', '2022-01-10 11:20:00');
INSERT INTO `tb_visitlog_page` VALUES (303, '182.1.88.35', 'wacana', '2022-01-10 11:32:07');
INSERT INTO `tb_visitlog_page` VALUES (304, '66.249.70.90', 'home', '2022-01-10 23:10:39');
INSERT INTO `tb_visitlog_page` VALUES (305, '66.249.70.84', 'open po', '2022-01-11 03:26:10');
INSERT INTO `tb_visitlog_page` VALUES (306, '66.249.70.92', 'home', '2022-01-11 14:56:06');
INSERT INTO `tb_visitlog_page` VALUES (307, '139.228.64.244', 'home', '2022-01-11 16:24:30');
INSERT INTO `tb_visitlog_page` VALUES (308, '66.249.70.90', 'galeri', '2022-01-11 16:55:21');
INSERT INTO `tb_visitlog_page` VALUES (309, '125.164.0.152', 'home', '2022-01-11 17:08:23');
INSERT INTO `tb_visitlog_page` VALUES (310, '125.164.0.152', 'menu', '2022-01-11 17:08:25');
INSERT INTO `tb_visitlog_page` VALUES (311, '66.249.70.76', 'kebijakan privasi', '2022-01-11 19:14:08');
INSERT INTO `tb_visitlog_page` VALUES (312, '66.249.70.82', 'home', '2022-01-12 02:15:36');
INSERT INTO `tb_visitlog_page` VALUES (313, '66.249.65.241', 'wacana', '2022-01-12 07:57:16');
INSERT INTO `tb_visitlog_page` VALUES (314, '66.249.70.82', 'menu', '2022-01-12 10:00:55');
INSERT INTO `tb_visitlog_page` VALUES (315, '66.249.65.241', 'home', '2022-01-12 10:01:31');
INSERT INTO `tb_visitlog_page` VALUES (316, '140.213.219.66', 'home', '2022-01-12 11:44:22');
INSERT INTO `tb_visitlog_page` VALUES (317, '140.213.219.66', 'menu', '2022-01-12 11:46:18');
INSERT INTO `tb_visitlog_page` VALUES (318, '140.213.219.66', 'home', '2022-01-12 11:46:28');
INSERT INTO `tb_visitlog_page` VALUES (319, '140.213.219.66', 'menu', '2022-01-12 11:46:29');
INSERT INTO `tb_visitlog_page` VALUES (320, '66.249.70.90', 'kebijakan privasi', '2022-01-12 12:57:42');
INSERT INTO `tb_visitlog_page` VALUES (321, '175.144.18.227', 'home', '2022-01-12 13:30:19');
INSERT INTO `tb_visitlog_page` VALUES (322, '175.144.18.227', 'kontak', '2022-01-12 13:30:25');
INSERT INTO `tb_visitlog_page` VALUES (323, '125.164.5.234', 'home', '2022-01-12 16:13:23');
INSERT INTO `tb_visitlog_page` VALUES (324, '125.164.5.234', 'galeri', '2022-01-12 16:13:24');
INSERT INTO `tb_visitlog_page` VALUES (325, '125.164.5.234', 'home', '2022-01-12 16:13:28');
INSERT INTO `tb_visitlog_page` VALUES (326, '202.67.46.11', 'home', '2022-01-12 17:41:58');
INSERT INTO `tb_visitlog_page` VALUES (327, '66.249.65.241', 'galeri', '2022-01-12 19:18:46');
INSERT INTO `tb_visitlog_page` VALUES (328, '125.164.14.55', 'home', '2022-01-12 19:28:07');
INSERT INTO `tb_visitlog_page` VALUES (329, '125.164.14.55', 'kontak', '2022-01-12 19:35:59');
INSERT INTO `tb_visitlog_page` VALUES (330, '36.74.97.98', 'menu', '2022-01-13 01:41:10');
INSERT INTO `tb_visitlog_page` VALUES (331, '66.249.65.241', 'kebijakan privasi', '2022-01-13 02:35:06');
INSERT INTO `tb_visitlog_page` VALUES (332, '66.249.70.90', 'menu', '2022-01-13 02:35:42');
INSERT INTO `tb_visitlog_page` VALUES (333, '66.249.70.90', 'open po', '2022-01-13 02:48:20');
INSERT INTO `tb_visitlog_page` VALUES (334, '125.164.14.55', 'kontak', '2022-01-13 05:06:11');
INSERT INTO `tb_visitlog_page` VALUES (335, '180.247.189.41', 'kontak', '2022-01-13 14:30:55');
INSERT INTO `tb_visitlog_page` VALUES (336, '202.6.227.46', 'news', '2022-01-13 16:11:34');
INSERT INTO `tb_visitlog_page` VALUES (337, '202.6.227.46', 'wacana', '2022-01-13 16:11:36');
INSERT INTO `tb_visitlog_page` VALUES (338, '202.6.227.46', 'news', '2022-01-13 16:11:38');
INSERT INTO `tb_visitlog_page` VALUES (339, '180.247.189.41', 'home', '2022-01-13 16:19:55');
INSERT INTO `tb_visitlog_page` VALUES (340, '180.247.189.41', 'wacana', '2022-01-13 16:19:56');
INSERT INTO `tb_visitlog_page` VALUES (341, '180.247.189.41', 'news', '2022-01-13 16:20:04');
INSERT INTO `tb_visitlog_page` VALUES (342, '202.6.227.46', 'news', '2022-01-13 17:20:05');
INSERT INTO `tb_visitlog_page` VALUES (343, '202.6.227.46', 'news', '2022-01-14 08:45:10');
INSERT INTO `tb_visitlog_page` VALUES (344, '125.164.2.179', 'home', '2022-01-14 09:31:56');
INSERT INTO `tb_visitlog_page` VALUES (345, '125.164.2.179', 'order', '2022-01-14 09:31:58');
INSERT INTO `tb_visitlog_page` VALUES (346, '125.164.2.179', 'wacana', '2022-01-14 09:32:00');
INSERT INTO `tb_visitlog_page` VALUES (347, '125.164.2.179', 'order', '2022-01-14 09:32:02');
INSERT INTO `tb_visitlog_page` VALUES (348, '125.164.2.179', 'open po', '2022-01-14 09:32:03');
INSERT INTO `tb_visitlog_page` VALUES (349, '202.6.227.46', 'news', '2022-01-14 10:01:49');
INSERT INTO `tb_visitlog_page` VALUES (350, '180.247.131.237', 'home', '2022-01-14 11:18:51');
INSERT INTO `tb_visitlog_page` VALUES (351, '125.164.2.179', 'home', '2022-01-14 11:22:27');
INSERT INTO `tb_visitlog_page` VALUES (352, '125.164.2.179', 'wacana', '2022-01-14 11:26:54');
INSERT INTO `tb_visitlog_page` VALUES (353, '125.164.2.179', 'home', '2022-01-14 11:27:03');
INSERT INTO `tb_visitlog_page` VALUES (354, '125.164.2.179', 'home', '2022-01-14 13:00:38');
INSERT INTO `tb_visitlog_page` VALUES (355, '180.247.131.237', 'home', '2022-01-14 13:03:46');
INSERT INTO `tb_visitlog_page` VALUES (356, '125.164.2.179', 'home', '2022-01-14 13:08:18');
INSERT INTO `tb_visitlog_page` VALUES (357, '125.164.2.179', 'galeri', '2022-01-14 13:08:46');
INSERT INTO `tb_visitlog_page` VALUES (358, '125.164.2.179', 'galeri', '2022-01-14 13:09:57');
INSERT INTO `tb_visitlog_page` VALUES (359, '125.164.2.179', 'menu', '2022-01-14 13:10:02');
INSERT INTO `tb_visitlog_page` VALUES (360, '125.164.2.179', 'tentang', '2022-01-14 13:10:06');
INSERT INTO `tb_visitlog_page` VALUES (361, '125.164.2.179', 'home', '2022-01-14 13:10:10');
INSERT INTO `tb_visitlog_page` VALUES (362, '180.247.131.237', 'home', '2022-01-14 13:11:57');
INSERT INTO `tb_visitlog_page` VALUES (363, '180.247.131.237', 'galeri', '2022-01-14 13:12:02');
INSERT INTO `tb_visitlog_page` VALUES (364, '180.247.131.237', 'galeri', '2022-01-14 13:12:32');
INSERT INTO `tb_visitlog_page` VALUES (365, '180.247.131.237', 'home', '2022-01-14 13:38:26');
INSERT INTO `tb_visitlog_page` VALUES (366, '180.247.131.237', 'galeri', '2022-01-14 13:38:27');
INSERT INTO `tb_visitlog_page` VALUES (367, '180.247.131.237', 'menu', '2022-01-14 13:38:33');
INSERT INTO `tb_visitlog_page` VALUES (368, '180.247.131.237', 'tentang', '2022-01-14 13:38:35');
INSERT INTO `tb_visitlog_page` VALUES (369, '180.247.131.237', 'order', '2022-01-14 13:38:38');
INSERT INTO `tb_visitlog_page` VALUES (370, '180.247.131.237', 'keranjang', '2022-01-14 13:38:40');
INSERT INTO `tb_visitlog_page` VALUES (371, '180.247.131.237', 'kontak', '2022-01-14 13:38:41');
INSERT INTO `tb_visitlog_page` VALUES (372, '125.164.2.179', 'home', '2022-01-14 13:38:45');
INSERT INTO `tb_visitlog_page` VALUES (373, '180.247.131.237', 'wacana', '2022-01-14 17:22:44');
INSERT INTO `tb_visitlog_page` VALUES (374, '180.247.131.237', 'news', '2022-01-14 17:22:46');
INSERT INTO `tb_visitlog_page` VALUES (375, '66.249.70.90', 'home', '2022-01-14 20:50:02');
INSERT INTO `tb_visitlog_page` VALUES (376, '66.249.70.80', 'menu', '2022-01-14 21:22:03');
INSERT INTO `tb_visitlog_page` VALUES (377, '66.249.64.106', 'home', '2022-01-15 08:22:49');
INSERT INTO `tb_visitlog_page` VALUES (378, '66.249.70.86', 'menu', '2022-01-15 18:02:27');
INSERT INTO `tb_visitlog_page` VALUES (379, '66.249.70.90', 'menu', '2022-01-16 05:33:17');
INSERT INTO `tb_visitlog_page` VALUES (380, '66.249.64.106', 'menu', '2022-01-16 19:10:37');
INSERT INTO `tb_visitlog_page` VALUES (381, '207.46.13.213', 'wacana', '2022-01-17 05:02:57');
INSERT INTO `tb_visitlog_page` VALUES (382, '66.249.70.86', 'home', '2022-01-17 08:06:00');
INSERT INTO `tb_visitlog_page` VALUES (383, '125.164.2.179', 'news', '2022-01-17 09:06:27');
INSERT INTO `tb_visitlog_page` VALUES (384, '180.247.131.237', 'home', '2022-01-17 09:10:32');
INSERT INTO `tb_visitlog_page` VALUES (385, '180.247.131.237', 'order', '2022-01-17 09:10:34');
INSERT INTO `tb_visitlog_page` VALUES (386, '180.247.131.237', 'open po', '2022-01-17 09:10:35');
INSERT INTO `tb_visitlog_page` VALUES (387, '202.6.227.46', 'open po', '2022-01-17 09:13:38');
INSERT INTO `tb_visitlog_page` VALUES (388, '125.164.2.179', 'open po', '2022-01-17 09:22:20');
INSERT INTO `tb_visitlog_page` VALUES (389, '180.247.131.237', 'open po', '2022-01-17 09:40:08');
INSERT INTO `tb_visitlog_page` VALUES (390, '180.247.131.237', 'keranjang', '2022-01-17 09:40:15');
INSERT INTO `tb_visitlog_page` VALUES (391, '180.247.131.237', 'open po', '2022-01-17 09:40:19');
INSERT INTO `tb_visitlog_page` VALUES (392, '180.247.131.237', 'open po', '2022-01-17 09:40:46');
INSERT INTO `tb_visitlog_page` VALUES (393, '180.247.131.237', 'home', '2022-01-17 09:42:56');
INSERT INTO `tb_visitlog_page` VALUES (394, '180.247.131.237', 'order', '2022-01-17 09:42:58');
INSERT INTO `tb_visitlog_page` VALUES (395, '180.247.131.237', 'open po', '2022-01-17 09:43:00');
INSERT INTO `tb_visitlog_page` VALUES (396, '125.164.2.179', 'home', '2022-01-17 09:52:14');
INSERT INTO `tb_visitlog_page` VALUES (397, '125.164.2.179', 'open po', '2022-01-17 09:52:16');
INSERT INTO `tb_visitlog_page` VALUES (398, '180.247.131.237', 'home', '2022-01-17 10:24:43');
INSERT INTO `tb_visitlog_page` VALUES (399, '180.247.131.237', 'open po', '2022-01-17 10:25:00');
INSERT INTO `tb_visitlog_page` VALUES (400, '180.247.131.237', 'keranjang', '2022-01-17 10:25:22');
INSERT INTO `tb_visitlog_page` VALUES (401, '180.247.131.237', 'home', '2022-01-17 10:25:45');
INSERT INTO `tb_visitlog_page` VALUES (402, '180.247.131.237', 'home', '2022-01-17 10:40:12');
INSERT INTO `tb_visitlog_page` VALUES (403, '180.247.131.237', 'menu', '2022-01-17 10:40:14');
INSERT INTO `tb_visitlog_page` VALUES (404, '66.249.70.86', 'home', '2022-01-17 18:02:00');
INSERT INTO `tb_visitlog_page` VALUES (405, '140.0.79.86', 'home', '2022-01-17 21:05:37');
INSERT INTO `tb_visitlog_page` VALUES (406, '66.249.70.86', 'menu', '2022-01-17 21:05:45');
INSERT INTO `tb_visitlog_page` VALUES (407, '175.158.38.64', 'wacana', '2022-01-17 23:05:10');
INSERT INTO `tb_visitlog_page` VALUES (408, '125.164.2.179', 'home', '2022-01-18 11:40:24');
INSERT INTO `tb_visitlog_page` VALUES (409, '125.164.2.179', 'wacana', '2022-01-18 11:40:25');
INSERT INTO `tb_visitlog_page` VALUES (410, '125.164.2.179', 'news', '2022-01-18 11:42:13');
INSERT INTO `tb_visitlog_page` VALUES (411, '180.247.131.237', 'home', '2022-01-18 11:43:37');
INSERT INTO `tb_visitlog_page` VALUES (412, '125.164.2.179', 'news', '2022-01-18 11:43:38');
INSERT INTO `tb_visitlog_page` VALUES (413, '180.247.131.237', 'wacana', '2022-01-18 11:43:38');
INSERT INTO `tb_visitlog_page` VALUES (414, '125.164.2.179', 'wacana', '2022-01-18 11:43:41');
INSERT INTO `tb_visitlog_page` VALUES (415, '180.247.131.237', 'news', '2022-01-18 11:43:44');
INSERT INTO `tb_visitlog_page` VALUES (416, '180.247.131.237', 'news', '2022-01-18 15:34:04');
INSERT INTO `tb_visitlog_page` VALUES (417, '66.249.64.110', 'home', '2022-01-18 18:54:34');
INSERT INTO `tb_visitlog_page` VALUES (418, '18.191.206.138', 'home', '2022-01-19 01:53:38');
INSERT INTO `tb_visitlog_page` VALUES (419, '66.249.70.74', 'open po', '2022-01-19 03:55:03');
INSERT INTO `tb_visitlog_page` VALUES (420, '66.249.64.108', 'kebijakan privasi', '2022-01-19 07:55:12');
INSERT INTO `tb_visitlog_page` VALUES (421, '66.249.70.74', 'home', '2022-01-19 08:36:48');
INSERT INTO `tb_visitlog_page` VALUES (422, '66.249.70.90', 'kebijakan privasi', '2022-01-19 09:47:37');
INSERT INTO `tb_visitlog_page` VALUES (423, '66.249.70.86', 'wacana', '2022-01-19 12:46:41');
INSERT INTO `tb_visitlog_page` VALUES (424, '180.247.131.237', 'home', '2022-01-19 13:37:55');
INSERT INTO `tb_visitlog_page` VALUES (425, '180.247.131.237', 'wacana', '2022-01-19 13:37:57');
INSERT INTO `tb_visitlog_page` VALUES (426, '180.247.131.237', 'home', '2022-01-19 13:38:07');
INSERT INTO `tb_visitlog_page` VALUES (427, '180.247.131.237', 'wacana', '2022-01-19 13:38:08');
INSERT INTO `tb_visitlog_page` VALUES (428, '180.247.131.237', 'news', '2022-01-19 13:38:13');
INSERT INTO `tb_visitlog_page` VALUES (429, '180.247.131.237', 'news', '2022-01-19 13:39:18');
INSERT INTO `tb_visitlog_page` VALUES (430, '180.247.131.237', 'news', '2022-01-19 13:39:56');
INSERT INTO `tb_visitlog_page` VALUES (431, '180.247.131.237', 'order', '2022-01-19 13:40:04');
INSERT INTO `tb_visitlog_page` VALUES (432, '180.247.131.237', 'news', '2022-01-19 13:40:07');
INSERT INTO `tb_visitlog_page` VALUES (433, '180.247.131.237', 'news', '2022-01-19 13:43:09');
INSERT INTO `tb_visitlog_page` VALUES (434, '180.247.131.237', 'wacana', '2022-01-19 13:43:21');
INSERT INTO `tb_visitlog_page` VALUES (435, '180.247.131.237', 'news', '2022-01-19 13:43:34');
INSERT INTO `tb_visitlog_page` VALUES (436, '180.247.131.237', 'news', '2022-01-19 13:47:20');
INSERT INTO `tb_visitlog_page` VALUES (437, '180.247.131.237', 'wacana', '2022-01-19 13:47:24');
INSERT INTO `tb_visitlog_page` VALUES (438, '180.247.131.237', 'wacana', '2022-01-19 13:48:03');
INSERT INTO `tb_visitlog_page` VALUES (439, '180.247.131.237', 'wacana', '2022-01-19 13:48:05');
INSERT INTO `tb_visitlog_page` VALUES (440, '180.247.131.237', 'news', '2022-01-19 13:48:08');
INSERT INTO `tb_visitlog_page` VALUES (441, '180.247.131.237', 'news', '2022-01-19 13:49:35');
INSERT INTO `tb_visitlog_page` VALUES (442, '180.247.131.237', 'wacana', '2022-01-19 13:51:35');
INSERT INTO `tb_visitlog_page` VALUES (443, '202.6.227.46', 'news', '2022-01-19 14:03:53');
INSERT INTO `tb_visitlog_page` VALUES (444, '202.6.227.46', 'keranjang', '2022-01-19 17:03:33');
INSERT INTO `tb_visitlog_page` VALUES (445, '66.249.70.84', 'home', '2022-01-19 18:08:07');
INSERT INTO `tb_visitlog_page` VALUES (446, '66.249.64.108', 'home', '2022-01-20 08:21:14');
INSERT INTO `tb_visitlog_page` VALUES (447, '180.247.131.237', 'home', '2022-01-20 08:41:03');
INSERT INTO `tb_visitlog_page` VALUES (448, '180.247.131.237', 'wacana', '2022-01-20 08:41:56');
INSERT INTO `tb_visitlog_page` VALUES (449, '66.249.70.88', 'home', '2022-01-20 08:55:53');
INSERT INTO `tb_visitlog_page` VALUES (450, '125.164.2.179', 'wacana', '2022-01-20 09:45:31');
INSERT INTO `tb_visitlog_page` VALUES (451, '125.164.2.179', 'home', '2022-01-20 11:10:13');
INSERT INTO `tb_visitlog_page` VALUES (452, '125.164.2.179', 'wacana', '2022-01-20 11:10:13');
INSERT INTO `tb_visitlog_page` VALUES (453, '125.164.2.179', 'galeri', '2022-01-20 11:10:35');
INSERT INTO `tb_visitlog_page` VALUES (454, '125.164.2.179', 'wacana', '2022-01-20 11:10:36');
INSERT INTO `tb_visitlog_page` VALUES (455, '125.164.2.179', 'menu', '2022-01-20 11:10:40');
INSERT INTO `tb_visitlog_page` VALUES (456, '66.249.64.102', 'menu', '2022-01-20 12:34:40');
INSERT INTO `tb_visitlog_page` VALUES (457, '66.249.70.90', 'home', '2022-01-20 13:35:14');
INSERT INTO `tb_visitlog_page` VALUES (458, '180.247.131.237', 'news', '2022-01-20 13:42:08');
INSERT INTO `tb_visitlog_page` VALUES (459, '202.6.227.46', 'home', '2022-01-20 13:46:09');
INSERT INTO `tb_visitlog_page` VALUES (460, '180.247.131.237', 'home', '2022-01-20 14:37:24');
INSERT INTO `tb_visitlog_page` VALUES (461, '180.247.131.237', 'wacana', '2022-01-20 14:37:24');
INSERT INTO `tb_visitlog_page` VALUES (462, '180.247.131.237', 'wacana', '2022-01-20 14:39:55');
INSERT INTO `tb_visitlog_page` VALUES (463, '180.247.131.237', 'news', '2022-01-20 14:40:00');
INSERT INTO `tb_visitlog_page` VALUES (464, '125.164.2.179', 'wacana', '2022-01-20 15:08:59');
INSERT INTO `tb_visitlog_page` VALUES (465, '125.164.2.179', 'news', '2022-01-20 15:09:01');
INSERT INTO `tb_visitlog_page` VALUES (466, '125.164.2.179', 'wacana', '2022-01-20 15:09:06');
INSERT INTO `tb_visitlog_page` VALUES (467, '125.164.2.179', 'wacana', '2022-01-20 15:09:51');
INSERT INTO `tb_visitlog_page` VALUES (468, '180.247.131.237', 'news', '2022-01-20 15:47:58');
INSERT INTO `tb_visitlog_page` VALUES (469, '202.6.227.46', 'home', '2022-01-20 16:27:22');
INSERT INTO `tb_visitlog_page` VALUES (470, '66.249.64.38', 'home', '2022-01-20 16:59:13');
INSERT INTO `tb_visitlog_page` VALUES (471, '125.164.2.179', 'news', '2022-01-20 17:13:13');
INSERT INTO `tb_visitlog_page` VALUES (472, '125.164.2.179', 'news', '2022-01-20 17:13:53');
INSERT INTO `tb_visitlog_page` VALUES (473, '66.249.64.152', 'home', '2022-01-20 18:47:07');
INSERT INTO `tb_visitlog_page` VALUES (474, '66.249.70.90', 'open po', '2022-01-20 18:49:33');
INSERT INTO `tb_visitlog_page` VALUES (475, '66.249.64.102', 'wacana', '2022-01-20 19:29:31');
INSERT INTO `tb_visitlog_page` VALUES (476, '66.249.70.90', 'menu', '2022-01-21 02:04:06');
INSERT INTO `tb_visitlog_page` VALUES (477, '66.249.70.90', 'home', '2022-01-21 02:22:32');
INSERT INTO `tb_visitlog_page` VALUES (478, '66.249.64.38', 'home', '2022-01-21 02:40:43');
INSERT INTO `tb_visitlog_page` VALUES (479, '66.249.64.102', 'menu', '2022-01-21 03:55:28');
INSERT INTO `tb_visitlog_page` VALUES (480, '66.249.70.90', 'home', '2022-01-21 07:16:06');
INSERT INTO `tb_visitlog_page` VALUES (481, '125.164.1.42', 'home', '2022-01-21 08:22:13');
INSERT INTO `tb_visitlog_page` VALUES (482, '125.164.1.42', 'wacana', '2022-01-21 08:22:16');
INSERT INTO `tb_visitlog_page` VALUES (483, '125.164.1.42', 'news', '2022-01-21 08:22:19');
INSERT INTO `tb_visitlog_page` VALUES (484, '125.164.1.42', 'order', '2022-01-21 08:22:55');
INSERT INTO `tb_visitlog_page` VALUES (485, '125.164.1.42', 'order', '2022-01-21 08:23:42');
INSERT INTO `tb_visitlog_page` VALUES (486, '125.164.1.42', 'menu', '2022-01-21 08:23:44');
INSERT INTO `tb_visitlog_page` VALUES (487, '125.164.1.42', 'order', '2022-01-21 08:24:12');
INSERT INTO `tb_visitlog_page` VALUES (488, '125.164.1.42', 'order', '2022-01-21 08:24:35');
INSERT INTO `tb_visitlog_page` VALUES (489, '202.6.227.46', 'home', '2022-01-21 08:28:55');
INSERT INTO `tb_visitlog_page` VALUES (490, '202.6.227.46', 'wacana', '2022-01-21 08:29:02');
INSERT INTO `tb_visitlog_page` VALUES (491, '202.6.227.46', 'news', '2022-01-21 08:29:06');
INSERT INTO `tb_visitlog_page` VALUES (492, '202.6.227.46', 'order', '2022-01-21 08:29:17');
INSERT INTO `tb_visitlog_page` VALUES (493, '202.6.227.46', 'news', '2022-01-21 08:29:21');
INSERT INTO `tb_visitlog_page` VALUES (494, '36.74.53.228', 'news', '2022-01-21 08:29:56');
INSERT INTO `tb_visitlog_page` VALUES (495, '36.74.53.228', 'order', '2022-01-21 08:30:08');
INSERT INTO `tb_visitlog_page` VALUES (496, '36.74.53.228', 'news', '2022-01-21 08:30:11');
INSERT INTO `tb_visitlog_page` VALUES (497, '36.74.53.228', 'news', '2022-01-21 08:30:51');
INSERT INTO `tb_visitlog_page` VALUES (498, '202.6.227.46', 'order', '2022-01-21 08:31:34');
INSERT INTO `tb_visitlog_page` VALUES (499, '202.6.227.46', 'news', '2022-01-21 08:31:38');
INSERT INTO `tb_visitlog_page` VALUES (500, '36.74.53.228', 'order', '2022-01-21 08:32:40');
INSERT INTO `tb_visitlog_page` VALUES (501, '36.74.53.228', 'menu', '2022-01-21 08:32:42');
INSERT INTO `tb_visitlog_page` VALUES (502, '36.74.53.228', 'wacana', '2022-01-21 08:32:44');
INSERT INTO `tb_visitlog_page` VALUES (503, '36.74.53.228', 'news', '2022-01-21 08:32:45');
INSERT INTO `tb_visitlog_page` VALUES (504, '36.74.53.228', 'order', '2022-01-21 08:32:48');
INSERT INTO `tb_visitlog_page` VALUES (505, '36.74.53.228', 'order', '2022-01-21 08:32:55');
INSERT INTO `tb_visitlog_page` VALUES (506, '125.164.1.42', 'news', '2022-01-21 08:39:39');
INSERT INTO `tb_visitlog_page` VALUES (507, '36.74.53.228', 'order', '2022-01-21 08:42:43');
INSERT INTO `tb_visitlog_page` VALUES (508, '36.74.53.228', 'news', '2022-01-21 08:42:44');
INSERT INTO `tb_visitlog_page` VALUES (509, '36.74.53.228', 'order', '2022-01-21 08:43:09');
INSERT INTO `tb_visitlog_page` VALUES (510, '125.164.1.42', 'syarat & ketentuan', '2022-01-21 08:56:36');
INSERT INTO `tb_visitlog_page` VALUES (511, '36.74.53.228', 'order', '2022-01-21 08:56:40');
INSERT INTO `tb_visitlog_page` VALUES (512, '125.164.1.42', 'kebijakan privasi', '2022-01-21 08:56:41');
INSERT INTO `tb_visitlog_page` VALUES (513, '36.74.53.228', 'news', '2022-01-21 08:56:41');
INSERT INTO `tb_visitlog_page` VALUES (514, '125.164.1.42', 'syarat & ketentuan', '2022-01-21 08:56:45');
INSERT INTO `tb_visitlog_page` VALUES (515, '66.249.72.170', 'home', '2022-01-21 09:22:57');
INSERT INTO `tb_visitlog_page` VALUES (516, '125.164.1.42', 'home', '2022-01-21 09:24:23');
INSERT INTO `tb_visitlog_page` VALUES (517, '125.164.1.42', 'wacana', '2022-01-21 09:24:24');
INSERT INTO `tb_visitlog_page` VALUES (518, '36.74.53.228', 'wacana', '2022-01-21 09:24:40');
INSERT INTO `tb_visitlog_page` VALUES (519, '36.74.53.228', 'news', '2022-01-21 09:24:42');
INSERT INTO `tb_visitlog_page` VALUES (520, '125.164.1.42', 'home', '2022-01-21 09:26:18');
INSERT INTO `tb_visitlog_page` VALUES (521, '125.164.1.42', 'wacana', '2022-01-21 09:26:21');
INSERT INTO `tb_visitlog_page` VALUES (522, '125.164.1.42', 'news', '2022-01-21 09:26:24');
INSERT INTO `tb_visitlog_page` VALUES (523, '125.164.1.42', 'news', '2022-01-21 09:28:13');
INSERT INTO `tb_visitlog_page` VALUES (524, '36.74.53.228', 'news', '2022-01-21 09:28:34');
INSERT INTO `tb_visitlog_page` VALUES (525, '125.164.1.42', 'news', '2022-01-21 09:28:46');
INSERT INTO `tb_visitlog_page` VALUES (526, '36.74.53.228', 'news', '2022-01-21 09:28:54');
INSERT INTO `tb_visitlog_page` VALUES (527, '36.74.53.228', 'news', '2022-01-21 09:29:41');
INSERT INTO `tb_visitlog_page` VALUES (528, '36.74.53.228', 'news', '2022-01-21 09:31:10');
INSERT INTO `tb_visitlog_page` VALUES (529, '125.164.1.42', 'news', '2022-01-21 09:31:14');
INSERT INTO `tb_visitlog_page` VALUES (530, '125.164.1.42', 'news', '2022-01-21 09:31:26');
INSERT INTO `tb_visitlog_page` VALUES (531, '125.164.1.42', 'wacana', '2022-01-21 09:31:28');
INSERT INTO `tb_visitlog_page` VALUES (532, '125.164.1.42', 'news', '2022-01-21 09:31:30');
INSERT INTO `tb_visitlog_page` VALUES (533, '125.164.1.42', 'wacana', '2022-01-21 09:31:32');
INSERT INTO `tb_visitlog_page` VALUES (534, '125.164.1.42', 'news', '2022-01-21 09:31:33');
INSERT INTO `tb_visitlog_page` VALUES (535, '36.74.53.228', 'news', '2022-01-21 09:40:46');
INSERT INTO `tb_visitlog_page` VALUES (536, '125.164.1.42', 'wacana', '2022-01-21 09:45:10');
INSERT INTO `tb_visitlog_page` VALUES (537, '125.164.1.42', 'news', '2022-01-21 09:45:16');
INSERT INTO `tb_visitlog_page` VALUES (538, '125.164.1.42', 'open po', '2022-01-21 09:45:20');
INSERT INTO `tb_visitlog_page` VALUES (539, '125.164.1.42', 'wacana', '2022-01-21 09:45:22');
INSERT INTO `tb_visitlog_page` VALUES (540, '125.164.1.42', 'news', '2022-01-21 09:45:24');
INSERT INTO `tb_visitlog_page` VALUES (541, '125.164.1.42', 'order', '2022-01-21 09:45:25');
INSERT INTO `tb_visitlog_page` VALUES (542, '125.164.1.42', 'wacana', '2022-01-21 09:45:27');
INSERT INTO `tb_visitlog_page` VALUES (543, '125.164.1.42', 'news', '2022-01-21 09:45:28');
INSERT INTO `tb_visitlog_page` VALUES (544, '36.74.53.228', 'news', '2022-01-21 09:54:20');
INSERT INTO `tb_visitlog_page` VALUES (545, '125.164.1.42', 'news', '2022-01-21 09:56:53');
INSERT INTO `tb_visitlog_page` VALUES (546, '36.74.53.228', 'news', '2022-01-21 09:59:46');
INSERT INTO `tb_visitlog_page` VALUES (547, '36.74.53.228', 'news', '2022-01-21 10:00:46');
INSERT INTO `tb_visitlog_page` VALUES (548, '125.164.1.42', 'news', '2022-01-21 10:05:52');
INSERT INTO `tb_visitlog_page` VALUES (549, '36.74.53.228', 'news', '2022-01-21 10:06:17');
INSERT INTO `tb_visitlog_page` VALUES (550, '125.164.1.42', 'news', '2022-01-21 10:06:39');
INSERT INTO `tb_visitlog_page` VALUES (551, '36.74.53.228', 'news', '2022-01-21 10:06:55');
INSERT INTO `tb_visitlog_page` VALUES (552, '36.74.53.228', 'news', '2022-01-21 10:08:22');
INSERT INTO `tb_visitlog_page` VALUES (553, '36.74.53.228', 'news', '2022-01-21 10:09:04');
INSERT INTO `tb_visitlog_page` VALUES (554, '36.74.53.228', 'news', '2022-01-21 10:10:47');
INSERT INTO `tb_visitlog_page` VALUES (555, '36.74.53.228', 'news', '2022-01-21 10:11:28');
INSERT INTO `tb_visitlog_page` VALUES (556, '36.74.53.228', 'news', '2022-01-21 10:12:23');
INSERT INTO `tb_visitlog_page` VALUES (557, '125.164.1.42', 'news', '2022-01-21 10:14:36');
INSERT INTO `tb_visitlog_page` VALUES (558, '36.74.53.228', 'news', '2022-01-21 10:14:47');
INSERT INTO `tb_visitlog_page` VALUES (559, '36.74.53.228', 'news', '2022-01-21 10:15:43');
INSERT INTO `tb_visitlog_page` VALUES (560, '125.164.1.42', 'news', '2022-01-21 10:16:05');
INSERT INTO `tb_visitlog_page` VALUES (561, '125.164.1.42', 'news', '2022-01-21 10:17:20');
INSERT INTO `tb_visitlog_page` VALUES (562, '36.74.53.228', 'news', '2022-01-21 10:17:45');
INSERT INTO `tb_visitlog_page` VALUES (563, '125.164.1.42', 'news', '2022-01-21 10:20:38');
INSERT INTO `tb_visitlog_page` VALUES (564, '125.164.1.42', 'news', '2022-01-21 10:21:09');
INSERT INTO `tb_visitlog_page` VALUES (565, '36.74.53.228', 'news', '2022-01-21 10:22:10');
INSERT INTO `tb_visitlog_page` VALUES (566, '36.74.53.228', 'news', '2022-01-21 10:22:30');
INSERT INTO `tb_visitlog_page` VALUES (567, '36.74.53.228', 'news', '2022-01-21 10:27:56');
INSERT INTO `tb_visitlog_page` VALUES (568, '36.74.53.228', 'news', '2022-01-21 10:30:29');
INSERT INTO `tb_visitlog_page` VALUES (569, '36.74.53.228', 'news', '2022-01-21 10:30:57');
INSERT INTO `tb_visitlog_page` VALUES (570, '36.74.53.228', 'news', '2022-01-21 10:31:25');
INSERT INTO `tb_visitlog_page` VALUES (571, '36.74.53.228', 'news', '2022-01-21 10:32:19');
INSERT INTO `tb_visitlog_page` VALUES (572, '125.164.1.42', 'news', '2022-01-21 10:33:20');
INSERT INTO `tb_visitlog_page` VALUES (573, '125.164.1.42', 'news', '2022-01-21 10:45:20');
INSERT INTO `tb_visitlog_page` VALUES (574, '36.74.53.228', 'news', '2022-01-21 10:46:54');
INSERT INTO `tb_visitlog_page` VALUES (575, '36.74.53.228', 'news', '2022-01-21 10:47:21');
INSERT INTO `tb_visitlog_page` VALUES (576, '36.74.53.228', 'news', '2022-01-21 10:47:54');
INSERT INTO `tb_visitlog_page` VALUES (577, '125.164.1.42', 'news', '2022-01-21 10:48:39');
INSERT INTO `tb_visitlog_page` VALUES (578, '36.74.53.228', 'news', '2022-01-21 10:49:39');
INSERT INTO `tb_visitlog_page` VALUES (579, '36.74.53.228', 'news', '2022-01-21 10:50:45');
INSERT INTO `tb_visitlog_page` VALUES (580, '125.164.1.42', 'news', '2022-01-21 10:51:02');
INSERT INTO `tb_visitlog_page` VALUES (581, '36.74.53.228', 'news', '2022-01-21 10:51:21');
INSERT INTO `tb_visitlog_page` VALUES (582, '125.164.1.42', 'news', '2022-01-21 10:51:43');
INSERT INTO `tb_visitlog_page` VALUES (583, '125.164.1.42', 'news', '2022-01-21 10:52:43');
INSERT INTO `tb_visitlog_page` VALUES (584, '36.74.53.228', 'news', '2022-01-21 10:53:14');
INSERT INTO `tb_visitlog_page` VALUES (585, '36.74.53.228', 'news', '2022-01-21 10:53:29');
INSERT INTO `tb_visitlog_page` VALUES (586, '36.74.53.228', 'news', '2022-01-21 10:53:58');
INSERT INTO `tb_visitlog_page` VALUES (587, '66.249.64.152', 'wacana', '2022-01-21 10:54:13');
INSERT INTO `tb_visitlog_page` VALUES (588, '125.164.1.42', 'news', '2022-01-21 10:54:24');
INSERT INTO `tb_visitlog_page` VALUES (589, '36.74.53.228', 'news', '2022-01-21 10:54:58');
INSERT INTO `tb_visitlog_page` VALUES (590, '125.164.1.42', 'news', '2022-01-21 10:55:52');
INSERT INTO `tb_visitlog_page` VALUES (591, '125.164.1.42', 'news', '2022-01-21 10:58:28');
INSERT INTO `tb_visitlog_page` VALUES (592, '125.164.1.42', 'news', '2022-01-21 11:01:11');
INSERT INTO `tb_visitlog_page` VALUES (593, '36.74.53.228', 'news', '2022-01-21 11:01:22');
INSERT INTO `tb_visitlog_page` VALUES (594, '36.74.53.228', 'news', '2022-01-21 11:01:37');
INSERT INTO `tb_visitlog_page` VALUES (595, '202.6.227.46', 'news', '2022-01-21 11:02:34');
INSERT INTO `tb_visitlog_page` VALUES (596, '202.6.227.46', 'wacana', '2022-01-21 11:02:44');
INSERT INTO `tb_visitlog_page` VALUES (597, '202.6.227.46', 'news', '2022-01-21 11:02:46');
INSERT INTO `tb_visitlog_page` VALUES (598, '125.164.1.42', 'news', '2022-01-21 11:05:51');
INSERT INTO `tb_visitlog_page` VALUES (599, '125.164.1.42', 'news', '2022-01-21 11:06:31');
INSERT INTO `tb_visitlog_page` VALUES (600, '36.74.53.228', 'news', '2022-01-21 11:07:56');
INSERT INTO `tb_visitlog_page` VALUES (601, '125.164.1.42', 'news', '2022-01-21 11:08:11');
INSERT INTO `tb_visitlog_page` VALUES (602, '125.164.1.42', 'news', '2022-01-21 11:08:15');
INSERT INTO `tb_visitlog_page` VALUES (603, '125.164.1.42', 'news', '2022-01-21 11:08:26');
INSERT INTO `tb_visitlog_page` VALUES (604, '36.74.53.228', 'home', '2022-01-21 11:10:26');
INSERT INTO `tb_visitlog_page` VALUES (605, '36.74.53.228', 'wacana', '2022-01-21 11:10:30');
INSERT INTO `tb_visitlog_page` VALUES (606, '36.74.53.228', 'wacana', '2022-01-21 11:10:43');
INSERT INTO `tb_visitlog_page` VALUES (607, '36.74.53.228', 'news', '2022-01-21 11:10:48');
INSERT INTO `tb_visitlog_page` VALUES (608, '202.6.227.46', 'news', '2022-01-21 11:14:59');
INSERT INTO `tb_visitlog_page` VALUES (609, '36.74.53.228', 'news', '2022-01-21 11:17:14');
INSERT INTO `tb_visitlog_page` VALUES (610, '36.74.53.228', 'news', '2022-01-21 11:17:49');
INSERT INTO `tb_visitlog_page` VALUES (611, '36.74.53.228', 'news', '2022-01-21 11:19:26');
INSERT INTO `tb_visitlog_page` VALUES (612, '202.6.227.46', 'news', '2022-01-21 11:24:58');
INSERT INTO `tb_visitlog_page` VALUES (613, '202.6.227.46', 'news', '2022-01-21 11:25:03');
INSERT INTO `tb_visitlog_page` VALUES (614, '202.6.227.46', 'news', '2022-01-21 11:26:36');
INSERT INTO `tb_visitlog_page` VALUES (615, '36.74.53.228', 'wacana', '2022-01-21 11:27:41');
INSERT INTO `tb_visitlog_page` VALUES (616, '36.74.53.228', 'news', '2022-01-21 11:27:43');
INSERT INTO `tb_visitlog_page` VALUES (617, '36.74.53.228', 'wacana', '2022-01-21 11:28:01');
INSERT INTO `tb_visitlog_page` VALUES (618, '36.74.53.228', 'news', '2022-01-21 11:28:05');
INSERT INTO `tb_visitlog_page` VALUES (619, '36.74.53.228', 'wacana', '2022-01-21 11:28:28');
INSERT INTO `tb_visitlog_page` VALUES (620, '36.74.53.228', 'news', '2022-01-21 11:28:32');
INSERT INTO `tb_visitlog_page` VALUES (621, '125.164.1.42', 'home', '2022-01-21 11:28:53');
INSERT INTO `tb_visitlog_page` VALUES (622, '125.164.1.42', 'wacana', '2022-01-21 11:28:55');
INSERT INTO `tb_visitlog_page` VALUES (623, '125.164.1.42', 'news', '2022-01-21 11:28:57');
INSERT INTO `tb_visitlog_page` VALUES (624, '202.6.227.46', 'news', '2022-01-21 11:29:01');
INSERT INTO `tb_visitlog_page` VALUES (625, '125.164.1.42', 'news', '2022-01-21 11:29:27');
INSERT INTO `tb_visitlog_page` VALUES (626, '66.249.64.152', 'open po', '2022-01-21 11:31:51');
INSERT INTO `tb_visitlog_page` VALUES (627, '125.164.1.42', 'news', '2022-01-21 11:37:41');
INSERT INTO `tb_visitlog_page` VALUES (628, '125.164.1.42', 'news', '2022-01-21 12:33:39');
INSERT INTO `tb_visitlog_page` VALUES (629, '125.164.1.42', 'news', '2022-01-21 12:33:50');
INSERT INTO `tb_visitlog_page` VALUES (630, '202.6.227.46', 'news', '2022-01-21 13:04:30');
INSERT INTO `tb_visitlog_page` VALUES (631, '125.164.1.42', 'home', '2022-01-21 14:18:03');
INSERT INTO `tb_visitlog_page` VALUES (632, '125.164.1.42', 'kontak', '2022-01-21 14:18:16');
INSERT INTO `tb_visitlog_page` VALUES (633, '125.164.1.42', 'keranjang', '2022-01-21 14:18:16');
INSERT INTO `tb_visitlog_page` VALUES (634, '125.164.1.42', 'order', '2022-01-21 14:18:18');
INSERT INTO `tb_visitlog_page` VALUES (635, '125.164.1.42', 'menu', '2022-01-21 14:18:20');
INSERT INTO `tb_visitlog_page` VALUES (636, '125.164.1.42', 'order', '2022-01-21 14:18:41');
INSERT INTO `tb_visitlog_page` VALUES (637, '125.164.1.42', 'open po', '2022-01-21 14:18:42');
INSERT INTO `tb_visitlog_page` VALUES (638, '36.74.53.228', 'home', '2022-01-21 14:39:29');
INSERT INTO `tb_visitlog_page` VALUES (639, '36.74.53.228', 'order', '2022-01-21 14:39:35');
INSERT INTO `tb_visitlog_page` VALUES (640, '36.74.53.228', 'open po', '2022-01-21 14:39:37');
INSERT INTO `tb_visitlog_page` VALUES (641, '125.164.1.42', 'open po', '2022-01-21 14:45:49');
INSERT INTO `tb_visitlog_page` VALUES (642, '202.6.227.46', 'news', '2022-01-21 15:08:47');
INSERT INTO `tb_visitlog_page` VALUES (643, '45.121.219.4', 'wacana', '2022-01-21 17:03:34');
INSERT INTO `tb_visitlog_page` VALUES (644, '125.164.1.42', 'home', '2022-01-21 17:25:08');
INSERT INTO `tb_visitlog_page` VALUES (645, '125.164.1.42', 'wacana', '2022-01-21 17:25:09');
INSERT INTO `tb_visitlog_page` VALUES (646, '125.164.1.42', 'news', '2022-01-21 17:25:10');
INSERT INTO `tb_visitlog_page` VALUES (647, '66.249.70.74', 'home', '2022-01-21 18:04:01');
INSERT INTO `tb_visitlog_page` VALUES (648, '66.249.70.90', 'kebijakan privasi', '2022-01-21 18:23:12');
INSERT INTO `tb_visitlog_page` VALUES (649, '40.77.167.10', 'menu', '2022-01-21 22:37:07');
INSERT INTO `tb_visitlog_page` VALUES (650, '66.249.70.82', 'home', '2022-01-22 03:19:23');
INSERT INTO `tb_visitlog_page` VALUES (651, '66.249.72.170', 'kebijakan privasi', '2022-01-22 04:35:34');
INSERT INTO `tb_visitlog_page` VALUES (652, '36.74.117.213', 'home', '2022-01-22 07:53:43');
INSERT INTO `tb_visitlog_page` VALUES (653, '36.74.117.213', 'wacana', '2022-01-22 07:53:45');
INSERT INTO `tb_visitlog_page` VALUES (654, '36.74.117.213', 'news', '2022-01-22 07:53:50');
INSERT INTO `tb_visitlog_page` VALUES (655, '66.249.70.68', 'menu', '2022-01-22 08:31:43');
INSERT INTO `tb_visitlog_page` VALUES (656, '66.249.70.68', 'home', '2022-01-22 16:43:27');
INSERT INTO `tb_visitlog_page` VALUES (657, '66.249.70.80', 'menu', '2022-01-22 17:13:01');
INSERT INTO `tb_visitlog_page` VALUES (658, '66.249.64.152', 'home', '2022-01-23 01:33:59');
INSERT INTO `tb_visitlog_page` VALUES (659, '66.249.72.170', 'menu', '2022-01-23 03:41:06');
INSERT INTO `tb_visitlog_page` VALUES (660, '66.249.70.68', 'galeri', '2022-01-23 06:23:03');
INSERT INTO `tb_visitlog_page` VALUES (661, '66.249.72.170', 'tentang', '2022-01-23 16:15:46');
INSERT INTO `tb_visitlog_page` VALUES (662, '202.80.213.248', 'home', '2022-01-23 19:06:02');
INSERT INTO `tb_visitlog_page` VALUES (663, '66.249.70.80', 'home', '2022-01-24 00:49:59');
INSERT INTO `tb_visitlog_page` VALUES (664, '180.253.162.179', 'open po', '2022-01-24 08:35:40');
INSERT INTO `tb_visitlog_page` VALUES (665, '180.253.162.179', 'keranjang', '2022-01-24 08:35:48');
INSERT INTO `tb_visitlog_page` VALUES (666, '180.253.162.179', 'open po', '2022-01-24 08:35:51');
INSERT INTO `tb_visitlog_page` VALUES (667, '180.253.162.179', 'home', '2022-01-24 08:41:24');
INSERT INTO `tb_visitlog_page` VALUES (668, '180.253.162.179', 'order', '2022-01-24 08:41:26');
INSERT INTO `tb_visitlog_page` VALUES (669, '180.253.162.179', 'open po', '2022-01-24 08:41:27');
INSERT INTO `tb_visitlog_page` VALUES (670, '66.249.66.54', 'home', '2022-01-24 08:58:38');
INSERT INTO `tb_visitlog_page` VALUES (671, '202.6.227.46', 'open po', '2022-01-24 10:13:13');
INSERT INTO `tb_visitlog_page` VALUES (672, '202.6.227.46', 'open po', '2022-01-24 10:35:02');
INSERT INTO `tb_visitlog_page` VALUES (673, '202.6.227.46', 'open po', '2022-01-24 10:35:09');
INSERT INTO `tb_visitlog_page` VALUES (674, '114.5.104.140', 'home', '2022-01-24 10:48:22');
INSERT INTO `tb_visitlog_page` VALUES (675, '66.249.66.50', 'kebijakan privasi', '2022-01-24 16:09:21');
INSERT INTO `tb_visitlog_page` VALUES (676, '111.65.57.133', 'news', '2022-01-24 16:49:26');
INSERT INTO `tb_visitlog_page` VALUES (677, '66.249.70.80', 'galeri', '2022-01-24 18:32:02');
INSERT INTO `tb_visitlog_page` VALUES (678, '182.1.116.106', 'home', '2022-01-25 06:49:56');
INSERT INTO `tb_visitlog_page` VALUES (679, '182.1.116.106', 'menu', '2022-01-25 06:50:26');
INSERT INTO `tb_visitlog_page` VALUES (680, '66.249.68.5', 'home', '2022-01-25 08:32:41');
INSERT INTO `tb_visitlog_page` VALUES (681, '66.249.66.50', 'home', '2022-01-25 08:47:30');
INSERT INTO `tb_visitlog_page` VALUES (682, '182.1.112.78', 'menu', '2022-01-25 10:35:38');
INSERT INTO `tb_visitlog_page` VALUES (683, '180.253.145.64', 'home', '2022-01-25 15:32:10');
INSERT INTO `tb_visitlog_page` VALUES (684, '180.253.145.64', 'menu', '2022-01-25 15:32:17');
INSERT INTO `tb_visitlog_page` VALUES (685, '66.249.70.82', 'home', '2022-01-25 20:33:10');
INSERT INTO `tb_visitlog_page` VALUES (686, '180.247.47.33', 'home', '2022-01-25 21:50:40');
INSERT INTO `tb_visitlog_page` VALUES (687, '180.247.47.33', 'open po', '2022-01-25 21:50:51');
INSERT INTO `tb_visitlog_page` VALUES (688, '180.247.47.33', 'keranjang', '2022-01-25 21:50:56');
INSERT INTO `tb_visitlog_page` VALUES (689, '180.247.47.33', 'login', '2022-01-25 21:51:23');
INSERT INTO `tb_visitlog_page` VALUES (690, '180.247.47.33', 'keranjang', '2022-01-25 22:17:04');
INSERT INTO `tb_visitlog_page` VALUES (691, '180.247.47.33', 'home', '2022-01-25 22:21:08');
INSERT INTO `tb_visitlog_page` VALUES (692, '180.247.47.33', 'menu', '2022-01-25 22:22:03');
INSERT INTO `tb_visitlog_page` VALUES (693, '180.247.47.33', 'home', '2022-01-25 22:22:10');
INSERT INTO `tb_visitlog_page` VALUES (694, '180.247.47.33', 'open po', '2022-01-25 22:22:15');
INSERT INTO `tb_visitlog_page` VALUES (695, '180.247.47.33', 'keranjang', '2022-01-25 22:22:27');
INSERT INTO `tb_visitlog_page` VALUES (696, '66.249.64.114', 'menu', '2022-01-26 02:14:23');
INSERT INTO `tb_visitlog_page` VALUES (697, '125.164.14.104', 'home', '2022-01-26 08:33:35');
INSERT INTO `tb_visitlog_page` VALUES (698, '125.164.14.104', 'home', '2022-01-26 08:41:06');
INSERT INTO `tb_visitlog_page` VALUES (699, '125.164.14.104', 'order', '2022-01-26 08:41:12');
INSERT INTO `tb_visitlog_page` VALUES (700, '125.164.14.104', 'open po', '2022-01-26 08:41:13');
INSERT INTO `tb_visitlog_page` VALUES (701, '125.164.14.104', 'keranjang', '2022-01-26 08:41:17');
INSERT INTO `tb_visitlog_page` VALUES (702, '180.253.167.189', 'home', '2022-01-26 08:52:06');
INSERT INTO `tb_visitlog_page` VALUES (703, '180.253.167.189', 'login', '2022-01-26 08:52:12');
INSERT INTO `tb_visitlog_page` VALUES (704, '180.253.167.189', 'home', '2022-01-26 08:52:27');
INSERT INTO `tb_visitlog_page` VALUES (705, '180.253.167.189', 'login', '2022-01-26 08:52:30');
INSERT INTO `tb_visitlog_page` VALUES (706, '180.253.167.189', 'home', '2022-01-26 08:52:39');
INSERT INTO `tb_visitlog_page` VALUES (707, '180.253.167.189', 'home', '2022-01-26 08:52:43');
INSERT INTO `tb_visitlog_page` VALUES (708, '180.253.167.189', 'login', '2022-01-26 08:52:47');
INSERT INTO `tb_visitlog_page` VALUES (709, '125.164.14.104', 'home', '2022-01-26 08:53:10');
INSERT INTO `tb_visitlog_page` VALUES (710, '180.253.167.189', 'home', '2022-01-26 08:53:27');
INSERT INTO `tb_visitlog_page` VALUES (711, '180.253.167.189', 'login', '2022-01-26 08:53:31');
INSERT INTO `tb_visitlog_page` VALUES (712, '180.253.167.189', 'home', '2022-01-26 08:53:37');
INSERT INTO `tb_visitlog_page` VALUES (713, '125.164.14.104', 'home', '2022-01-26 08:54:26');
INSERT INTO `tb_visitlog_page` VALUES (714, '125.164.14.104', 'login', '2022-01-26 08:54:26');
INSERT INTO `tb_visitlog_page` VALUES (715, '125.164.14.104', 'home', '2022-01-26 08:54:34');
INSERT INTO `tb_visitlog_page` VALUES (716, '125.164.14.104', 'login', '2022-01-26 08:54:39');
INSERT INTO `tb_visitlog_page` VALUES (717, '125.164.14.104', 'login', '2022-01-26 08:54:40');
INSERT INTO `tb_visitlog_page` VALUES (718, '125.164.14.104', 'login', '2022-01-26 08:54:41');
INSERT INTO `tb_visitlog_page` VALUES (719, '125.164.14.104', 'login', '2022-01-26 08:54:41');
INSERT INTO `tb_visitlog_page` VALUES (720, '180.253.167.189', 'home', '2022-01-26 08:54:52');
INSERT INTO `tb_visitlog_page` VALUES (721, '180.253.167.189', 'home', '2022-01-26 08:56:06');
INSERT INTO `tb_visitlog_page` VALUES (722, '180.253.167.189', 'login', '2022-01-26 08:56:07');
INSERT INTO `tb_visitlog_page` VALUES (723, '180.253.167.189', 'home', '2022-01-26 08:56:11');
INSERT INTO `tb_visitlog_page` VALUES (724, '180.253.167.189', 'home', '2022-01-26 08:56:24');
INSERT INTO `tb_visitlog_page` VALUES (725, '180.253.167.189', 'home', '2022-01-26 08:56:27');
INSERT INTO `tb_visitlog_page` VALUES (726, '180.253.167.189', 'home', '2022-01-26 08:56:28');
INSERT INTO `tb_visitlog_page` VALUES (727, '180.253.167.189', 'home', '2022-01-26 08:56:28');
INSERT INTO `tb_visitlog_page` VALUES (728, '180.253.167.189', 'home', '2022-01-26 08:56:29');
INSERT INTO `tb_visitlog_page` VALUES (729, '180.253.167.189', 'home', '2022-01-26 08:56:29');
INSERT INTO `tb_visitlog_page` VALUES (730, '180.253.167.189', 'home', '2022-01-26 08:56:30');
INSERT INTO `tb_visitlog_page` VALUES (731, '180.253.167.189', 'home', '2022-01-26 08:56:30');
INSERT INTO `tb_visitlog_page` VALUES (732, '180.253.167.189', 'home', '2022-01-26 08:56:31');
INSERT INTO `tb_visitlog_page` VALUES (733, '180.253.167.189', 'login', '2022-01-26 08:56:32');
INSERT INTO `tb_visitlog_page` VALUES (734, '180.253.167.189', 'home', '2022-01-26 08:56:36');
INSERT INTO `tb_visitlog_page` VALUES (735, '180.253.167.189', 'home', '2022-01-26 08:59:05');
INSERT INTO `tb_visitlog_page` VALUES (736, '180.253.167.189', 'login', '2022-01-26 08:59:10');
INSERT INTO `tb_visitlog_page` VALUES (737, '180.253.167.189', 'home', '2022-01-26 08:59:14');
INSERT INTO `tb_visitlog_page` VALUES (738, '180.253.167.189', 'home', '2022-01-26 08:59:46');
INSERT INTO `tb_visitlog_page` VALUES (739, '180.253.167.189', 'login', '2022-01-26 08:59:48');
INSERT INTO `tb_visitlog_page` VALUES (740, '180.253.167.189', 'login', '2022-01-26 09:01:50');
INSERT INTO `tb_visitlog_page` VALUES (741, '180.253.167.189', 'home', '2022-01-26 09:01:55');
INSERT INTO `tb_visitlog_page` VALUES (742, '180.253.167.189', 'login', '2022-01-26 09:02:54');
INSERT INTO `tb_visitlog_page` VALUES (743, '180.253.167.189', 'home', '2022-01-26 09:02:58');
INSERT INTO `tb_visitlog_page` VALUES (744, '180.253.167.189', 'home', '2022-01-26 09:04:15');
INSERT INTO `tb_visitlog_page` VALUES (745, '180.253.167.189', 'login', '2022-01-26 09:04:16');
INSERT INTO `tb_visitlog_page` VALUES (746, '125.164.14.104', 'home', '2022-01-26 09:04:20');
INSERT INTO `tb_visitlog_page` VALUES (747, '125.164.14.104', 'login', '2022-01-26 09:04:24');
INSERT INTO `tb_visitlog_page` VALUES (748, '125.164.14.104', 'home', '2022-01-26 09:04:28');
INSERT INTO `tb_visitlog_page` VALUES (749, '125.164.14.104', 'home', '2022-01-26 09:08:20');
INSERT INTO `tb_visitlog_page` VALUES (750, '125.164.14.104', 'login', '2022-01-26 09:08:22');
INSERT INTO `tb_visitlog_page` VALUES (751, '180.253.167.189', 'home', '2022-01-26 09:09:28');
INSERT INTO `tb_visitlog_page` VALUES (752, '125.164.14.104', 'home', '2022-01-26 09:09:44');
INSERT INTO `tb_visitlog_page` VALUES (753, '125.164.14.104', 'login', '2022-01-26 09:09:45');
INSERT INTO `tb_visitlog_page` VALUES (754, '125.164.14.104', 'home', '2022-01-26 09:09:58');
INSERT INTO `tb_visitlog_page` VALUES (755, '180.253.167.189', 'login', '2022-01-26 09:11:25');
INSERT INTO `tb_visitlog_page` VALUES (756, '180.253.167.189', 'login', '2022-01-26 09:11:29');
INSERT INTO `tb_visitlog_page` VALUES (757, '125.164.14.104', 'kontak', '2022-01-26 09:25:52');
INSERT INTO `tb_visitlog_page` VALUES (758, '125.164.14.104', 'tentang', '2022-01-26 09:25:54');
INSERT INTO `tb_visitlog_page` VALUES (759, '125.164.14.104', 'menu', '2022-01-26 09:25:57');
INSERT INTO `tb_visitlog_page` VALUES (760, '125.164.14.104', 'galeri', '2022-01-26 09:25:58');
INSERT INTO `tb_visitlog_page` VALUES (761, '125.164.14.104', 'wacana', '2022-01-26 09:26:06');
INSERT INTO `tb_visitlog_page` VALUES (762, '180.253.167.189', 'order', '2022-01-26 09:26:16');
INSERT INTO `tb_visitlog_page` VALUES (763, '180.253.167.189', 'keranjang', '2022-01-26 09:26:18');
INSERT INTO `tb_visitlog_page` VALUES (764, '125.164.14.104', 'home', '2022-01-26 09:33:04');
INSERT INTO `tb_visitlog_page` VALUES (765, '203.78.117.185', 'wacana', '2022-01-26 10:20:13');
INSERT INTO `tb_visitlog_page` VALUES (766, '180.253.167.189', 'tentang', '2022-01-26 10:34:50');
INSERT INTO `tb_visitlog_page` VALUES (767, '180.253.167.189', 'tentang', '2022-01-26 10:41:43');
INSERT INTO `tb_visitlog_page` VALUES (768, '202.6.227.46', 'news', '2022-01-26 14:57:09');
INSERT INTO `tb_visitlog_page` VALUES (769, '202.6.227.46', 'wacana', '2022-01-26 14:57:11');
INSERT INTO `tb_visitlog_page` VALUES (770, '202.6.227.46', 'news', '2022-01-26 14:57:14');
INSERT INTO `tb_visitlog_page` VALUES (771, '202.6.227.46', 'wacana', '2022-01-26 14:57:15');
INSERT INTO `tb_visitlog_page` VALUES (772, '202.6.227.46', 'news', '2022-01-26 14:57:17');
INSERT INTO `tb_visitlog_page` VALUES (773, '202.6.227.46', 'wacana', '2022-01-26 14:57:18');
INSERT INTO `tb_visitlog_page` VALUES (774, '202.6.227.46', 'news', '2022-01-26 14:57:20');
INSERT INTO `tb_visitlog_page` VALUES (775, '202.6.227.46', 'news', '2022-01-26 14:57:24');
INSERT INTO `tb_visitlog_page` VALUES (776, '66.249.68.5', 'wacana', '2022-01-26 22:41:41');
INSERT INTO `tb_visitlog_page` VALUES (777, '66.249.74.76', 'home', '2022-01-27 01:24:39');
INSERT INTO `tb_visitlog_page` VALUES (778, '116.206.40.72', 'menu', '2022-01-27 01:32:49');
INSERT INTO `tb_visitlog_page` VALUES (779, '125.167.128.171', 'home', '2022-01-27 09:45:26');
INSERT INTO `tb_visitlog_page` VALUES (780, '125.167.128.171', 'wacana', '2022-01-27 09:45:27');
INSERT INTO `tb_visitlog_page` VALUES (781, '125.167.128.171', 'news', '2022-01-27 09:45:33');
INSERT INTO `tb_visitlog_page` VALUES (782, '125.167.128.171', 'home', '2022-01-27 09:46:46');
INSERT INTO `tb_visitlog_page` VALUES (783, '125.167.128.171', 'wacana', '2022-01-27 09:46:55');
INSERT INTO `tb_visitlog_page` VALUES (784, '125.167.128.171', 'news', '2022-01-27 09:46:58');
INSERT INTO `tb_visitlog_page` VALUES (785, '61.5.55.191', 'order', '2022-01-27 10:14:06');
INSERT INTO `tb_visitlog_page` VALUES (786, '61.5.55.191', 'open po', '2022-01-27 10:14:07');
INSERT INTO `tb_visitlog_page` VALUES (787, '61.5.55.191', 'news', '2022-01-27 13:41:57');
INSERT INTO `tb_visitlog_page` VALUES (788, '202.6.227.46', 'news', '2022-01-27 15:36:00');
INSERT INTO `tb_visitlog_page` VALUES (789, '202.6.227.46', 'wacana', '2022-01-27 15:36:08');
INSERT INTO `tb_visitlog_page` VALUES (790, '202.6.227.46', 'news', '2022-01-27 15:36:16');
INSERT INTO `tb_visitlog_page` VALUES (791, '202.6.227.46', 'wacana', '2022-01-27 15:39:32');
INSERT INTO `tb_visitlog_page` VALUES (792, '202.6.227.46', 'news', '2022-01-27 15:39:33');
INSERT INTO `tb_visitlog_page` VALUES (793, '202.6.227.46', 'news', '2022-01-27 15:39:45');
INSERT INTO `tb_visitlog_page` VALUES (794, '114.4.223.13', 'home', '2022-01-28 08:04:52');
INSERT INTO `tb_visitlog_page` VALUES (795, '66.249.70.82', 'galeri', '2022-01-28 12:50:54');
INSERT INTO `tb_visitlog_page` VALUES (796, '125.164.7.36', 'news', '2022-01-28 13:38:26');
INSERT INTO `tb_visitlog_page` VALUES (797, '66.249.70.82', 'menu', '2022-01-28 13:55:56');
INSERT INTO `tb_visitlog_page` VALUES (798, '180.247.213.229', 'home', '2022-01-28 17:04:42');
INSERT INTO `tb_visitlog_page` VALUES (799, '180.247.213.229', 'wacana', '2022-01-28 17:04:44');
INSERT INTO `tb_visitlog_page` VALUES (800, '180.247.213.229', 'news', '2022-01-28 17:04:48');
INSERT INTO `tb_visitlog_page` VALUES (801, '114.4.4.201', 'news', '2022-01-28 17:08:11');
INSERT INTO `tb_visitlog_page` VALUES (802, '66.249.64.114', 'home', '2022-01-28 21:27:47');
INSERT INTO `tb_visitlog_page` VALUES (803, '36.90.164.26', 'home', '2022-01-28 21:55:02');
INSERT INTO `tb_visitlog_page` VALUES (804, '36.90.164.26', 'wacana', '2022-01-28 21:55:08');
INSERT INTO `tb_visitlog_page` VALUES (805, '36.90.164.26', 'news', '2022-01-28 21:55:12');
INSERT INTO `tb_visitlog_page` VALUES (806, '36.90.164.26', 'menu', '2022-01-28 21:55:24');
INSERT INTO `tb_visitlog_page` VALUES (807, '17.121.115.51', 'order', '2022-01-29 01:38:34');
INSERT INTO `tb_visitlog_page` VALUES (808, '66.249.70.78', 'home', '2022-01-29 06:03:09');
INSERT INTO `tb_visitlog_page` VALUES (809, '180.253.165.104', 'news', '2022-01-29 06:48:05');
INSERT INTO `tb_visitlog_page` VALUES (810, '66.249.64.102', 'home', '2022-01-29 19:17:33');
INSERT INTO `tb_visitlog_page` VALUES (811, '66.249.70.78', 'wacana', '2022-01-29 19:54:53');
INSERT INTO `tb_visitlog_page` VALUES (812, '66.249.64.102', 'open po', '2022-01-29 20:46:27');
INSERT INTO `tb_visitlog_page` VALUES (813, '66.249.64.102', 'menu', '2022-01-30 00:13:35');
INSERT INTO `tb_visitlog_page` VALUES (814, '66.249.70.86', 'menu', '2022-01-30 07:38:45');
INSERT INTO `tb_visitlog_page` VALUES (815, '66.249.70.80', 'home', '2022-01-30 09:16:47');
INSERT INTO `tb_visitlog_page` VALUES (816, '66.249.70.86', 'home', '2022-01-30 15:11:50');
INSERT INTO `tb_visitlog_page` VALUES (817, '66.249.70.74', 'login', '2022-01-30 18:09:13');
INSERT INTO `tb_visitlog_page` VALUES (818, '66.249.70.86', 'kebijakan privasi', '2022-01-30 22:03:25');
INSERT INTO `tb_visitlog_page` VALUES (819, '66.249.70.86', 'tentang', '2022-01-31 00:35:48');
INSERT INTO `tb_visitlog_page` VALUES (820, '125.164.13.192', 'home', '2022-01-31 03:53:17');
INSERT INTO `tb_visitlog_page` VALUES (821, '125.164.13.192', 'menu', '2022-01-31 03:53:35');
INSERT INTO `tb_visitlog_page` VALUES (822, '125.164.13.192', 'menu', '2022-01-31 03:53:43');
INSERT INTO `tb_visitlog_page` VALUES (823, '125.164.13.192', 'menu', '2022-01-31 03:53:47');
INSERT INTO `tb_visitlog_page` VALUES (824, '125.164.7.36', 'home', '2022-01-31 08:38:17');
INSERT INTO `tb_visitlog_page` VALUES (825, '125.164.7.36', 'wacana', '2022-01-31 08:38:20');
INSERT INTO `tb_visitlog_page` VALUES (826, '125.164.7.36', 'tentang', '2022-01-31 08:38:28');
INSERT INTO `tb_visitlog_page` VALUES (827, '180.247.213.229', 'home', '2022-01-31 09:14:06');
INSERT INTO `tb_visitlog_page` VALUES (828, '125.164.7.36', 'home', '2022-01-31 09:14:35');
INSERT INTO `tb_visitlog_page` VALUES (829, '180.247.213.229', 'order', '2022-01-31 09:15:58');
INSERT INTO `tb_visitlog_page` VALUES (830, '180.247.213.229', 'open po', '2022-01-31 09:16:00');
INSERT INTO `tb_visitlog_page` VALUES (831, '125.164.7.36', 'home', '2022-01-31 09:16:45');
INSERT INTO `tb_visitlog_page` VALUES (832, '125.164.7.36', 'home', '2022-01-31 09:16:47');
INSERT INTO `tb_visitlog_page` VALUES (833, '180.247.213.229', 'menu', '2022-01-31 10:29:07');
INSERT INTO `tb_visitlog_page` VALUES (834, '20.84.196.6', 'home', '2022-01-31 11:06:46');
INSERT INTO `tb_visitlog_page` VALUES (835, '66.249.70.86', 'home', '2022-01-31 12:09:00');
INSERT INTO `tb_visitlog_page` VALUES (836, '125.164.7.36', 'home', '2022-01-31 12:14:50');
INSERT INTO `tb_visitlog_page` VALUES (837, '202.6.227.46', 'news', '2022-01-31 15:41:28');
INSERT INTO `tb_visitlog_page` VALUES (838, '202.6.227.46', 'news', '2022-01-31 15:41:46');
INSERT INTO `tb_visitlog_page` VALUES (839, '202.6.227.46', 'wacana', '2022-01-31 15:41:50');
INSERT INTO `tb_visitlog_page` VALUES (840, '66.249.70.78', 'kebijakan privasi', '2022-02-01 01:06:40');
INSERT INTO `tb_visitlog_page` VALUES (841, '66.249.70.86', 'wacana', '2022-02-01 03:22:56');
INSERT INTO `tb_visitlog_page` VALUES (842, '66.249.70.76', 'home', '2022-02-01 05:13:05');
INSERT INTO `tb_visitlog_page` VALUES (843, '66.249.70.86', 'kebijakan privasi', '2022-02-01 05:42:57');
INSERT INTO `tb_visitlog_page` VALUES (844, '66.249.70.80', 'wacana', '2022-02-01 09:05:57');
INSERT INTO `tb_visitlog_page` VALUES (845, '66.249.70.86', 'menu', '2022-02-02 14:23:00');
INSERT INTO `tb_visitlog_page` VALUES (846, '66.249.70.74', 'menu', '2022-02-02 14:53:00');
INSERT INTO `tb_visitlog_page` VALUES (847, '66.249.70.80', 'home', '2022-02-02 15:13:54');
INSERT INTO `tb_visitlog_page` VALUES (848, '66.249.70.68', 'kebijakan privasi', '2022-02-02 15:22:55');
INSERT INTO `tb_visitlog_page` VALUES (849, '66.249.70.76', 'wacana', '2022-02-02 20:26:36');
INSERT INTO `tb_visitlog_page` VALUES (850, '125.164.7.52', 'wacana', '2022-02-03 09:28:28');
INSERT INTO `tb_visitlog_page` VALUES (851, '202.6.227.46', 'news', '2022-02-03 09:28:38');
INSERT INTO `tb_visitlog_page` VALUES (852, '202.6.227.46', 'wacana', '2022-02-03 09:28:45');
INSERT INTO `tb_visitlog_page` VALUES (853, '202.6.227.46', 'news', '2022-02-03 09:28:53');
INSERT INTO `tb_visitlog_page` VALUES (854, '202.6.227.46', 'news', '2022-02-03 09:29:42');
INSERT INTO `tb_visitlog_page` VALUES (855, '202.6.227.46', 'news', '2022-02-03 09:31:01');
INSERT INTO `tb_visitlog_page` VALUES (856, '202.6.227.46', 'news', '2022-02-03 09:31:08');
INSERT INTO `tb_visitlog_page` VALUES (857, '202.6.227.46', 'news', '2022-02-03 09:32:33');
INSERT INTO `tb_visitlog_page` VALUES (858, '66.249.70.76', 'kebijakan privasi', '2022-02-03 13:55:34');
INSERT INTO `tb_visitlog_page` VALUES (859, '66.249.70.68', 'home', '2022-02-04 03:20:09');
INSERT INTO `tb_visitlog_page` VALUES (860, '125.164.9.14', 'home', '2022-02-04 08:37:44');
INSERT INTO `tb_visitlog_page` VALUES (861, '125.164.9.14', 'wacana', '2022-02-04 08:37:45');
INSERT INTO `tb_visitlog_page` VALUES (862, '125.164.9.14', 'news', '2022-02-04 08:37:47');
INSERT INTO `tb_visitlog_page` VALUES (863, '180.253.165.22', 'news', '2022-02-04 08:47:23');
INSERT INTO `tb_visitlog_page` VALUES (864, '66.249.70.76', 'home', '2022-02-04 10:14:04');
INSERT INTO `tb_visitlog_page` VALUES (865, '66.249.64.102', 'menu', '2022-02-04 10:33:21');
INSERT INTO `tb_visitlog_page` VALUES (866, '202.6.227.46', 'news', '2022-02-04 13:10:23');
INSERT INTO `tb_visitlog_page` VALUES (867, '202.6.227.46', 'news', '2022-02-04 13:11:12');
INSERT INTO `tb_visitlog_page` VALUES (868, '125.164.9.14', 'home', '2022-02-04 13:12:35');
INSERT INTO `tb_visitlog_page` VALUES (869, '180.253.165.22', 'news', '2022-02-04 13:19:09');
INSERT INTO `tb_visitlog_page` VALUES (870, '125.164.9.14', 'news', '2022-02-04 13:36:59');
INSERT INTO `tb_visitlog_page` VALUES (871, '180.253.165.22', 'news', '2022-02-04 14:50:18');
INSERT INTO `tb_visitlog_page` VALUES (872, '202.43.172.4', 'news', '2022-02-04 17:08:34');
INSERT INTO `tb_visitlog_page` VALUES (873, '40.94.36.54', 'news', '2022-02-04 17:12:56');
INSERT INTO `tb_visitlog_page` VALUES (874, '40.94.36.34', 'home', '2022-02-04 17:12:56');
INSERT INTO `tb_visitlog_page` VALUES (875, '118.98.26.6', 'wacana', '2022-02-04 17:35:03');
INSERT INTO `tb_visitlog_page` VALUES (876, '125.164.9.14', 'wacana', '2022-02-04 17:54:51');
INSERT INTO `tb_visitlog_page` VALUES (877, '125.164.9.14', 'news', '2022-02-04 17:54:54');
INSERT INTO `tb_visitlog_page` VALUES (878, '66.249.70.68', 'open po', '2022-02-04 19:58:25');
INSERT INTO `tb_visitlog_page` VALUES (879, '180.253.161.248', 'wacana', '2022-02-04 22:09:34');
INSERT INTO `tb_visitlog_page` VALUES (880, '35.87.85.70', 'home', '2022-02-05 01:26:10');
INSERT INTO `tb_visitlog_page` VALUES (881, '66.249.70.84', 'home', '2022-02-05 05:13:28');
INSERT INTO `tb_visitlog_page` VALUES (882, '66.249.70.80', 'wacana', '2022-02-05 07:05:42');
INSERT INTO `tb_visitlog_page` VALUES (883, '66.249.70.80', 'menu', '2022-02-05 14:50:35');
INSERT INTO `tb_visitlog_page` VALUES (884, '66.249.70.78', 'home', '2022-02-05 15:25:43');
INSERT INTO `tb_visitlog_page` VALUES (885, '66.249.70.80', 'kebijakan privasi', '2022-02-05 15:45:39');
INSERT INTO `tb_visitlog_page` VALUES (886, '66.249.70.78', 'menu', '2022-02-06 00:36:41');
INSERT INTO `tb_visitlog_page` VALUES (887, '66.249.70.80', 'home', '2022-02-06 10:36:49');
INSERT INTO `tb_visitlog_page` VALUES (888, '66.249.70.80', 'syarat & ketentuan', '2022-02-06 17:06:42');
INSERT INTO `tb_visitlog_page` VALUES (889, '66.249.70.82', 'home', '2022-02-06 18:23:29');
INSERT INTO `tb_visitlog_page` VALUES (890, '17.121.113.87', 'wacana', '2022-02-06 18:34:12');
INSERT INTO `tb_visitlog_page` VALUES (891, '66.249.70.82', 'open po', '2022-02-06 23:23:54');
INSERT INTO `tb_visitlog_page` VALUES (892, '66.249.64.102', 'home', '2022-02-07 04:43:17');
INSERT INTO `tb_visitlog_page` VALUES (893, '66.249.70.84', 'kebijakan privasi', '2022-02-07 05:16:08');
INSERT INTO `tb_visitlog_page` VALUES (894, '180.253.165.22', 'news', '2022-02-07 08:14:23');
INSERT INTO `tb_visitlog_page` VALUES (895, '180.253.165.22', 'tentang', '2022-02-07 08:15:12');
INSERT INTO `tb_visitlog_page` VALUES (896, '180.253.165.22', 'home', '2022-02-07 08:46:12');
INSERT INTO `tb_visitlog_page` VALUES (897, '180.253.165.22', 'wacana', '2022-02-07 08:46:22');
INSERT INTO `tb_visitlog_page` VALUES (898, '180.253.165.22', 'order', '2022-02-07 08:46:24');
INSERT INTO `tb_visitlog_page` VALUES (899, '180.253.165.22', 'open po', '2022-02-07 08:46:26');
INSERT INTO `tb_visitlog_page` VALUES (900, '202.6.227.46', 'home', '2022-02-07 08:49:43');
INSERT INTO `tb_visitlog_page` VALUES (901, '202.6.227.46', 'home', '2022-02-07 08:49:57');
INSERT INTO `tb_visitlog_page` VALUES (902, '202.6.227.46', 'order', '2022-02-07 08:50:04');
INSERT INTO `tb_visitlog_page` VALUES (903, '202.6.227.46', 'open po', '2022-02-07 08:50:10');
INSERT INTO `tb_visitlog_page` VALUES (904, '180.253.165.22', 'home', '2022-02-07 09:28:51');
INSERT INTO `tb_visitlog_page` VALUES (905, '66.249.70.82', 'kebijakan privasi', '2022-02-07 09:29:52');
INSERT INTO `tb_visitlog_page` VALUES (906, '202.6.227.46', 'open po', '2022-02-07 09:40:36');
INSERT INTO `tb_visitlog_page` VALUES (907, '125.164.9.14', 'open po', '2022-02-07 10:04:38');
INSERT INTO `tb_visitlog_page` VALUES (908, '40.94.29.72', 'home', '2022-02-07 11:10:11');
INSERT INTO `tb_visitlog_page` VALUES (909, '180.253.165.22', 'tentang', '2022-02-07 13:04:19');
INSERT INTO `tb_visitlog_page` VALUES (910, '180.253.165.22', 'menu', '2022-02-07 13:04:23');
INSERT INTO `tb_visitlog_page` VALUES (911, '180.253.165.22', 'galeri', '2022-02-07 13:05:21');
INSERT INTO `tb_visitlog_page` VALUES (912, '180.253.165.22', 'wacana', '2022-02-07 13:06:19');
INSERT INTO `tb_visitlog_page` VALUES (913, '125.164.9.14', 'wacana', '2022-02-07 15:26:48');
INSERT INTO `tb_visitlog_page` VALUES (914, '180.253.165.22', 'news', '2022-02-07 15:50:37');
INSERT INTO `tb_visitlog_page` VALUES (915, '66.249.70.84', 'menu', '2022-02-07 16:00:09');
INSERT INTO `tb_visitlog_page` VALUES (916, '180.253.165.22', 'wacana', '2022-02-07 16:19:36');
INSERT INTO `tb_visitlog_page` VALUES (917, '66.249.64.102', 'open po', '2022-02-08 08:55:19');
INSERT INTO `tb_visitlog_page` VALUES (918, '66.249.70.92', 'kebijakan privasi', '2022-02-08 21:06:02');
INSERT INTO `tb_visitlog_page` VALUES (919, '66.249.64.102', 'home', '2022-02-08 21:41:55');
INSERT INTO `tb_visitlog_page` VALUES (920, '66.249.64.102', 'kebijakan privasi', '2022-02-09 05:56:00');
INSERT INTO `tb_visitlog_page` VALUES (921, '66.249.70.90', 'home', '2022-02-09 09:53:47');
INSERT INTO `tb_visitlog_page` VALUES (922, '66.249.70.82', 'wacana', '2022-02-09 13:04:21');
INSERT INTO `tb_visitlog_page` VALUES (923, '51.81.210.175', 'home', '2022-02-09 14:47:01');
INSERT INTO `tb_visitlog_page` VALUES (924, '51.81.210.175', 'wacana', '2022-02-09 14:47:05');
INSERT INTO `tb_visitlog_page` VALUES (925, '51.81.210.175', 'news', '2022-02-09 14:47:22');
INSERT INTO `tb_visitlog_page` VALUES (926, '51.81.210.175', 'wacana', '2022-02-09 14:48:19');
INSERT INTO `tb_visitlog_page` VALUES (927, '51.15.130.182', 'home', '2022-02-09 14:52:56');
INSERT INTO `tb_visitlog_page` VALUES (928, '66.249.70.92', 'menu', '2022-02-09 15:12:22');
INSERT INTO `tb_visitlog_page` VALUES (929, '66.249.70.78', 'menu', '2022-02-09 15:42:26');
INSERT INTO `tb_visitlog_page` VALUES (930, '103.108.20.65', 'wacana', '2022-02-09 16:05:25');
INSERT INTO `tb_visitlog_page` VALUES (931, '34.121.26.164', 'home', '2022-02-10 00:24:29');
INSERT INTO `tb_visitlog_page` VALUES (932, '66.249.70.92', 'home', '2022-02-10 03:26:46');
INSERT INTO `tb_visitlog_page` VALUES (933, '66.249.70.78', 'home', '2022-02-10 03:47:16');
INSERT INTO `tb_visitlog_page` VALUES (934, '180.245.125.9', 'news', '2022-02-10 08:54:36');
INSERT INTO `tb_visitlog_page` VALUES (935, '66.249.70.78', 'open po', '2022-02-10 09:00:58');
INSERT INTO `tb_visitlog_page` VALUES (936, '66.249.70.78', 'home', '2022-02-10 12:12:09');
INSERT INTO `tb_visitlog_page` VALUES (937, '103.108.20.85', 'wacana', '2022-02-10 15:10:35');
INSERT INTO `tb_visitlog_page` VALUES (938, '103.108.20.85', 'news', '2022-02-10 15:10:46');
INSERT INTO `tb_visitlog_page` VALUES (939, '103.108.20.85', 'news', '2022-02-10 15:14:20');
INSERT INTO `tb_visitlog_page` VALUES (940, '202.6.227.46', 'home', '2022-02-10 17:06:11');
INSERT INTO `tb_visitlog_page` VALUES (941, '202.6.227.46', 'wacana', '2022-02-10 17:06:12');
INSERT INTO `tb_visitlog_page` VALUES (942, '202.6.227.46', 'news', '2022-02-10 17:06:15');
INSERT INTO `tb_visitlog_page` VALUES (943, '202.6.227.46', 'wacana', '2022-02-10 17:06:39');
INSERT INTO `tb_visitlog_page` VALUES (944, '114.125.68.137', 'news', '2022-02-10 17:28:25');
INSERT INTO `tb_visitlog_page` VALUES (945, '66.249.70.78', 'kebijakan privasi', '2022-02-10 19:52:17');
INSERT INTO `tb_visitlog_page` VALUES (946, '182.1.84.227', 'home', '2022-02-10 20:03:38');
INSERT INTO `tb_visitlog_page` VALUES (947, '66.249.70.78', 'kebijakan privasi', '2022-02-10 20:22:27');
INSERT INTO `tb_visitlog_page` VALUES (948, '182.253.116.208', 'news', '2022-02-10 22:07:20');
INSERT INTO `tb_visitlog_page` VALUES (949, '180.253.167.141', 'news', '2022-02-11 08:59:13');
INSERT INTO `tb_visitlog_page` VALUES (950, '66.249.70.78', 'menu', '2022-02-11 12:44:50');
INSERT INTO `tb_visitlog_page` VALUES (951, '180.253.167.141', 'news', '2022-02-11 16:42:31');
INSERT INTO `tb_visitlog_page` VALUES (952, '125.164.62.111', 'news', '2022-02-11 16:55:01');
INSERT INTO `tb_visitlog_page` VALUES (953, '125.164.62.111', 'news', '2022-02-11 16:55:10');
INSERT INTO `tb_visitlog_page` VALUES (954, '110.50.81.202', 'news', '2022-02-11 17:06:45');
INSERT INTO `tb_visitlog_page` VALUES (955, '114.4.4.134', 'news', '2022-02-11 17:06:52');
INSERT INTO `tb_visitlog_page` VALUES (956, '40.94.25.67', 'news', '2022-02-11 17:16:15');
INSERT INTO `tb_visitlog_page` VALUES (957, '40.94.25.67', 'home', '2022-02-11 17:16:16');
INSERT INTO `tb_visitlog_page` VALUES (958, '103.108.20.119', 'home', '2022-02-11 17:30:30');
INSERT INTO `tb_visitlog_page` VALUES (959, '103.108.20.119', 'wacana', '2022-02-11 17:30:32');
INSERT INTO `tb_visitlog_page` VALUES (960, '103.108.20.119', 'news', '2022-02-11 17:30:37');
INSERT INTO `tb_visitlog_page` VALUES (961, '103.108.20.119', 'wacana', '2022-02-11 17:30:44');
INSERT INTO `tb_visitlog_page` VALUES (962, '66.249.70.86', 'kebijakan privasi', '2022-02-11 23:15:26');
INSERT INTO `tb_visitlog_page` VALUES (963, '66.249.64.102', 'home', '2022-02-12 05:40:29');
INSERT INTO `tb_visitlog_page` VALUES (964, '66.249.70.86', 'home', '2022-02-12 05:51:51');
INSERT INTO `tb_visitlog_page` VALUES (965, '17.121.112.230', 'wacana', '2022-02-12 16:55:14');
INSERT INTO `tb_visitlog_page` VALUES (966, '17.121.112.216', 'wacana', '2022-02-12 18:23:20');
INSERT INTO `tb_visitlog_page` VALUES (967, '66.249.70.68', 'kebijakan privasi', '2022-02-12 21:59:44');
INSERT INTO `tb_visitlog_page` VALUES (968, '66.249.70.80', 'home', '2022-02-13 09:17:42');
INSERT INTO `tb_visitlog_page` VALUES (969, '66.249.70.80', 'kebijakan privasi', '2022-02-13 14:38:58');
INSERT INTO `tb_visitlog_page` VALUES (970, '140.213.56.158', 'home', '2022-02-13 21:26:20');
INSERT INTO `tb_visitlog_page` VALUES (971, '110.136.84.86', 'home', '2022-02-13 22:37:47');
INSERT INTO `tb_visitlog_page` VALUES (972, '110.136.84.86', 'order', '2022-02-13 22:38:01');
INSERT INTO `tb_visitlog_page` VALUES (973, '110.136.84.86', 'open po', '2022-02-13 22:38:05');
INSERT INTO `tb_visitlog_page` VALUES (974, '110.136.84.86', 'order', '2022-02-13 22:38:30');
INSERT INTO `tb_visitlog_page` VALUES (975, '110.136.84.86', 'open po', '2022-02-13 22:38:31');
INSERT INTO `tb_visitlog_page` VALUES (976, '182.1.73.22', 'home', '2022-02-13 22:57:18');
INSERT INTO `tb_visitlog_page` VALUES (977, '66.249.70.86', 'menu', '2022-02-13 23:16:25');
INSERT INTO `tb_visitlog_page` VALUES (978, '202.6.227.46', 'open po', '2022-02-14 10:06:07');
INSERT INTO `tb_visitlog_page` VALUES (979, '36.74.123.198', 'open po', '2022-02-14 11:41:07');
INSERT INTO `tb_visitlog_page` VALUES (980, '66.249.70.86', 'kebijakan privasi', '2022-02-14 14:49:42');
INSERT INTO `tb_visitlog_page` VALUES (981, '66.249.70.68', 'home', '2022-02-14 18:47:33');
INSERT INTO `tb_visitlog_page` VALUES (982, '118.99.76.171', 'home', '2022-02-14 22:32:38');
INSERT INTO `tb_visitlog_page` VALUES (983, '118.99.76.171', 'home', '2022-02-14 22:33:35');
INSERT INTO `tb_visitlog_page` VALUES (984, '66.249.70.68', 'wacana', '2022-02-15 06:09:13');
INSERT INTO `tb_visitlog_page` VALUES (985, '66.249.70.88', 'wacana', '2022-02-15 07:39:14');
INSERT INTO `tb_visitlog_page` VALUES (986, '36.73.218.92', 'home', '2022-02-15 08:37:41');
INSERT INTO `tb_visitlog_page` VALUES (987, '36.74.123.198', 'order', '2022-02-15 08:37:49');
INSERT INTO `tb_visitlog_page` VALUES (988, '36.73.218.92', 'open po', '2022-02-15 08:37:58');
INSERT INTO `tb_visitlog_page` VALUES (989, '36.73.218.92', 'keranjang', '2022-02-15 08:38:03');
INSERT INTO `tb_visitlog_page` VALUES (990, '36.73.218.92', 'home', '2022-02-15 08:40:46');
INSERT INTO `tb_visitlog_page` VALUES (991, '36.74.123.198', 'home', '2022-02-15 08:41:00');
INSERT INTO `tb_visitlog_page` VALUES (992, '36.74.123.198', 'home', '2022-02-15 08:41:30');
INSERT INTO `tb_visitlog_page` VALUES (993, '36.74.123.198', 'open po', '2022-02-15 08:41:33');
INSERT INTO `tb_visitlog_page` VALUES (994, '36.74.123.198', 'keranjang', '2022-02-15 08:41:39');
INSERT INTO `tb_visitlog_page` VALUES (995, '36.74.123.198', 'home', '2022-02-15 08:44:56');
INSERT INTO `tb_visitlog_page` VALUES (996, '36.74.123.198', 'home', '2022-02-15 08:45:16');
INSERT INTO `tb_visitlog_page` VALUES (997, '36.73.218.92', 'wacana', '2022-02-15 08:45:40');
INSERT INTO `tb_visitlog_page` VALUES (998, '36.73.218.92', 'home', '2022-02-15 08:45:44');
INSERT INTO `tb_visitlog_page` VALUES (999, '36.74.123.198', 'home', '2022-02-15 08:45:54');
INSERT INTO `tb_visitlog_page` VALUES (1000, '36.74.123.198', 'home', '2022-02-15 08:55:40');
INSERT INTO `tb_visitlog_page` VALUES (1001, '36.74.123.198', 'home', '2022-02-15 09:02:59');
INSERT INTO `tb_visitlog_page` VALUES (1002, '36.73.218.92', 'open po', '2022-02-15 09:03:03');
INSERT INTO `tb_visitlog_page` VALUES (1003, '36.73.218.92', 'keranjang', '2022-02-15 09:03:08');
INSERT INTO `tb_visitlog_page` VALUES (1004, '36.74.123.198', 'home', '2022-02-15 09:04:57');
INSERT INTO `tb_visitlog_page` VALUES (1005, '36.74.123.198', 'keranjang', '2022-02-15 09:05:01');
INSERT INTO `tb_visitlog_page` VALUES (1006, '66.249.70.80', 'menu', '2022-02-15 14:23:05');
INSERT INTO `tb_visitlog_page` VALUES (1007, '66.249.70.68', 'menu', '2022-02-15 15:52:50');
INSERT INTO `tb_visitlog_page` VALUES (1008, '66.249.70.86', 'wacana', '2022-02-15 20:08:38');
INSERT INTO `tb_visitlog_page` VALUES (1009, '66.249.64.102', 'home', '2022-02-16 09:43:02');
INSERT INTO `tb_visitlog_page` VALUES (1010, '66.249.70.78', 'home', '2022-02-16 09:51:38');
INSERT INTO `tb_visitlog_page` VALUES (1011, '36.73.218.92', 'home', '2022-02-16 16:53:33');
INSERT INTO `tb_visitlog_page` VALUES (1012, '36.73.218.92', 'wacana', '2022-02-16 16:56:15');
INSERT INTO `tb_visitlog_page` VALUES (1013, '36.74.123.198', 'news', '2022-02-16 16:56:40');
INSERT INTO `tb_visitlog_page` VALUES (1014, '182.1.115.178', 'home', '2022-02-16 16:58:48');
INSERT INTO `tb_visitlog_page` VALUES (1015, '182.1.115.178', 'wacana', '2022-02-16 16:59:26');
INSERT INTO `tb_visitlog_page` VALUES (1016, '182.1.115.178', 'news', '2022-02-16 16:59:34');
INSERT INTO `tb_visitlog_page` VALUES (1017, '66.249.70.86', 'home', '2022-02-16 19:34:12');
INSERT INTO `tb_visitlog_page` VALUES (1018, '66.249.79.69', 'home', '2022-02-16 23:17:35');
INSERT INTO `tb_visitlog_page` VALUES (1019, '66.249.70.88', 'home', '2022-02-16 23:58:09');
INSERT INTO `tb_visitlog_page` VALUES (1020, '66.249.70.80', 'wacana', '2022-02-17 05:47:25');
INSERT INTO `tb_visitlog_page` VALUES (1021, '157.55.39.200', 'menu', '2022-02-17 09:19:57');
INSERT INTO `tb_visitlog_page` VALUES (1022, '180.253.163.227', 'home', '2022-02-17 09:44:11');
INSERT INTO `tb_visitlog_page` VALUES (1023, '125.164.15.164', 'news', '2022-02-17 13:47:00');
INSERT INTO `tb_visitlog_page` VALUES (1024, '125.164.15.164', 'news', '2022-02-17 13:47:27');
INSERT INTO `tb_visitlog_page` VALUES (1025, '113.197.108.36', 'news', '2022-02-18 17:06:40');
INSERT INTO `tb_visitlog_page` VALUES (1026, '20.81.14.128', 'home', '2022-02-18 17:18:24');
INSERT INTO `tb_visitlog_page` VALUES (1027, '20.81.14.128', 'news', '2022-02-18 17:18:24');
INSERT INTO `tb_visitlog_page` VALUES (1028, '182.1.110.14', 'home', '2022-02-18 19:07:14');
INSERT INTO `tb_visitlog_page` VALUES (1029, '182.1.110.14', 'wacana', '2022-02-18 19:07:16');
INSERT INTO `tb_visitlog_page` VALUES (1030, '182.1.110.14', 'news', '2022-02-18 19:07:21');
INSERT INTO `tb_visitlog_page` VALUES (1031, '66.249.70.88', 'home', '2022-02-18 20:41:57');
INSERT INTO `tb_visitlog_page` VALUES (1032, '180.253.166.207', 'news', '2022-02-19 07:09:01');
INSERT INTO `tb_visitlog_page` VALUES (1033, '66.249.70.94', 'wacana', '2022-02-19 07:22:43');
INSERT INTO `tb_visitlog_page` VALUES (1034, '140.213.218.178', 'news', '2022-02-19 10:14:20');
INSERT INTO `tb_visitlog_page` VALUES (1035, '51.15.253.190', 'home', '2022-02-19 13:15:49');
INSERT INTO `tb_visitlog_page` VALUES (1036, '51.15.253.190', 'home', '2022-02-19 13:16:24');
INSERT INTO `tb_visitlog_page` VALUES (1037, '202.6.224.50', 'news', '2022-02-19 20:04:53');
INSERT INTO `tb_visitlog_page` VALUES (1038, '17.121.112.14', 'wacana', '2022-02-20 08:00:11');
INSERT INTO `tb_visitlog_page` VALUES (1039, '180.253.166.207', 'home', '2022-02-20 08:26:21');
INSERT INTO `tb_visitlog_page` VALUES (1040, '180.253.166.207', 'menu', '2022-02-20 08:26:27');
INSERT INTO `tb_visitlog_page` VALUES (1041, '180.253.166.207', 'menu', '2022-02-20 08:26:58');
INSERT INTO `tb_visitlog_page` VALUES (1042, '180.253.166.207', 'home', '2022-02-20 08:27:12');
INSERT INTO `tb_visitlog_page` VALUES (1043, '17.121.115.135', 'galeri', '2022-02-20 10:04:54');
INSERT INTO `tb_visitlog_page` VALUES (1044, '17.121.115.135', 'order', '2022-02-20 10:26:19');
INSERT INTO `tb_visitlog_page` VALUES (1045, '66.249.70.94', 'home', '2022-02-20 17:45:24');
INSERT INTO `tb_visitlog_page` VALUES (1046, '66.249.64.114', 'home', '2022-02-20 19:31:52');
INSERT INTO `tb_visitlog_page` VALUES (1047, '66.249.64.102', 'home', '2022-02-20 23:39:01');
INSERT INTO `tb_visitlog_page` VALUES (1048, '66.249.64.114', 'home', '2022-02-21 03:53:11');
INSERT INTO `tb_visitlog_page` VALUES (1049, '66.249.70.88', 'wacana', '2022-02-21 08:40:37');
INSERT INTO `tb_visitlog_page` VALUES (1050, '140.0.8.249', 'open po', '2022-02-21 08:51:08');
INSERT INTO `tb_visitlog_page` VALUES (1051, '110.136.84.5', 'home', '2022-02-21 13:50:55');
INSERT INTO `tb_visitlog_page` VALUES (1052, '110.136.84.5', 'galeri', '2022-02-21 13:50:56');
INSERT INTO `tb_visitlog_page` VALUES (1053, '66.249.64.102', 'open po', '2022-02-22 07:33:12');
INSERT INTO `tb_visitlog_page` VALUES (1054, '66.249.66.44', 'home', '2022-02-22 09:49:07');
INSERT INTO `tb_visitlog_page` VALUES (1055, '110.136.84.19', 'home', '2022-02-22 13:32:00');
INSERT INTO `tb_visitlog_page` VALUES (1056, '110.136.84.19', 'kebijakan privasi', '2022-02-22 13:32:04');
INSERT INTO `tb_visitlog_page` VALUES (1057, '110.136.84.19', 'syarat & ketentuan', '2022-02-22 13:32:25');
INSERT INTO `tb_visitlog_page` VALUES (1058, '66.249.64.114', 'home', '2022-02-22 14:04:11');
INSERT INTO `tb_visitlog_page` VALUES (1059, '110.136.84.22', 'news', '2022-02-23 08:41:54');
INSERT INTO `tb_visitlog_page` VALUES (1060, '66.249.66.48', 'home', '2022-02-23 17:56:30');
INSERT INTO `tb_visitlog_page` VALUES (1061, '66.249.66.50', 'wacana', '2022-02-23 18:36:30');
INSERT INTO `tb_visitlog_page` VALUES (1062, '66.249.64.102', 'wacana', '2022-02-24 07:49:14');
INSERT INTO `tb_visitlog_page` VALUES (1063, '66.249.66.50', 'home', '2022-02-24 09:29:05');
INSERT INTO `tb_visitlog_page` VALUES (1064, '110.136.84.105', 'home', '2022-02-24 10:40:19');
INSERT INTO `tb_visitlog_page` VALUES (1065, '110.136.84.105', 'menu', '2022-02-24 10:40:20');
INSERT INTO `tb_visitlog_page` VALUES (1066, '110.136.84.105', 'galeri', '2022-02-24 10:40:23');
INSERT INTO `tb_visitlog_page` VALUES (1067, '110.136.84.111', 'home', '2022-02-24 10:41:12');
INSERT INTO `tb_visitlog_page` VALUES (1068, '110.136.84.111', 'menu', '2022-02-24 10:41:16');
INSERT INTO `tb_visitlog_page` VALUES (1069, '110.136.84.105', 'news', '2022-02-24 14:11:43');
INSERT INTO `tb_visitlog_page` VALUES (1070, '110.136.84.105', 'wacana', '2022-02-24 14:11:44');
INSERT INTO `tb_visitlog_page` VALUES (1071, '110.136.84.105', 'news', '2022-02-24 15:21:28');
INSERT INTO `tb_visitlog_page` VALUES (1072, '110.136.84.105', 'news', '2022-02-24 15:23:18');
INSERT INTO `tb_visitlog_page` VALUES (1073, '66.249.66.48', 'wacana', '2022-02-24 20:04:10');
INSERT INTO `tb_visitlog_page` VALUES (1074, '66.249.66.50', 'wacana', '2022-02-24 21:36:43');
INSERT INTO `tb_visitlog_page` VALUES (1075, '66.249.66.52', 'home', '2022-02-24 21:48:29');
INSERT INTO `tb_visitlog_page` VALUES (1076, '66.249.66.50', 'news', '2022-02-25 04:10:35');
INSERT INTO `tb_visitlog_page` VALUES (1077, '77.111.245.13', 'home', '2022-02-25 10:16:41');
INSERT INTO `tb_visitlog_page` VALUES (1078, '77.111.245.14', 'home', '2022-02-25 13:33:32');
INSERT INTO `tb_visitlog_page` VALUES (1079, '180.253.161.234', 'home', '2022-02-25 17:15:08');
INSERT INTO `tb_visitlog_page` VALUES (1080, '180.253.161.234', 'wacana', '2022-02-25 17:15:08');
INSERT INTO `tb_visitlog_page` VALUES (1081, '180.253.161.234', 'news', '2022-02-25 17:15:10');
INSERT INTO `tb_visitlog_page` VALUES (1082, '66.96.224.196', 'news', '2022-02-25 17:32:41');
INSERT INTO `tb_visitlog_page` VALUES (1083, '114.4.4.133', 'wacana', '2022-02-25 17:32:47');
INSERT INTO `tb_visitlog_page` VALUES (1084, '52.141.211.216', 'home', '2022-02-25 17:39:37');
INSERT INTO `tb_visitlog_page` VALUES (1085, '52.141.211.216', 'news', '2022-02-25 17:39:37');
INSERT INTO `tb_visitlog_page` VALUES (1086, '66.249.66.50', 'home', '2022-02-25 21:20:03');
INSERT INTO `tb_visitlog_page` VALUES (1087, '17.121.112.250', 'order', '2022-02-26 00:20:43');
INSERT INTO `tb_visitlog_page` VALUES (1088, '17.121.112.250', 'wacana', '2022-02-26 01:17:54');
INSERT INTO `tb_visitlog_page` VALUES (1089, '112.215.244.55', 'news', '2022-02-26 01:20:31');
INSERT INTO `tb_visitlog_page` VALUES (1090, '118.99.76.152', 'open po', '2022-02-26 10:38:20');
INSERT INTO `tb_visitlog_page` VALUES (1091, '40.77.139.39', 'keranjang', '2022-02-26 14:49:41');
INSERT INTO `tb_visitlog_page` VALUES (1092, '66.249.66.50', 'home', '2022-02-27 02:41:31');
INSERT INTO `tb_visitlog_page` VALUES (1093, '66.249.66.60', 'home', '2022-02-27 03:05:03');
INSERT INTO `tb_visitlog_page` VALUES (1094, '66.249.73.241', 'wacana', '2022-02-27 10:08:07');
INSERT INTO `tb_visitlog_page` VALUES (1095, '66.249.66.60', 'home', '2022-02-27 12:08:19');
INSERT INTO `tb_visitlog_page` VALUES (1096, '182.1.108.49', 'home', '2022-02-28 08:53:24');
INSERT INTO `tb_visitlog_page` VALUES (1097, '114.5.111.143', 'home', '2022-02-28 08:54:25');
INSERT INTO `tb_visitlog_page` VALUES (1098, '202.67.40.233', 'home', '2022-02-28 08:54:56');
INSERT INTO `tb_visitlog_page` VALUES (1099, '202.67.40.233', 'home', '2022-02-28 08:55:30');
INSERT INTO `tb_visitlog_page` VALUES (1100, '202.67.40.233', 'home', '2022-02-28 08:55:41');
INSERT INTO `tb_visitlog_page` VALUES (1101, '182.1.108.49', 'home', '2022-02-28 08:58:25');
INSERT INTO `tb_visitlog_page` VALUES (1102, '114.5.111.143', 'home', '2022-02-28 09:01:13');
INSERT INTO `tb_visitlog_page` VALUES (1103, '114.5.111.143', 'order', '2022-02-28 09:01:17');
INSERT INTO `tb_visitlog_page` VALUES (1104, '114.5.111.143', 'galeri', '2022-02-28 09:01:21');
INSERT INTO `tb_visitlog_page` VALUES (1105, '114.5.111.143', 'menu', '2022-02-28 09:02:12');
INSERT INTO `tb_visitlog_page` VALUES (1106, '114.5.111.143', 'menu', '2022-02-28 09:02:19');
INSERT INTO `tb_visitlog_page` VALUES (1107, '182.1.108.49', 'home', '2022-02-28 09:04:37');
INSERT INTO `tb_visitlog_page` VALUES (1108, '202.67.40.239', 'home', '2022-02-28 09:05:36');
INSERT INTO `tb_visitlog_page` VALUES (1109, '202.67.40.239', 'home', '2022-02-28 09:07:20');
INSERT INTO `tb_visitlog_page` VALUES (1110, '182.1.108.49', 'wacana', '2022-02-28 09:20:41');
INSERT INTO `tb_visitlog_page` VALUES (1111, '182.1.108.49', 'home', '2022-02-28 09:20:54');
INSERT INTO `tb_visitlog_page` VALUES (1112, '182.1.108.49', 'kontak', '2022-02-28 09:21:00');
INSERT INTO `tb_visitlog_page` VALUES (1113, '202.67.40.239', 'home', '2022-02-28 09:50:15');
INSERT INTO `tb_visitlog_page` VALUES (1114, '118.99.76.154', 'open po', '2022-02-28 09:56:36');
INSERT INTO `tb_visitlog_page` VALUES (1115, '202.67.40.246', 'home', '2022-02-28 10:09:47');
INSERT INTO `tb_visitlog_page` VALUES (1116, '66.249.66.52', 'home', '2022-02-28 10:24:32');
INSERT INTO `tb_visitlog_page` VALUES (1117, '114.5.111.143', 'menu', '2022-02-28 10:34:52');
INSERT INTO `tb_visitlog_page` VALUES (1118, '202.67.40.214', 'open po', '2022-02-28 10:57:56');
INSERT INTO `tb_visitlog_page` VALUES (1119, '182.1.124.67', 'home', '2022-02-28 11:03:40');
INSERT INTO `tb_visitlog_page` VALUES (1120, '182.1.124.67', 'order', '2022-02-28 11:03:45');
INSERT INTO `tb_visitlog_page` VALUES (1121, '182.1.124.67', 'open po', '2022-02-28 11:03:48');
INSERT INTO `tb_visitlog_page` VALUES (1122, '140.0.8.249', 'open po', '2022-02-28 11:09:17');
INSERT INTO `tb_visitlog_page` VALUES (1123, '140.0.8.249', 'keranjang', '2022-02-28 11:10:15');
INSERT INTO `tb_visitlog_page` VALUES (1124, '140.0.8.249', 'open po', '2022-02-28 11:10:16');
INSERT INTO `tb_visitlog_page` VALUES (1125, '52.45.71.77', 'open po', '2022-02-28 11:10:25');
INSERT INTO `tb_visitlog_page` VALUES (1126, '100.24.88.194', 'home', '2022-02-28 11:10:29');
INSERT INTO `tb_visitlog_page` VALUES (1127, '52.45.71.77', 'open po', '2022-02-28 11:10:32');
INSERT INTO `tb_visitlog_page` VALUES (1128, '40.94.26.176', 'home', '2022-02-28 11:10:58');
INSERT INTO `tb_visitlog_page` VALUES (1129, '140.0.8.249', 'open po', '2022-02-28 14:49:04');
INSERT INTO `tb_visitlog_page` VALUES (1130, '36.74.122.160', 'home', '2022-02-28 18:18:27');
INSERT INTO `tb_visitlog_page` VALUES (1131, '66.249.73.241', 'home', '2022-03-01 08:49:56');
INSERT INTO `tb_visitlog_page` VALUES (1132, '66.249.66.60', 'home', '2022-03-01 11:38:50');
INSERT INTO `tb_visitlog_page` VALUES (1133, '115.178.244.163', 'home', '2022-03-02 08:10:04');
INSERT INTO `tb_visitlog_page` VALUES (1134, '66.249.66.62', 'home', '2022-03-02 08:28:49');
INSERT INTO `tb_visitlog_page` VALUES (1135, '66.249.66.210', 'kontak', '2022-03-02 16:13:28');
INSERT INTO `tb_visitlog_page` VALUES (1136, '110.136.84.33', 'news', '2022-03-02 16:19:13');
INSERT INTO `tb_visitlog_page` VALUES (1137, '110.136.84.33', 'wacana', '2022-03-02 16:19:14');
INSERT INTO `tb_visitlog_page` VALUES (1138, '110.136.84.33', 'news', '2022-03-02 16:19:26');
INSERT INTO `tb_visitlog_page` VALUES (1139, '110.136.84.33', 'wacana', '2022-03-02 16:20:06');
INSERT INTO `tb_visitlog_page` VALUES (1140, '110.136.84.33', 'news', '2022-03-02 16:41:37');
INSERT INTO `tb_visitlog_page` VALUES (1141, '118.99.76.154', 'open po', '2022-03-02 23:33:34');
INSERT INTO `tb_visitlog_page` VALUES (1142, '118.99.76.154', 'home', '2022-03-02 23:33:50');
INSERT INTO `tb_visitlog_page` VALUES (1143, '110.137.102.91', 'home', '2022-03-03 16:47:20');
INSERT INTO `tb_visitlog_page` VALUES (1144, '110.137.102.91', 'menu', '2022-03-03 16:47:23');
INSERT INTO `tb_visitlog_page` VALUES (1145, '66.249.66.210', 'home', '2022-03-03 19:05:36');
INSERT INTO `tb_visitlog_page` VALUES (1146, '66.249.66.48', 'home', '2022-03-03 19:17:38');
INSERT INTO `tb_visitlog_page` VALUES (1147, '66.249.66.48', 'wacana', '2022-03-03 20:41:36');
INSERT INTO `tb_visitlog_page` VALUES (1148, '110.136.84.105', 'news', '2022-03-04 08:30:56');
INSERT INTO `tb_visitlog_page` VALUES (1149, '110.136.84.105', 'wacana', '2022-03-04 08:30:58');
INSERT INTO `tb_visitlog_page` VALUES (1150, '110.136.84.105', 'news', '2022-03-04 08:31:06');
INSERT INTO `tb_visitlog_page` VALUES (1151, '114.5.246.194', 'home', '2022-03-04 08:36:00');
INSERT INTO `tb_visitlog_page` VALUES (1152, '114.5.246.194', 'wacana', '2022-03-04 08:36:09');
INSERT INTO `tb_visitlog_page` VALUES (1153, '110.136.84.105', 'news', '2022-03-04 09:12:58');
INSERT INTO `tb_visitlog_page` VALUES (1154, '110.136.84.53', 'news', '2022-03-04 09:24:27');
INSERT INTO `tb_visitlog_page` VALUES (1155, '36.79.204.164', 'news', '2022-03-04 13:05:01');
INSERT INTO `tb_visitlog_page` VALUES (1156, '110.136.84.105', 'news', '2022-03-04 14:18:53');
INSERT INTO `tb_visitlog_page` VALUES (1157, '66.249.66.52', 'home', '2022-03-04 16:01:10');
INSERT INTO `tb_visitlog_page` VALUES (1158, '110.50.81.200', 'news', '2022-03-04 17:06:07');
INSERT INTO `tb_visitlog_page` VALUES (1159, '40.94.25.227', 'news', '2022-03-04 17:17:29');
INSERT INTO `tb_visitlog_page` VALUES (1160, '40.94.25.227', 'home', '2022-03-04 17:17:29');
INSERT INTO `tb_visitlog_page` VALUES (1161, '110.136.84.34', 'wacana', '2022-03-04 17:31:14');
INSERT INTO `tb_visitlog_page` VALUES (1162, '66.249.66.58', 'wacana', '2022-03-05 00:48:00');
INSERT INTO `tb_visitlog_page` VALUES (1163, '66.249.66.198', 'home', '2022-03-05 10:04:25');
INSERT INTO `tb_visitlog_page` VALUES (1164, '175.158.38.75', 'home', '2022-03-06 05:44:36');
INSERT INTO `tb_visitlog_page` VALUES (1165, '175.158.38.75', 'order', '2022-03-06 05:44:42');
INSERT INTO `tb_visitlog_page` VALUES (1166, '175.158.38.75', 'menu', '2022-03-06 05:44:50');
INSERT INTO `tb_visitlog_page` VALUES (1167, '180.251.120.210', 'home', '2022-03-06 18:42:11');
INSERT INTO `tb_visitlog_page` VALUES (1168, '180.251.120.210', 'menu', '2022-03-06 18:42:28');
INSERT INTO `tb_visitlog_page` VALUES (1169, '17.121.113.166', 'galeri', '2022-03-06 19:04:42');
INSERT INTO `tb_visitlog_page` VALUES (1170, '17.121.113.166', 'order', '2022-03-06 19:24:18');
INSERT INTO `tb_visitlog_page` VALUES (1171, '65.154.226.168', 'home', '2022-03-07 01:42:25');
INSERT INTO `tb_visitlog_page` VALUES (1172, '66.249.66.58', 'wacana', '2022-03-07 04:12:09');
INSERT INTO `tb_visitlog_page` VALUES (1173, '52.24.158.143', 'home', '2022-03-07 05:38:17');
INSERT INTO `tb_visitlog_page` VALUES (1174, '40.77.139.124', 'home', '2022-03-07 07:09:50');
INSERT INTO `tb_visitlog_page` VALUES (1175, '65.154.226.167', 'home', '2022-03-07 10:01:45');
INSERT INTO `tb_visitlog_page` VALUES (1176, '110.136.84.86', 'home', '2022-03-07 10:05:04');
INSERT INTO `tb_visitlog_page` VALUES (1177, '2001:448a:5020:e11c:', 'open po', '2022-03-07 10:19:06');
INSERT INTO `tb_visitlog_page` VALUES (1178, '36.79.204.164', 'home', '2022-03-07 10:56:48');
INSERT INTO `tb_visitlog_page` VALUES (1179, '2001:448a:5020:e11c:', 'home', '2022-03-07 11:27:58');
INSERT INTO `tb_visitlog_page` VALUES (1180, '2001:448a:5020:e11c:', 'tentang', '2022-03-07 11:27:59');
INSERT INTO `tb_visitlog_page` VALUES (1181, '2001:448a:5020:e11c:', 'tentang', '2022-03-07 11:33:26');
INSERT INTO `tb_visitlog_page` VALUES (1182, '2001:448a:5020:e11c:', 'home', '2022-03-07 11:33:53');
INSERT INTO `tb_visitlog_page` VALUES (1183, '2001:448a:5020:e11c:', 'tentang', '2022-03-07 11:39:00');
INSERT INTO `tb_visitlog_page` VALUES (1184, '2001:448a:5020:e11c:', 'menu', '2022-03-07 11:39:35');
INSERT INTO `tb_visitlog_page` VALUES (1185, '2001:448a:5020:e11c:', 'galeri', '2022-03-07 11:42:26');
INSERT INTO `tb_visitlog_page` VALUES (1186, '2001:448a:5020:e11c:', 'kontak', '2022-03-07 11:43:34');
INSERT INTO `tb_visitlog_page` VALUES (1187, '2001:448a:5020:e11c:', 'order', '2022-03-07 11:44:24');
INSERT INTO `tb_visitlog_page` VALUES (1188, '2001:448a:5020:e11c:', 'wacana', '2022-03-07 11:45:16');
INSERT INTO `tb_visitlog_page` VALUES (1189, '2001:448a:5020:e11c:', 'login', '2022-03-07 11:47:29');
INSERT INTO `tb_visitlog_page` VALUES (1190, '2001:448a:5020:e11c:', 'register', '2022-03-07 11:48:06');
INSERT INTO `tb_visitlog_page` VALUES (1191, '2001:448a:5020:e11c:', 'login', '2022-03-07 11:49:21');
INSERT INTO `tb_visitlog_page` VALUES (1192, '2001:448a:5020:e11c:', 'syarat & ketentuan', '2022-03-07 11:50:34');
INSERT INTO `tb_visitlog_page` VALUES (1193, '2001:448a:5020:e11c:', 'wacana', '2022-03-07 11:52:37');
INSERT INTO `tb_visitlog_page` VALUES (1194, '2001:448a:5020:e11c:', 'menu', '2022-03-07 11:53:48');
INSERT INTO `tb_visitlog_page` VALUES (1195, '2001:448a:5020:e11c:', 'galeri', '2022-03-07 11:56:11');
INSERT INTO `tb_visitlog_page` VALUES (1196, '2001:448a:5020:e11c:', 'home', '2022-03-07 11:57:45');
INSERT INTO `tb_visitlog_page` VALUES (1197, '2001:448a:5020:e11c:', 'tentang', '2022-03-07 11:58:39');
INSERT INTO `tb_visitlog_page` VALUES (1198, '2001:448a:5020:e11c:', 'kontak', '2022-03-07 11:59:12');
INSERT INTO `tb_visitlog_page` VALUES (1199, '2001:448a:5020:e11c:', 'login', '2022-03-07 12:07:38');
INSERT INTO `tb_visitlog_page` VALUES (1200, '2001:448a:5020:e11c:', 'order', '2022-03-07 12:08:28');
INSERT INTO `tb_visitlog_page` VALUES (1201, '2001:448a:5020:e11c:', 'login', '2022-03-07 12:09:13');
INSERT INTO `tb_visitlog_page` VALUES (1202, '2001:448a:5020:e11c:', 'register', '2022-03-07 12:09:15');
INSERT INTO `tb_visitlog_page` VALUES (1203, '2001:448a:5020:e11c:', 'login', '2022-03-07 12:10:08');
INSERT INTO `tb_visitlog_page` VALUES (1204, '2001:448a:5020:e11c:', 'kebijakan privasi', '2022-03-07 12:11:00');
INSERT INTO `tb_visitlog_page` VALUES (1205, '2001:448a:5020:e11c:', 'home', '2022-03-07 12:11:48');
INSERT INTO `tb_visitlog_page` VALUES (1206, '2001:448a:5020:e11c:', 'order', '2022-03-07 12:11:58');
INSERT INTO `tb_visitlog_page` VALUES (1207, '2001:448a:5020:e11c:', 'open po', '2022-03-07 12:12:00');
INSERT INTO `tb_visitlog_page` VALUES (1208, '66.249.66.54', 'home', '2022-03-07 12:24:30');
INSERT INTO `tb_visitlog_page` VALUES (1209, '36.79.204.164', 'open po', '2022-03-07 14:37:19');
INSERT INTO `tb_visitlog_page` VALUES (1210, '36.79.204.164', 'home', '2022-03-07 14:37:25');
INSERT INTO `tb_visitlog_page` VALUES (1211, '110.136.84.86', 'home', '2022-03-07 14:38:14');
INSERT INTO `tb_visitlog_page` VALUES (1212, '110.136.84.86', 'home', '2022-03-07 14:38:34');
INSERT INTO `tb_visitlog_page` VALUES (1213, '2001:448a:5020:e11c:', 'home', '2022-03-07 14:39:03');
INSERT INTO `tb_visitlog_page` VALUES (1214, '202.67.46.30', 'home', '2022-03-07 14:39:22');
INSERT INTO `tb_visitlog_page` VALUES (1215, '36.79.204.164', 'home', '2022-03-07 14:41:47');
INSERT INTO `tb_visitlog_page` VALUES (1216, '36.79.204.164', 'galeri', '2022-03-07 14:41:50');
INSERT INTO `tb_visitlog_page` VALUES (1217, '36.79.204.164', 'wacana', '2022-03-07 14:43:21');
INSERT INTO `tb_visitlog_page` VALUES (1218, '36.79.204.164', 'news', '2022-03-07 14:43:31');
INSERT INTO `tb_visitlog_page` VALUES (1219, '36.79.204.164', 'wacana', '2022-03-07 14:44:07');
INSERT INTO `tb_visitlog_page` VALUES (1220, '36.79.204.164', 'news', '2022-03-07 14:47:42');
INSERT INTO `tb_visitlog_page` VALUES (1221, '36.79.204.164', 'wacana', '2022-03-07 14:48:27');
INSERT INTO `tb_visitlog_page` VALUES (1222, '36.79.204.164', 'news', '2022-03-07 14:49:01');
INSERT INTO `tb_visitlog_page` VALUES (1223, '36.79.204.164', 'wacana', '2022-03-07 14:49:03');
INSERT INTO `tb_visitlog_page` VALUES (1224, '2001:448a:5020:e11c:', 'home', '2022-03-07 15:12:27');
INSERT INTO `tb_visitlog_page` VALUES (1225, '2001:448a:5020:e11c:', 'wacana', '2022-03-07 15:12:30');
INSERT INTO `tb_visitlog_page` VALUES (1226, '180.253.61.35', 'news', '2022-03-07 15:19:34');
INSERT INTO `tb_visitlog_page` VALUES (1227, '180.253.61.35', 'menu', '2022-03-07 15:36:16');
INSERT INTO `tb_visitlog_page` VALUES (1228, '180.253.61.35', 'kontak', '2022-03-07 15:36:36');
INSERT INTO `tb_visitlog_page` VALUES (1229, '180.253.61.35', 'wacana', '2022-03-07 16:17:54');
INSERT INTO `tb_visitlog_page` VALUES (1230, '180.253.61.35', 'news', '2022-03-07 16:18:58');
INSERT INTO `tb_visitlog_page` VALUES (1231, '202.67.40.220', 'home', '2022-03-07 17:31:23');
INSERT INTO `tb_visitlog_page` VALUES (1232, '202.67.40.220', 'home', '2022-03-07 17:31:24');
INSERT INTO `tb_visitlog_page` VALUES (1233, '202.67.40.220', 'home', '2022-03-07 17:31:31');
INSERT INTO `tb_visitlog_page` VALUES (1234, '202.67.40.198', 'home', '2022-03-08 05:44:19');
INSERT INTO `tb_visitlog_page` VALUES (1235, '2001:448a:5020:e11c:', 'home', '2022-03-08 08:49:22');
INSERT INTO `tb_visitlog_page` VALUES (1236, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 08:49:33');
INSERT INTO `tb_visitlog_page` VALUES (1237, '2001:448a:5020:e11c:', 'home', '2022-03-08 08:51:52');
INSERT INTO `tb_visitlog_page` VALUES (1238, '2001:448a:5020:e11c:', 'menu', '2022-03-08 08:51:59');
INSERT INTO `tb_visitlog_page` VALUES (1239, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 08:52:10');
INSERT INTO `tb_visitlog_page` VALUES (1240, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 08:52:20');
INSERT INTO `tb_visitlog_page` VALUES (1241, '2001:448a:5020:e11c:', 'menu', '2022-03-08 08:52:21');
INSERT INTO `tb_visitlog_page` VALUES (1242, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 08:53:18');
INSERT INTO `tb_visitlog_page` VALUES (1243, '2001:448a:5020:e11c:', 'news', '2022-03-08 08:53:22');
INSERT INTO `tb_visitlog_page` VALUES (1244, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 08:53:29');
INSERT INTO `tb_visitlog_page` VALUES (1245, '2001:448a:5020:e11c:', 'news', '2022-03-08 08:53:30');
INSERT INTO `tb_visitlog_page` VALUES (1246, '2001:448a:5020:e11c:', 'news', '2022-03-08 09:03:38');
INSERT INTO `tb_visitlog_page` VALUES (1247, '2001:448a:5020:e11c:', 'menu', '2022-03-08 09:24:27');
INSERT INTO `tb_visitlog_page` VALUES (1248, '2001:448a:5020:e11c:', 'tentang', '2022-03-08 09:26:32');
INSERT INTO `tb_visitlog_page` VALUES (1249, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 09:26:38');
INSERT INTO `tb_visitlog_page` VALUES (1250, '2001:448a:5020:e11c:', 'menu', '2022-03-08 09:27:58');
INSERT INTO `tb_visitlog_page` VALUES (1251, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 09:30:43');
INSERT INTO `tb_visitlog_page` VALUES (1252, '2001:448a:5020:e11c:', 'home', '2022-03-08 09:30:45');
INSERT INTO `tb_visitlog_page` VALUES (1253, '2001:448a:5020:e11c:', 'keranjang', '2022-03-08 09:38:30');
INSERT INTO `tb_visitlog_page` VALUES (1254, '2001:448a:5020:e11c:', 'order', '2022-03-08 09:38:31');
INSERT INTO `tb_visitlog_page` VALUES (1255, '2001:448a:5020:e11c:', 'open po', '2022-03-08 09:38:32');
INSERT INTO `tb_visitlog_page` VALUES (1256, '2001:448a:5020:e11c:', 'open po', '2022-03-08 09:42:46');
INSERT INTO `tb_visitlog_page` VALUES (1257, '2001:448a:5020:e11c:', 'keranjang', '2022-03-08 09:42:48');
INSERT INTO `tb_visitlog_page` VALUES (1258, '2001:448a:5020:e11c:', 'keranjang', '2022-03-08 09:45:23');
INSERT INTO `tb_visitlog_page` VALUES (1259, '2001:448a:5020:e11c:', 'login', '2022-03-08 10:04:42');
INSERT INTO `tb_visitlog_page` VALUES (1260, '2001:448a:5020:e11c:', 'login', '2022-03-08 10:05:13');
INSERT INTO `tb_visitlog_page` VALUES (1261, '2001:448a:5020:e11c:', 'home', '2022-03-08 10:05:34');
INSERT INTO `tb_visitlog_page` VALUES (1262, '2001:448a:5020:e11c:', 'news', '2022-03-08 10:17:16');
INSERT INTO `tb_visitlog_page` VALUES (1263, '2001:448a:5020:e11c:', 'home', '2022-03-08 10:20:29');
INSERT INTO `tb_visitlog_page` VALUES (1264, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 10:31:00');
INSERT INTO `tb_visitlog_page` VALUES (1265, '2001:448a:5020:e11c:', 'news', '2022-03-08 10:31:02');
INSERT INTO `tb_visitlog_page` VALUES (1266, '2001:448a:5020:e11c:', 'menu', '2022-03-08 10:46:59');
INSERT INTO `tb_visitlog_page` VALUES (1267, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 10:50:18');
INSERT INTO `tb_visitlog_page` VALUES (1268, '2001:448a:5020:e11c:', 'menu', '2022-03-08 10:50:23');
INSERT INTO `tb_visitlog_page` VALUES (1269, '2001:448a:5020:e11c:', 'news', '2022-03-08 10:55:13');
INSERT INTO `tb_visitlog_page` VALUES (1270, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 11:17:20');
INSERT INTO `tb_visitlog_page` VALUES (1271, '2001:448a:5020:e11c:', 'menu', '2022-03-08 11:17:35');
INSERT INTO `tb_visitlog_page` VALUES (1272, '2001:448a:5020:e11c:', 'menu', '2022-03-08 11:21:45');
INSERT INTO `tb_visitlog_page` VALUES (1273, '2001:448a:5020:e11c:', 'news', '2022-03-08 11:21:55');
INSERT INTO `tb_visitlog_page` VALUES (1274, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 11:21:56');
INSERT INTO `tb_visitlog_page` VALUES (1275, '2001:448a:5020:e11c:', 'news', '2022-03-08 11:21:58');
INSERT INTO `tb_visitlog_page` VALUES (1276, '36.95.193.161', 'home', '2022-03-08 11:32:35');
INSERT INTO `tb_visitlog_page` VALUES (1277, '36.95.193.161', 'open po', '2022-03-08 11:32:51');
INSERT INTO `tb_visitlog_page` VALUES (1278, '36.95.193.161', 'keranjang', '2022-03-08 11:32:55');
INSERT INTO `tb_visitlog_page` VALUES (1279, '36.95.193.161', 'login', '2022-03-08 11:32:59');
INSERT INTO `tb_visitlog_page` VALUES (1280, '36.95.193.161', 'register', '2022-03-08 11:33:01');
INSERT INTO `tb_visitlog_page` VALUES (1281, '2001:448a:5020:e11c:', 'menu', '2022-03-08 11:33:24');
INSERT INTO `tb_visitlog_page` VALUES (1282, '36.95.193.161', 'order', '2022-03-08 11:34:16');
INSERT INTO `tb_visitlog_page` VALUES (1283, '36.95.193.161', 'login', '2022-03-08 11:34:25');
INSERT INTO `tb_visitlog_page` VALUES (1284, '36.95.193.161', 'login', '2022-03-08 11:34:54');
INSERT INTO `tb_visitlog_page` VALUES (1285, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 11:54:56');
INSERT INTO `tb_visitlog_page` VALUES (1286, '2001:448a:5020:e11c:', 'news', '2022-03-08 11:54:59');
INSERT INTO `tb_visitlog_page` VALUES (1287, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 11:55:00');
INSERT INTO `tb_visitlog_page` VALUES (1288, '2001:448a:5020:e11c:', 'news', '2022-03-08 11:55:04');
INSERT INTO `tb_visitlog_page` VALUES (1289, '2001:448a:5020:e11c:', 'menu', '2022-03-08 12:15:03');
INSERT INTO `tb_visitlog_page` VALUES (1290, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 13:49:45');
INSERT INTO `tb_visitlog_page` VALUES (1291, '36.79.204.164', 'home', '2022-03-08 13:52:07');
INSERT INTO `tb_visitlog_page` VALUES (1292, '36.79.204.164', 'wacana', '2022-03-08 13:52:09');
INSERT INTO `tb_visitlog_page` VALUES (1293, '2001:448a:5020:e11c:', 'wacana', '2022-03-08 14:04:58');
INSERT INTO `tb_visitlog_page` VALUES (1294, '2001:448a:5020:e11c:', 'news', '2022-03-08 14:05:04');
INSERT INTO `tb_visitlog_page` VALUES (1295, '36.79.204.164', 'menu', '2022-03-08 14:13:59');
INSERT INTO `tb_visitlog_page` VALUES (1296, '36.79.204.164', 'wacana', '2022-03-08 14:42:42');
INSERT INTO `tb_visitlog_page` VALUES (1297, '36.79.204.164', 'news', '2022-03-08 14:42:55');
INSERT INTO `tb_visitlog_page` VALUES (1298, '36.79.204.164', 'wacana', '2022-03-08 14:53:25');
INSERT INTO `tb_visitlog_page` VALUES (1299, '36.79.204.164', 'menu', '2022-03-08 14:53:27');
INSERT INTO `tb_visitlog_page` VALUES (1300, '66.249.66.48', 'home', '2022-03-09 00:02:17');
INSERT INTO `tb_visitlog_page` VALUES (1301, '66.249.66.33', 'home', '2022-03-09 00:31:49');
INSERT INTO `tb_visitlog_page` VALUES (1302, '66.249.66.60', 'kontak', '2022-03-09 01:54:59');
INSERT INTO `tb_visitlog_page` VALUES (1303, '114.125.92.197', 'home', '2022-03-09 08:45:25');
INSERT INTO `tb_visitlog_page` VALUES (1304, '3.144.18.168', 'home', '2022-03-09 12:13:51');
INSERT INTO `tb_visitlog_page` VALUES (1305, '180.246.241.253', 'news', '2022-03-09 12:14:24');
INSERT INTO `tb_visitlog_page` VALUES (1306, '2001:448a:5020:e11c:', 'home', '2022-03-09 15:03:42');
INSERT INTO `tb_visitlog_page` VALUES (1307, '2001:448a:5020:e11c:', 'menu', '2022-03-09 15:03:43');
INSERT INTO `tb_visitlog_page` VALUES (1308, '180.246.241.253', 'home', '2022-03-09 15:04:19');
INSERT INTO `tb_visitlog_page` VALUES (1309, '180.246.241.253', 'menu', '2022-03-09 15:04:27');
INSERT INTO `tb_visitlog_page` VALUES (1310, '2001:448a:5020:e11c:', 'wacana', '2022-03-09 15:05:51');
INSERT INTO `tb_visitlog_page` VALUES (1311, '2001:448a:5020:e11c:', 'news', '2022-03-09 15:05:56');
INSERT INTO `tb_visitlog_page` VALUES (1312, '180.246.241.253', 'wacana', '2022-03-09 15:08:00');
INSERT INTO `tb_visitlog_page` VALUES (1313, '2001:448a:5020:e11c:', 'home', '2022-03-09 15:08:07');
INSERT INTO `tb_visitlog_page` VALUES (1314, '2001:448a:5020:e11c:', 'menu', '2022-03-09 15:08:09');
INSERT INTO `tb_visitlog_page` VALUES (1315, '2001:448a:5020:e11c:', 'wacana', '2022-03-09 15:08:11');
INSERT INTO `tb_visitlog_page` VALUES (1316, '2001:448a:5020:e11c:', 'news', '2022-03-09 15:08:12');
INSERT INTO `tb_visitlog_page` VALUES (1317, '180.246.241.253', 'news', '2022-03-09 15:13:15');
INSERT INTO `tb_visitlog_page` VALUES (1318, '2001:448a:5020:e11c:', 'wacana', '2022-03-09 15:31:04');
INSERT INTO `tb_visitlog_page` VALUES (1319, '2001:448a:5020:e11c:', 'home', '2022-03-09 15:40:49');
INSERT INTO `tb_visitlog_page` VALUES (1320, '2001:448a:5020:e11c:', 'home', '2022-03-09 15:41:00');
INSERT INTO `tb_visitlog_page` VALUES (1321, '36.79.204.164', 'galeri', '2022-03-09 16:13:46');
INSERT INTO `tb_visitlog_page` VALUES (1322, '180.246.241.253', 'home', '2022-03-09 16:57:00');
INSERT INTO `tb_visitlog_page` VALUES (1323, '180.246.241.253', 'menu', '2022-03-09 16:57:03');
INSERT INTO `tb_visitlog_page` VALUES (1324, '2001:448a:5020:e11c:', 'news', '2022-03-09 17:02:02');
INSERT INTO `tb_visitlog_page` VALUES (1325, '2001:448a:5020:e11c:', 'menu', '2022-03-09 17:13:58');
INSERT INTO `tb_visitlog_page` VALUES (1326, '2001:448a:5020:e11c:', 'wacana', '2022-03-09 17:20:53');
INSERT INTO `tb_visitlog_page` VALUES (1327, '2001:448a:5020:e11c:', 'wacana', '2022-03-09 17:22:00');
INSERT INTO `tb_visitlog_page` VALUES (1328, '2001:448a:5020:e11c:', 'menu', '2022-03-09 17:22:02');
INSERT INTO `tb_visitlog_page` VALUES (1329, '205.169.39.220', 'home', '2022-03-10 00:36:39');
INSERT INTO `tb_visitlog_page` VALUES (1330, '66.249.66.60', 'home', '2022-03-10 04:16:28');
INSERT INTO `tb_visitlog_page` VALUES (1331, '2001:448a:5020:e11c:', 'galeri', '2022-03-10 08:08:26');
INSERT INTO `tb_visitlog_page` VALUES (1332, '2001:448a:5020:e11c:', 'news', '2022-03-10 08:10:26');
INSERT INTO `tb_visitlog_page` VALUES (1333, '2001:448a:5020:e11c:', 'wacana', '2022-03-10 08:10:31');
INSERT INTO `tb_visitlog_page` VALUES (1334, '2001:448a:5020:e11c:', 'home', '2022-03-10 11:20:15');
INSERT INTO `tb_visitlog_page` VALUES (1335, '2001:448a:5020:e11c:', 'order', '2022-03-10 11:20:38');
INSERT INTO `tb_visitlog_page` VALUES (1336, '2001:448a:5020:e11c:', 'order', '2022-03-10 11:23:16');
INSERT INTO `tb_visitlog_page` VALUES (1337, '2001:448a:5020:e11c:', 'home', '2022-03-10 11:23:20');
INSERT INTO `tb_visitlog_page` VALUES (1338, '2001:448a:5020:e11c:', 'home', '2022-03-10 11:54:04');
INSERT INTO `tb_visitlog_page` VALUES (1339, '2001:448a:5020:e11c:', 'wacana', '2022-03-10 11:54:09');
INSERT INTO `tb_visitlog_page` VALUES (1340, '2001:448a:5020:e11c:', 'menu', '2022-03-10 11:54:22');
INSERT INTO `tb_visitlog_page` VALUES (1341, '2001:448a:5020:e11c:', 'wacana', '2022-03-10 16:15:16');
INSERT INTO `tb_visitlog_page` VALUES (1342, '2001:448a:5020:e11c:', 'menu', '2022-03-10 16:17:01');
INSERT INTO `tb_visitlog_page` VALUES (1343, '2001:448a:5020:e11c:', 'home', '2022-03-10 17:12:37');
INSERT INTO `tb_visitlog_page` VALUES (1344, '2001:448a:5020:e11c:', 'wacana', '2022-03-10 17:12:39');
INSERT INTO `tb_visitlog_page` VALUES (1345, '2001:448a:5020:e11c:', 'news', '2022-03-10 17:12:47');
INSERT INTO `tb_visitlog_page` VALUES (1346, '110.136.84.23', 'wacana', '2022-03-10 17:22:20');
INSERT INTO `tb_visitlog_page` VALUES (1347, '110.136.84.23', 'news', '2022-03-10 17:22:25');
INSERT INTO `tb_visitlog_page` VALUES (1348, '110.136.84.23', 'news', '2022-03-10 17:22:40');
INSERT INTO `tb_visitlog_page` VALUES (1349, '114.125.119.101', 'news', '2022-03-10 18:01:58');
INSERT INTO `tb_visitlog_page` VALUES (1350, '114.125.119.101', 'news', '2022-03-10 18:02:07');
INSERT INTO `tb_visitlog_page` VALUES (1351, '114.125.119.101', 'news', '2022-03-10 18:02:21');
INSERT INTO `tb_visitlog_page` VALUES (1352, '114.125.119.101', 'news', '2022-03-10 18:02:26');
INSERT INTO `tb_visitlog_page` VALUES (1353, '114.125.119.101', 'news', '2022-03-10 18:02:32');
INSERT INTO `tb_visitlog_page` VALUES (1354, '114.125.119.101', 'news', '2022-03-10 18:02:35');
INSERT INTO `tb_visitlog_page` VALUES (1355, '2001:448a:5020:8bfa:', 'galeri', '2022-03-11 08:07:21');
INSERT INTO `tb_visitlog_page` VALUES (1356, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 08:15:12');
INSERT INTO `tb_visitlog_page` VALUES (1357, '2001:448a:5020:8bfa:', 'news', '2022-03-11 08:15:15');
INSERT INTO `tb_visitlog_page` VALUES (1358, '2001:448a:5020:8bfa:', 'home', '2022-03-11 08:54:13');
INSERT INTO `tb_visitlog_page` VALUES (1359, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 08:54:14');
INSERT INTO `tb_visitlog_page` VALUES (1360, '180.246.241.253', 'home', '2022-03-11 08:55:21');
INSERT INTO `tb_visitlog_page` VALUES (1361, '180.246.241.253', 'wacana', '2022-03-11 08:55:24');
INSERT INTO `tb_visitlog_page` VALUES (1362, '180.246.241.253', 'news', '2022-03-11 08:55:27');
INSERT INTO `tb_visitlog_page` VALUES (1363, '125.164.6.62', 'news', '2022-03-11 09:00:42');
INSERT INTO `tb_visitlog_page` VALUES (1364, '125.164.6.62', 'news', '2022-03-11 09:00:55');
INSERT INTO `tb_visitlog_page` VALUES (1365, '2001:448a:5020:8bfa:', 'news', '2022-03-11 09:01:06');
INSERT INTO `tb_visitlog_page` VALUES (1366, '2001:448a:5020:8bfa:', 'news', '2022-03-11 09:23:19');
INSERT INTO `tb_visitlog_page` VALUES (1367, '110.136.84.40', 'home', '2022-03-11 09:24:55');
INSERT INTO `tb_visitlog_page` VALUES (1368, '110.136.84.40', 'wacana', '2022-03-11 09:24:58');
INSERT INTO `tb_visitlog_page` VALUES (1369, '110.136.84.40', 'news', '2022-03-11 09:25:01');
INSERT INTO `tb_visitlog_page` VALUES (1370, '2001:448a:5020:8bfa:', 'news', '2022-03-11 09:41:28');
INSERT INTO `tb_visitlog_page` VALUES (1371, '125.164.6.62', 'wacana', '2022-03-11 10:22:56');
INSERT INTO `tb_visitlog_page` VALUES (1372, '125.164.6.62', 'news', '2022-03-11 10:23:11');
INSERT INTO `tb_visitlog_page` VALUES (1373, '110.136.84.40', 'news', '2022-03-11 10:46:03');
INSERT INTO `tb_visitlog_page` VALUES (1374, '2001:448a:5020:8bfa:', 'menu', '2022-03-11 11:21:20');
INSERT INTO `tb_visitlog_page` VALUES (1375, '2001:448a:5020:8bfa:', 'home', '2022-03-11 14:11:36');
INSERT INTO `tb_visitlog_page` VALUES (1376, '2001:448a:5020:8bfa:', 'menu', '2022-03-11 14:18:47');
INSERT INTO `tb_visitlog_page` VALUES (1377, '2001:448a:5020:8bfa:', 'home', '2022-03-11 14:58:27');
INSERT INTO `tb_visitlog_page` VALUES (1378, '2001:448a:5020:8bfa:', 'tentang', '2022-03-11 14:58:42');
INSERT INTO `tb_visitlog_page` VALUES (1379, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 14:58:46');
INSERT INTO `tb_visitlog_page` VALUES (1380, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 15:18:16');
INSERT INTO `tb_visitlog_page` VALUES (1381, '2001:448a:5020:8bfa:', 'home', '2022-03-11 16:05:21');
INSERT INTO `tb_visitlog_page` VALUES (1382, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 16:05:22');
INSERT INTO `tb_visitlog_page` VALUES (1383, '2001:448a:5020:8bfa:', 'news', '2022-03-11 16:05:30');
INSERT INTO `tb_visitlog_page` VALUES (1384, '2001:448a:5020:8bfa:', 'news', '2022-03-11 16:06:59');
INSERT INTO `tb_visitlog_page` VALUES (1385, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 16:08:25');
INSERT INTO `tb_visitlog_page` VALUES (1386, '2001:448a:5020:8bfa:', 'news', '2022-03-11 16:08:32');
INSERT INTO `tb_visitlog_page` VALUES (1387, '2001:448a:5020:8bfa:', 'wacana', '2022-03-11 16:56:32');
INSERT INTO `tb_visitlog_page` VALUES (1388, '66.96.224.197', 'news', '2022-03-11 17:02:42');
INSERT INTO `tb_visitlog_page` VALUES (1389, '2001:448a:5020:8bfa:', 'home', '2022-03-11 17:04:12');
INSERT INTO `tb_visitlog_page` VALUES (1390, '110.138.168.144', 'news', '2022-03-11 17:05:46');
INSERT INTO `tb_visitlog_page` VALUES (1391, '2001:448a:5020:8bfa:', 'home', '2022-03-11 18:47:07');
INSERT INTO `tb_visitlog_page` VALUES (1392, '182.1.112.11', 'home', '2022-03-11 20:38:34');
INSERT INTO `tb_visitlog_page` VALUES (1393, '182.1.112.11', 'wacana', '2022-03-11 20:38:36');
INSERT INTO `tb_visitlog_page` VALUES (1394, '182.1.112.11', 'news', '2022-03-11 20:38:46');
INSERT INTO `tb_visitlog_page` VALUES (1395, '112.215.153.40', 'news', '2022-03-11 23:17:28');
INSERT INTO `tb_visitlog_page` VALUES (1396, '112.215.153.40', 'news', '2022-03-11 23:18:24');
INSERT INTO `tb_visitlog_page` VALUES (1397, '17.121.115.167', 'order', '2022-03-12 01:42:46');
INSERT INTO `tb_visitlog_page` VALUES (1398, '66.249.64.152', 'kontak', '2022-03-12 06:53:34');
INSERT INTO `tb_visitlog_page` VALUES (1399, '125.164.3.203', 'news', '2022-03-12 07:49:09');
INSERT INTO `tb_visitlog_page` VALUES (1400, '66.249.64.132', 'keranjang', '2022-03-12 10:20:10');
INSERT INTO `tb_visitlog_page` VALUES (1401, '112.215.242.244', 'home', '2022-03-12 11:59:28');
INSERT INTO `tb_visitlog_page` VALUES (1402, '112.215.242.244', 'home', '2022-03-12 11:59:37');
INSERT INTO `tb_visitlog_page` VALUES (1403, '112.215.242.244', 'wacana', '2022-03-12 11:59:40');
INSERT INTO `tb_visitlog_page` VALUES (1404, '112.215.242.244', 'wacana', '2022-03-12 11:59:42');
INSERT INTO `tb_visitlog_page` VALUES (1405, '112.215.242.244', 'news', '2022-03-12 11:59:48');
INSERT INTO `tb_visitlog_page` VALUES (1406, '112.215.242.244', 'wacana', '2022-03-12 12:00:00');
INSERT INTO `tb_visitlog_page` VALUES (1407, '112.215.242.244', 'home', '2022-03-12 12:00:08');
INSERT INTO `tb_visitlog_page` VALUES (1408, '118.99.79.206', 'home', '2022-03-12 16:26:47');
INSERT INTO `tb_visitlog_page` VALUES (1409, '118.99.79.206', 'home', '2022-03-12 16:27:56');
INSERT INTO `tb_visitlog_page` VALUES (1410, '2a03:2880:ff:12::fac', 'home', '2022-03-13 11:00:27');
INSERT INTO `tb_visitlog_page` VALUES (1411, '2a03:2880:31ff:3::fa', 'home', '2022-03-13 11:00:27');
INSERT INTO `tb_visitlog_page` VALUES (1412, '2a03:2880:10ff:14::f', 'home', '2022-03-13 11:00:29');
INSERT INTO `tb_visitlog_page` VALUES (1413, '2a03:2880:30ff:14::f', 'home', '2022-03-13 11:00:29');
INSERT INTO `tb_visitlog_page` VALUES (1414, '2a03:2880:30ff:77::f', 'home', '2022-03-13 11:00:36');
INSERT INTO `tb_visitlog_page` VALUES (1415, '205.169.39.53', 'home', '2022-03-14 01:05:36');
INSERT INTO `tb_visitlog_page` VALUES (1416, '125.164.3.84', 'home', '2022-03-14 08:28:17');
INSERT INTO `tb_visitlog_page` VALUES (1417, '125.164.3.84', 'home', '2022-03-14 08:42:55');
INSERT INTO `tb_visitlog_page` VALUES (1418, '125.164.3.84', 'open po', '2022-03-14 08:43:05');
INSERT INTO `tb_visitlog_page` VALUES (1419, '125.164.4.38', 'open po', '2022-03-14 09:32:02');
INSERT INTO `tb_visitlog_page` VALUES (1420, '65.154.226.167', 'home', '2022-03-14 10:10:18');
INSERT INTO `tb_visitlog_page` VALUES (1421, '125.164.4.38', 'home', '2022-03-14 10:41:10');
INSERT INTO `tb_visitlog_page` VALUES (1422, '125.164.3.84', 'open po', '2022-03-14 11:00:28');
INSERT INTO `tb_visitlog_page` VALUES (1423, '125.164.4.38', 'open po', '2022-03-14 11:57:15');
INSERT INTO `tb_visitlog_page` VALUES (1424, '125.164.4.38', 'keranjang', '2022-03-14 11:57:19');
INSERT INTO `tb_visitlog_page` VALUES (1425, '125.164.4.38', 'open po', '2022-03-14 11:57:23');
INSERT INTO `tb_visitlog_page` VALUES (1426, '125.164.4.38', 'home', '2022-03-14 11:57:29');
INSERT INTO `tb_visitlog_page` VALUES (1427, '125.164.4.38', 'wacana', '2022-03-14 11:57:40');
INSERT INTO `tb_visitlog_page` VALUES (1428, '125.164.4.38', 'tentang', '2022-03-14 11:57:44');
INSERT INTO `tb_visitlog_page` VALUES (1429, '125.164.3.84', 'menu', '2022-03-14 12:01:11');
INSERT INTO `tb_visitlog_page` VALUES (1430, '125.164.3.84', 'kontak', '2022-03-14 14:23:23');
INSERT INTO `tb_visitlog_page` VALUES (1431, '114.4.222.251', 'home', '2022-03-14 17:34:33');
INSERT INTO `tb_visitlog_page` VALUES (1432, '2001:448a:5020:d95a:', 'home', '2022-03-14 17:57:08');
INSERT INTO `tb_visitlog_page` VALUES (1433, '207.46.13.115', 'wacana', '2022-03-15 00:12:53');
INSERT INTO `tb_visitlog_page` VALUES (1434, '66.249.64.146', 'home', '2022-03-15 01:43:24');
INSERT INTO `tb_visitlog_page` VALUES (1435, '66.249.64.139', 'home', '2022-03-15 01:47:19');
INSERT INTO `tb_visitlog_page` VALUES (1436, '125.164.14.134', 'home', '2022-03-15 08:28:43');
INSERT INTO `tb_visitlog_page` VALUES (1437, '125.164.13.244', 'menu', '2022-03-15 10:38:44');
INSERT INTO `tb_visitlog_page` VALUES (1438, '125.164.13.244', 'home', '2022-03-15 10:38:47');
INSERT INTO `tb_visitlog_page` VALUES (1439, '125.164.13.244', 'wacana', '2022-03-15 10:51:28');
INSERT INTO `tb_visitlog_page` VALUES (1440, '125.164.13.244', 'tentang', '2022-03-15 10:51:31');
INSERT INTO `tb_visitlog_page` VALUES (1441, '125.164.13.244', 'menu', '2022-03-15 10:51:32');
INSERT INTO `tb_visitlog_page` VALUES (1442, '125.164.13.244', 'tentang', '2022-03-15 10:51:35');
INSERT INTO `tb_visitlog_page` VALUES (1443, '125.164.13.244', 'wacana', '2022-03-15 13:40:15');
INSERT INTO `tb_visitlog_page` VALUES (1444, '125.164.14.134', 'wacana', '2022-03-15 15:51:09');
INSERT INTO `tb_visitlog_page` VALUES (1445, '125.164.14.134', 'wacana', '2022-03-15 16:24:52');
INSERT INTO `tb_visitlog_page` VALUES (1446, '157.55.39.205', 'wacana', '2022-03-15 17:39:50');
INSERT INTO `tb_visitlog_page` VALUES (1447, '66.249.64.152', 'news', '2022-03-15 23:20:06');
INSERT INTO `tb_visitlog_page` VALUES (1448, '180.253.160.86', 'home', '2022-03-16 15:24:35');
INSERT INTO `tb_visitlog_page` VALUES (1449, '180.253.160.86', 'home', '2022-03-16 15:26:02');
INSERT INTO `tb_visitlog_page` VALUES (1450, '2001:448a:5020:597c:', 'news', '2022-03-16 16:42:22');
INSERT INTO `tb_visitlog_page` VALUES (1451, '205.169.39.217', 'home', '2022-03-17 01:47:24');
INSERT INTO `tb_visitlog_page` VALUES (1452, '2a03:2880:10ff:9::fa', 'home', '2022-03-17 09:58:48');
INSERT INTO `tb_visitlog_page` VALUES (1453, '2001:448a:5020:6b9b:', 'home', '2022-03-17 13:18:55');
INSERT INTO `tb_visitlog_page` VALUES (1454, '2001:448a:5020:6b9b:', 'keranjang', '2022-03-17 13:19:02');
INSERT INTO `tb_visitlog_page` VALUES (1455, '2001:448a:5020:6b9b:', 'wacana', '2022-03-17 13:19:05');
INSERT INTO `tb_visitlog_page` VALUES (1456, '2001:448a:5020:6b9b:', 'galeri', '2022-03-17 13:19:06');
INSERT INTO `tb_visitlog_page` VALUES (1457, '125.164.0.240', 'home', '2022-03-17 13:44:31');
INSERT INTO `tb_visitlog_page` VALUES (1458, '2001:448a:5020:6b9b:', 'news', '2022-03-17 13:51:50');
INSERT INTO `tb_visitlog_page` VALUES (1459, '2001:448a:5020:6b9b:', 'news', '2022-03-17 13:52:26');
INSERT INTO `tb_visitlog_page` VALUES (1460, '2001:448a:5020:6b9b:', 'news', '2022-03-17 13:55:22');
INSERT INTO `tb_visitlog_page` VALUES (1461, '2001:448a:5020:6b9b:', 'news', '2022-03-17 13:56:00');
INSERT INTO `tb_visitlog_page` VALUES (1462, '125.164.1.244', 'order', '2022-03-17 13:59:33');
INSERT INTO `tb_visitlog_page` VALUES (1463, '125.164.1.244', 'open po', '2022-03-17 13:59:39');
INSERT INTO `tb_visitlog_page` VALUES (1464, '125.164.1.244', 'order', '2022-03-17 14:00:22');
INSERT INTO `tb_visitlog_page` VALUES (1465, '125.164.1.244', 'open po', '2022-03-17 14:00:35');
INSERT INTO `tb_visitlog_page` VALUES (1466, '125.164.1.244', 'order', '2022-03-17 14:01:13');
INSERT INTO `tb_visitlog_page` VALUES (1467, '125.164.1.244', 'order', '2022-03-17 14:01:34');
INSERT INTO `tb_visitlog_page` VALUES (1468, '125.164.1.244', 'open po', '2022-03-17 14:07:31');
INSERT INTO `tb_visitlog_page` VALUES (1469, '125.164.1.244', 'open po', '2022-03-17 14:10:14');
INSERT INTO `tb_visitlog_page` VALUES (1470, '125.164.1.244', 'open po', '2022-03-17 14:33:09');
INSERT INTO `tb_visitlog_page` VALUES (1471, '125.164.1.244', 'home', '2022-03-17 14:45:29');
INSERT INTO `tb_visitlog_page` VALUES (1472, '2001:448a:5020:6b9b:', 'wacana', '2022-03-17 14:45:47');
INSERT INTO `tb_visitlog_page` VALUES (1473, '2001:448a:5020:6b9b:', 'menu', '2022-03-17 14:45:52');
INSERT INTO `tb_visitlog_page` VALUES (1474, '66.249.64.135', 'home', '2022-03-17 15:20:30');
INSERT INTO `tb_visitlog_page` VALUES (1475, '2001:448a:5020:6b9b:', 'news', '2022-03-17 15:32:37');
INSERT INTO `tb_visitlog_page` VALUES (1476, '2001:448a:5020:6b9b:', 'news', '2022-03-17 15:46:37');
INSERT INTO `tb_visitlog_page` VALUES (1477, '2001:448a:5020:6b9b:', 'news', '2022-03-17 15:50:20');
INSERT INTO `tb_visitlog_page` VALUES (1478, '36.82.91.64', 'news', '2022-03-18 07:53:37');
INSERT INTO `tb_visitlog_page` VALUES (1479, '36.82.91.64', 'menu', '2022-03-18 07:53:40');
INSERT INTO `tb_visitlog_page` VALUES (1480, '2001:448a:5020:d75b:', 'home', '2022-03-18 08:33:33');
INSERT INTO `tb_visitlog_page` VALUES (1481, '2001:448a:5020:d75b:', 'wacana', '2022-03-18 08:33:37');
INSERT INTO `tb_visitlog_page` VALUES (1482, '2001:448a:5020:d75b:', 'news', '2022-03-18 08:33:50');
INSERT INTO `tb_visitlog_page` VALUES (1483, '36.82.91.64', 'home', '2022-03-18 08:35:46');
INSERT INTO `tb_visitlog_page` VALUES (1484, '36.82.91.64', 'wacana', '2022-03-18 08:35:49');
INSERT INTO `tb_visitlog_page` VALUES (1485, '36.82.91.64', 'news', '2022-03-18 08:35:51');
INSERT INTO `tb_visitlog_page` VALUES (1486, '36.82.91.64', 'order', '2022-03-18 08:36:08');
INSERT INTO `tb_visitlog_page` VALUES (1487, '2001:448a:5020:d75b:', 'news', '2022-03-18 08:45:16');
INSERT INTO `tb_visitlog_page` VALUES (1488, '202.6.227.46', 'news', '2022-03-18 09:26:32');
INSERT INTO `tb_visitlog_page` VALUES (1489, '2001:448a:5020:d75b:', 'news', '2022-03-18 14:14:44');
INSERT INTO `tb_visitlog_page` VALUES (1490, '36.82.91.64', 'news', '2022-03-18 14:22:42');
INSERT INTO `tb_visitlog_page` VALUES (1491, '2001:448a:5020:d75b:', 'open po', '2022-03-18 14:23:29');
INSERT INTO `tb_visitlog_page` VALUES (1492, '2001:448a:5020:d75b:', 'news', '2022-03-18 14:47:13');
INSERT INTO `tb_visitlog_page` VALUES (1493, '180.253.166.185', 'home', '2022-03-18 17:11:44');
INSERT INTO `tb_visitlog_page` VALUES (1494, '180.253.166.185', 'wacana', '2022-03-18 17:11:47');
INSERT INTO `tb_visitlog_page` VALUES (1495, '180.253.166.185', 'news', '2022-03-18 17:11:48');
INSERT INTO `tb_visitlog_page` VALUES (1496, '150.129.59.4', 'news', '2022-03-18 17:36:44');
INSERT INTO `tb_visitlog_page` VALUES (1497, '2001:448a:5020:d75b:', 'home', '2022-03-21 08:19:04');
INSERT INTO `tb_visitlog_page` VALUES (1498, '2001:448a:5020:d75b:', 'wacana', '2022-03-21 08:26:13');
INSERT INTO `tb_visitlog_page` VALUES (1499, '2001:448a:5020:d75b:', 'news', '2022-03-21 08:26:29');
INSERT INTO `tb_visitlog_page` VALUES (1500, '2001:448a:5020:d75b:', 'wacana', '2022-03-21 08:27:02');
INSERT INTO `tb_visitlog_page` VALUES (1501, '2001:448a:5020:d75b:', 'home', '2022-03-21 08:36:41');
INSERT INTO `tb_visitlog_page` VALUES (1502, '2001:448a:5020:d75b:', 'wacana', '2022-03-21 08:55:12');
INSERT INTO `tb_visitlog_page` VALUES (1503, '2001:448a:5020:d75b:', 'order', '2022-03-21 08:55:15');
INSERT INTO `tb_visitlog_page` VALUES (1504, '2001:448a:5020:d75b:', 'open po', '2022-03-21 08:55:17');
INSERT INTO `tb_visitlog_page` VALUES (1505, '2001:448a:5020:d75b:', 'open po', '2022-03-21 09:01:47');
INSERT INTO `tb_visitlog_page` VALUES (1506, '65.154.226.170', 'home', '2022-03-21 09:45:52');
INSERT INTO `tb_visitlog_page` VALUES (1507, '2001:448a:5020:d75b:', 'open po', '2022-03-21 09:59:24');
INSERT INTO `tb_visitlog_page` VALUES (1508, '40.91.86.116', 'tentang', '2022-03-21 10:18:00');
INSERT INTO `tb_visitlog_page` VALUES (1509, '40.91.86.116', 'home', '2022-03-21 10:18:01');
INSERT INTO `tb_visitlog_page` VALUES (1510, '65.154.226.170', 'home', '2022-03-21 10:38:26');
INSERT INTO `tb_visitlog_page` VALUES (1511, '65.154.226.169', 'home', '2022-03-21 10:40:16');
INSERT INTO `tb_visitlog_page` VALUES (1512, '2001:448a:5020:d75b:', 'home', '2022-03-21 11:04:54');
INSERT INTO `tb_visitlog_page` VALUES (1513, '2001:448a:5020:d75b:', 'open po', '2022-03-21 11:05:19');
INSERT INTO `tb_visitlog_page` VALUES (1514, '146.148.33.129', 'home', '2022-03-22 06:18:00');
INSERT INTO `tb_visitlog_page` VALUES (1515, '2001:448a:5020:d75b:', 'home', '2022-03-22 08:25:22');
INSERT INTO `tb_visitlog_page` VALUES (1516, '2001:448a:5020:d75b:', 'home', '2022-03-22 15:26:26');
INSERT INTO `tb_visitlog_page` VALUES (1517, '2001:448a:5020:d75b:', 'galeri', '2022-03-22 15:26:28');
INSERT INTO `tb_visitlog_page` VALUES (1518, '2001:448a:5020:d75b:', 'news', '2022-03-23 08:06:40');
INSERT INTO `tb_visitlog_page` VALUES (1519, '2001:448a:5020:d75b:', 'home', '2022-03-23 09:38:40');
INSERT INTO `tb_visitlog_page` VALUES (1520, '2001:448a:5020:d75b:', 'home', '2022-03-23 09:39:17');
INSERT INTO `tb_visitlog_page` VALUES (1521, '180.253.160.125', 'galeri', '2022-03-23 09:42:30');
INSERT INTO `tb_visitlog_page` VALUES (1522, '2001:448a:5020:d75b:', 'keranjang', '2022-03-23 10:03:07');
INSERT INTO `tb_visitlog_page` VALUES (1523, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:03:11');
INSERT INTO `tb_visitlog_page` VALUES (1524, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:03:19');
INSERT INTO `tb_visitlog_page` VALUES (1525, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:03:22');
INSERT INTO `tb_visitlog_page` VALUES (1526, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:03:25');
INSERT INTO `tb_visitlog_page` VALUES (1527, '2001:448a:5020:d75b:', 'open po', '2022-03-23 10:03:26');
INSERT INTO `tb_visitlog_page` VALUES (1528, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:03:28');
INSERT INTO `tb_visitlog_page` VALUES (1529, '2001:448a:5020:d75b:', 'keranjang', '2022-03-23 10:03:30');
INSERT INTO `tb_visitlog_page` VALUES (1530, '2001:448a:5020:d75b:', 'order', '2022-03-23 10:35:02');
INSERT INTO `tb_visitlog_page` VALUES (1531, '2001:448a:5020:d75b:', 'kontak', '2022-03-23 10:35:03');
INSERT INTO `tb_visitlog_page` VALUES (1532, '2001:448a:5020:d75b:', 'login', '2022-03-23 10:35:07');
INSERT INTO `tb_visitlog_page` VALUES (1533, '2001:448a:5020:d75b:', 'wacana', '2022-03-23 10:35:10');
INSERT INTO `tb_visitlog_page` VALUES (1534, '2001:448a:5020:d75b:', 'galeri', '2022-03-23 10:35:12');
INSERT INTO `tb_visitlog_page` VALUES (1535, '2001:448a:5020:d75b:', 'menu', '2022-03-23 10:35:16');
INSERT INTO `tb_visitlog_page` VALUES (1536, '2001:448a:5020:d75b:', 'tentang', '2022-03-23 10:35:21');
INSERT INTO `tb_visitlog_page` VALUES (1537, '2001:448a:5020:d75b:', 'wacana', '2022-03-23 10:35:23');
INSERT INTO `tb_visitlog_page` VALUES (1538, '2001:448a:5020:d75b:', 'news', '2022-03-23 10:35:26');
INSERT INTO `tb_visitlog_page` VALUES (1539, '2001:448a:5020:d75b:', 'wacana', '2022-03-23 10:35:46');
INSERT INTO `tb_visitlog_page` VALUES (1540, '2001:448a:5020:d75b:', 'news', '2022-03-23 10:36:04');
INSERT INTO `tb_visitlog_page` VALUES (1541, '2001:448a:5020:d75b:', 'wacana', '2022-03-23 10:36:12');
INSERT INTO `tb_visitlog_page` VALUES (1542, '2001:448a:5020:d75b:', 'tentang', '2022-03-23 10:40:42');
INSERT INTO `tb_visitlog_page` VALUES (1543, '36.82.91.64', 'home', '2022-03-23 13:27:47');
INSERT INTO `tb_visitlog_page` VALUES (1544, '36.82.91.64', 'home', '2022-03-23 13:30:14');
INSERT INTO `tb_visitlog_page` VALUES (1545, '149.113.52.221', 'home', '2022-03-24 08:52:39');
INSERT INTO `tb_visitlog_page` VALUES (1546, '149.113.52.221', 'tentang', '2022-03-24 08:52:51');
INSERT INTO `tb_visitlog_page` VALUES (1547, '149.113.52.221', 'galeri', '2022-03-24 08:52:55');
INSERT INTO `tb_visitlog_page` VALUES (1548, '149.113.52.221', 'order', '2022-03-24 08:53:02');
INSERT INTO `tb_visitlog_page` VALUES (1549, '149.113.52.221', 'menu', '2022-03-24 08:53:07');
INSERT INTO `tb_visitlog_page` VALUES (1550, '149.113.52.221', 'login', '2022-03-24 08:53:19');
INSERT INTO `tb_visitlog_page` VALUES (1551, '149.113.52.221', 'tentang', '2022-03-24 08:53:21');
INSERT INTO `tb_visitlog_page` VALUES (1552, '2001:448a:5020:d75b:', 'home', '2022-03-24 13:30:52');
INSERT INTO `tb_visitlog_page` VALUES (1553, '2001:448a:5020:d75b:', 'wacana', '2022-03-24 13:30:54');
INSERT INTO `tb_visitlog_page` VALUES (1554, '2001:448a:5020:d75b:', 'news', '2022-03-24 13:31:01');
INSERT INTO `tb_visitlog_page` VALUES (1555, '2001:448a:5020:8fed:', 'news', '2022-03-25 08:41:43');
INSERT INTO `tb_visitlog_page` VALUES (1556, '2001:448a:5020:8fed:', 'news', '2022-03-25 09:12:58');
INSERT INTO `tb_visitlog_page` VALUES (1557, '2001:448a:5020:8fed:', 'home', '2022-03-25 10:17:37');
INSERT INTO `tb_visitlog_page` VALUES (1558, '2001:448a:5020:8fed:', 'menu', '2022-03-25 10:17:57');
INSERT INTO `tb_visitlog_page` VALUES (1559, '2001:448a:5020:8fed:', 'order', '2022-03-25 10:18:05');
INSERT INTO `tb_visitlog_page` VALUES (1560, '2001:448a:5020:8fed:', 'open po', '2022-03-25 10:18:14');
INSERT INTO `tb_visitlog_page` VALUES (1561, '36.74.90.231', 'home', '2022-03-25 10:18:42');
INSERT INTO `tb_visitlog_page` VALUES (1562, '36.74.90.231', 'menu', '2022-03-25 10:18:45');
INSERT INTO `tb_visitlog_page` VALUES (1563, '36.74.90.231', 'home', '2022-03-25 10:18:49');
INSERT INTO `tb_visitlog_page` VALUES (1564, '36.74.90.231', 'order', '2022-03-25 10:18:52');
INSERT INTO `tb_visitlog_page` VALUES (1565, '36.74.90.231', 'open po', '2022-03-25 10:18:56');
INSERT INTO `tb_visitlog_page` VALUES (1566, '36.74.90.231', 'open po', '2022-03-25 10:19:18');
INSERT INTO `tb_visitlog_page` VALUES (1567, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:48:08');
INSERT INTO `tb_visitlog_page` VALUES (1568, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:49:50');
INSERT INTO `tb_visitlog_page` VALUES (1569, '103.26.211.4', 'news', '2022-03-25 10:50:15');
INSERT INTO `tb_visitlog_page` VALUES (1570, '2001:448a:5020:8fed:', 'home', '2022-03-25 10:50:24');
INSERT INTO `tb_visitlog_page` VALUES (1571, '2001:448a:5020:8fed:', 'wacana', '2022-03-25 10:50:24');
INSERT INTO `tb_visitlog_page` VALUES (1572, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:50:29');
INSERT INTO `tb_visitlog_page` VALUES (1573, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:50:47');
INSERT INTO `tb_visitlog_page` VALUES (1574, '2001:448a:5020:8fed:', 'wacana', '2022-03-25 10:51:05');
INSERT INTO `tb_visitlog_page` VALUES (1575, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:53:35');
INSERT INTO `tb_visitlog_page` VALUES (1576, '2001:448a:5020:8fed:', 'home', '2022-03-25 10:56:31');
INSERT INTO `tb_visitlog_page` VALUES (1577, '2001:448a:5020:8fed:', 'news', '2022-03-25 10:56:36');
INSERT INTO `tb_visitlog_page` VALUES (1578, '180.253.160.125', 'news', '2022-03-25 11:05:32');
INSERT INTO `tb_visitlog_page` VALUES (1579, '66.249.72.184', 'home', '2022-03-25 11:39:36');
INSERT INTO `tb_visitlog_page` VALUES (1580, '180.253.60.134', 'home', '2022-03-25 12:07:54');
INSERT INTO `tb_visitlog_page` VALUES (1581, '2001:448a:5020:8fed:', 'news', '2022-03-25 12:54:54');
INSERT INTO `tb_visitlog_page` VALUES (1582, '66.249.66.222', 'menu', '2022-03-25 16:36:15');
INSERT INTO `tb_visitlog_page` VALUES (1583, '114.4.4.198', 'news', '2022-03-25 17:12:59');
INSERT INTO `tb_visitlog_page` VALUES (1584, '36.74.121.68', 'home', '2022-03-25 17:29:12');
INSERT INTO `tb_visitlog_page` VALUES (1585, '36.74.121.68', 'wacana', '2022-03-25 17:29:51');
INSERT INTO `tb_visitlog_page` VALUES (1586, '36.74.121.68', 'news', '2022-03-25 17:29:55');
INSERT INTO `tb_visitlog_page` VALUES (1587, '113.197.108.37', 'news', '2022-03-25 17:36:54');
INSERT INTO `tb_visitlog_page` VALUES (1588, '114.4.4.136', 'wacana', '2022-03-25 18:05:07');
INSERT INTO `tb_visitlog_page` VALUES (1589, '66.249.64.135', 'menu', '2022-03-25 18:21:05');
INSERT INTO `tb_visitlog_page` VALUES (1590, '112.215.153.169', 'open po', '2022-03-25 18:49:15');
INSERT INTO `tb_visitlog_page` VALUES (1591, '17.121.114.59', 'wacana', '2022-03-26 01:18:08');
INSERT INTO `tb_visitlog_page` VALUES (1592, '66.249.66.222', 'keranjang', '2022-03-26 05:03:11');
INSERT INTO `tb_visitlog_page` VALUES (1593, '66.249.72.184', 'keranjang', '2022-03-26 06:01:44');
INSERT INTO `tb_visitlog_page` VALUES (1594, '66.249.73.114', 'menu', '2022-03-26 06:39:20');
INSERT INTO `tb_visitlog_page` VALUES (1595, '69.160.160.55', 'home', '2022-03-26 08:21:17');
INSERT INTO `tb_visitlog_page` VALUES (1596, '66.249.64.135', 'home', '2022-03-26 15:07:45');
INSERT INTO `tb_visitlog_page` VALUES (1597, '66.249.73.114', 'kebijakan privasi', '2022-03-26 16:19:38');
INSERT INTO `tb_visitlog_page` VALUES (1598, '205.169.39.52', 'home', '2022-03-27 05:42:30');
INSERT INTO `tb_visitlog_page` VALUES (1599, '66.249.73.114', 'home', '2022-03-27 12:11:14');
INSERT INTO `tb_visitlog_page` VALUES (1600, '66.249.66.222', 'home', '2022-03-27 12:11:49');
INSERT INTO `tb_visitlog_page` VALUES (1601, '65.154.226.167', 'home', '2022-03-28 01:49:42');
INSERT INTO `tb_visitlog_page` VALUES (1602, '139.0.117.135', 'home', '2022-03-28 08:04:16');
INSERT INTO `tb_visitlog_page` VALUES (1603, '125.164.10.76', 'home', '2022-03-28 08:15:43');
INSERT INTO `tb_visitlog_page` VALUES (1604, '202.6.227.46', 'open po', '2022-03-28 08:31:00');
INSERT INTO `tb_visitlog_page` VALUES (1605, '125.164.15.41', 'open po', '2022-03-28 09:52:04');
INSERT INTO `tb_visitlog_page` VALUES (1606, '202.6.227.46', 'open po', '2022-03-28 10:43:15');
INSERT INTO `tb_visitlog_page` VALUES (1607, '125.164.10.76', 'home', '2022-03-28 10:44:32');
INSERT INTO `tb_visitlog_page` VALUES (1608, '125.164.10.76', 'order', '2022-03-28 10:45:16');
INSERT INTO `tb_visitlog_page` VALUES (1609, '125.164.10.76', 'open po', '2022-03-28 10:45:18');
INSERT INTO `tb_visitlog_page` VALUES (1610, '202.6.227.46', 'open po', '2022-03-28 10:45:21');
INSERT INTO `tb_visitlog_page` VALUES (1611, '125.164.10.76', 'home', '2022-03-28 10:45:27');
INSERT INTO `tb_visitlog_page` VALUES (1612, '202.6.227.46', 'tentang', '2022-03-28 10:45:30');
INSERT INTO `tb_visitlog_page` VALUES (1613, '202.6.227.46', 'home', '2022-03-28 10:45:31');
INSERT INTO `tb_visitlog_page` VALUES (1614, '202.6.227.46', 'home', '2022-03-28 10:45:49');
INSERT INTO `tb_visitlog_page` VALUES (1615, '202.6.227.46', 'home', '2022-03-28 10:50:20');
INSERT INTO `tb_visitlog_page` VALUES (1616, '125.164.15.41', 'home', '2022-03-28 11:05:02');
INSERT INTO `tb_visitlog_page` VALUES (1617, '205.169.39.54', 'home', '2022-03-28 11:17:31');
INSERT INTO `tb_visitlog_page` VALUES (1618, '202.6.227.46', 'home', '2022-03-28 11:17:34');
INSERT INTO `tb_visitlog_page` VALUES (1619, '65.154.226.169', 'home', '2022-03-28 11:19:34');
INSERT INTO `tb_visitlog_page` VALUES (1620, '205.169.39.54', 'home', '2022-03-28 11:30:37');
INSERT INTO `tb_visitlog_page` VALUES (1621, '66.249.64.152', 'home', '2022-03-28 11:55:45');
INSERT INTO `tb_visitlog_page` VALUES (1622, '202.6.227.46', 'home', '2022-03-28 13:13:17');
INSERT INTO `tb_visitlog_page` VALUES (1623, '202.6.227.46', 'wacana', '2022-03-28 13:13:20');
INSERT INTO `tb_visitlog_page` VALUES (1624, '202.6.227.46', 'news', '2022-03-28 13:13:23');
INSERT INTO `tb_visitlog_page` VALUES (1625, '66.249.73.112', 'home', '2022-03-28 13:25:15');
INSERT INTO `tb_visitlog_page` VALUES (1626, '66.249.64.146', 'home', '2022-03-28 13:25:16');
INSERT INTO `tb_visitlog_page` VALUES (1627, '202.6.227.46', 'news', '2022-03-28 13:38:33');
INSERT INTO `tb_visitlog_page` VALUES (1628, '66.249.64.152', 'news', '2022-03-28 13:57:34');
INSERT INTO `tb_visitlog_page` VALUES (1629, '2001:448a:5020:b192:', 'news', '2022-03-28 14:55:44');
INSERT INTO `tb_visitlog_page` VALUES (1630, '125.164.10.76', 'news', '2022-03-28 15:43:25');
INSERT INTO `tb_visitlog_page` VALUES (1631, '125.164.10.76', 'news', '2022-03-28 16:03:22');
INSERT INTO `tb_visitlog_page` VALUES (1632, '202.6.227.46', 'news', '2022-03-28 16:34:44');
INSERT INTO `tb_visitlog_page` VALUES (1633, '66.249.64.128', 'home', '2022-03-28 19:54:33');
INSERT INTO `tb_visitlog_page` VALUES (1634, '125.164.3.101', 'open po', '2022-03-29 08:06:27');
INSERT INTO `tb_visitlog_page` VALUES (1635, '125.164.3.101', 'wacana', '2022-03-29 08:06:57');
INSERT INTO `tb_visitlog_page` VALUES (1636, '125.164.3.101', 'news', '2022-03-29 08:07:27');
INSERT INTO `tb_visitlog_page` VALUES (1637, '125.164.3.101', 'wacana', '2022-03-29 08:07:32');
INSERT INTO `tb_visitlog_page` VALUES (1638, '125.164.3.101', 'news', '2022-03-29 08:11:07');
INSERT INTO `tb_visitlog_page` VALUES (1639, '125.164.3.101', 'wacana', '2022-03-29 08:11:34');
INSERT INTO `tb_visitlog_page` VALUES (1640, '125.164.3.101', 'galeri', '2022-03-29 08:11:49');
INSERT INTO `tb_visitlog_page` VALUES (1641, '125.164.3.101', 'order', '2022-03-29 08:15:10');
INSERT INTO `tb_visitlog_page` VALUES (1642, '125.164.3.101', 'open po', '2022-03-29 08:15:26');
INSERT INTO `tb_visitlog_page` VALUES (1643, '36.78.137.133', 'home', '2022-03-29 09:52:57');
INSERT INTO `tb_visitlog_page` VALUES (1644, '36.78.137.133', 'open po', '2022-03-29 09:53:00');
INSERT INTO `tb_visitlog_page` VALUES (1645, '36.78.137.133', 'home', '2022-03-29 09:53:03');
INSERT INTO `tb_visitlog_page` VALUES (1646, '36.78.137.133', 'wacana', '2022-03-29 09:53:06');
INSERT INTO `tb_visitlog_page` VALUES (1647, '146.148.33.129', 'home', '2022-03-29 10:55:14');
INSERT INTO `tb_visitlog_page` VALUES (1648, '125.164.3.101', 'menu', '2022-03-29 11:49:21');
INSERT INTO `tb_visitlog_page` VALUES (1649, '125.164.3.101', 'home', '2022-03-29 11:51:26');
INSERT INTO `tb_visitlog_page` VALUES (1650, '125.164.3.101', 'menu', '2022-03-29 11:51:31');
INSERT INTO `tb_visitlog_page` VALUES (1651, '66.249.64.128', 'wacana', '2022-03-30 03:54:02');
INSERT INTO `tb_visitlog_page` VALUES (1652, '66.249.64.139', 'wacana', '2022-03-30 05:59:11');
INSERT INTO `tb_visitlog_page` VALUES (1653, '52.221.250.111', 'menu', '2022-03-30 07:19:56');
INSERT INTO `tb_visitlog_page` VALUES (1654, '66.249.64.128', 'home', '2022-03-30 08:23:25');
INSERT INTO `tb_visitlog_page` VALUES (1655, '2600:1702:3280:13c0:', 'home', '2022-03-30 09:35:10');
INSERT INTO `tb_visitlog_page` VALUES (1656, '66.249.64.146', 'home', '2022-03-30 09:52:42');
INSERT INTO `tb_visitlog_page` VALUES (1657, '66.249.64.152', 'home', '2022-03-30 10:16:29');
INSERT INTO `tb_visitlog_page` VALUES (1658, '66.249.64.152', 'wacana', '2022-03-30 16:08:38');
INSERT INTO `tb_visitlog_page` VALUES (1659, '180.253.170.85', 'home', '2022-03-31 08:17:10');
INSERT INTO `tb_visitlog_page` VALUES (1660, '66.249.65.12', 'open po', '2022-03-31 10:09:45');
INSERT INTO `tb_visitlog_page` VALUES (1661, '66.249.65.14', 'open po', '2022-03-31 10:40:55');
INSERT INTO `tb_visitlog_page` VALUES (1662, '66.249.65.16', 'wacana', '2022-03-31 13:34:27');
INSERT INTO `tb_visitlog_page` VALUES (1663, '66.249.65.16', 'home', '2022-03-31 13:38:43');
INSERT INTO `tb_visitlog_page` VALUES (1664, '2001:448a:5020:5270:', 'home', '2022-03-31 14:06:36');
INSERT INTO `tb_visitlog_page` VALUES (1665, '66.249.64.128', 'wacana', '2022-03-31 14:48:53');
INSERT INTO `tb_visitlog_page` VALUES (1666, '2001:448a:5020:5270:', 'news', '2022-03-31 17:13:29');
INSERT INTO `tb_visitlog_page` VALUES (1667, '45.121.219.6', 'news', '2022-03-31 17:13:39');
INSERT INTO `tb_visitlog_page` VALUES (1668, '2001:448a:5020:5270:', 'news', '2022-03-31 17:15:31');
INSERT INTO `tb_visitlog_page` VALUES (1669, '150.129.59.5', 'news', '2022-03-31 17:15:54');
INSERT INTO `tb_visitlog_page` VALUES (1670, '66.249.65.4', 'wacana', '2022-04-01 00:24:55');
INSERT INTO `tb_visitlog_page` VALUES (1671, '66.249.65.16', 'open po', '2022-04-01 03:04:24');
INSERT INTO `tb_visitlog_page` VALUES (1672, '66.249.64.139', 'open po', '2022-04-01 03:34:45');
INSERT INTO `tb_visitlog_page` VALUES (1673, '202.6.227.46', 'home', '2022-04-01 09:18:21');
INSERT INTO `tb_visitlog_page` VALUES (1674, '202.6.227.46', 'wacana', '2022-04-01 09:18:23');
INSERT INTO `tb_visitlog_page` VALUES (1675, '202.6.227.46', 'news', '2022-04-01 09:18:35');
INSERT INTO `tb_visitlog_page` VALUES (1676, '202.6.227.46', 'home', '2022-04-01 09:22:28');
INSERT INTO `tb_visitlog_page` VALUES (1677, '202.6.227.46', 'wacana', '2022-04-01 09:22:32');
INSERT INTO `tb_visitlog_page` VALUES (1678, '202.6.227.46', 'news', '2022-04-01 09:23:03');
INSERT INTO `tb_visitlog_page` VALUES (1679, '202.6.227.46', 'news', '2022-04-01 09:23:06');
INSERT INTO `tb_visitlog_page` VALUES (1680, '202.6.227.46', 'home', '2022-04-01 09:37:30');
INSERT INTO `tb_visitlog_page` VALUES (1681, '202.6.227.46', 'wacana', '2022-04-01 09:37:31');
INSERT INTO `tb_visitlog_page` VALUES (1682, '202.6.227.46', 'news', '2022-04-01 09:37:34');
INSERT INTO `tb_visitlog_page` VALUES (1683, '202.6.227.46', 'news', '2022-04-01 09:38:10');
INSERT INTO `tb_visitlog_page` VALUES (1684, '202.6.227.46', 'news', '2022-04-01 09:38:22');
INSERT INTO `tb_visitlog_page` VALUES (1685, '202.6.227.46', 'news', '2022-04-01 09:38:50');
INSERT INTO `tb_visitlog_page` VALUES (1686, '202.6.227.46', 'wacana', '2022-04-01 09:39:47');
INSERT INTO `tb_visitlog_page` VALUES (1687, '202.6.227.46', 'news', '2022-04-01 09:39:50');
INSERT INTO `tb_visitlog_page` VALUES (1688, '202.6.227.46', 'news', '2022-04-01 09:39:52');
INSERT INTO `tb_visitlog_page` VALUES (1689, '202.6.227.46', 'news', '2022-04-01 09:41:32');
INSERT INTO `tb_visitlog_page` VALUES (1690, '202.6.227.46', 'news', '2022-04-01 09:41:59');
INSERT INTO `tb_visitlog_page` VALUES (1691, '202.6.227.46', 'news', '2022-04-01 09:42:11');
INSERT INTO `tb_visitlog_page` VALUES (1692, '202.6.227.46', 'news', '2022-04-01 09:44:09');
INSERT INTO `tb_visitlog_page` VALUES (1693, '202.6.227.46', 'news', '2022-04-01 10:03:41');
INSERT INTO `tb_visitlog_page` VALUES (1694, '202.6.227.46', 'news', '2022-04-01 10:04:28');
INSERT INTO `tb_visitlog_page` VALUES (1695, '36.78.141.195', 'home', '2022-04-01 10:17:41');
INSERT INTO `tb_visitlog_page` VALUES (1696, '36.78.141.195', 'home', '2022-04-01 10:17:53');
INSERT INTO `tb_visitlog_page` VALUES (1697, '36.78.141.195', 'wacana', '2022-04-01 10:18:30');
INSERT INTO `tb_visitlog_page` VALUES (1698, '36.78.141.195', 'wacana', '2022-04-01 10:18:34');
INSERT INTO `tb_visitlog_page` VALUES (1699, '36.78.141.195', 'news', '2022-04-01 10:18:45');
INSERT INTO `tb_visitlog_page` VALUES (1700, '36.78.141.195', 'news', '2022-04-01 10:18:50');
INSERT INTO `tb_visitlog_page` VALUES (1701, '36.78.141.195', 'wacana', '2022-04-01 10:20:43');
INSERT INTO `tb_visitlog_page` VALUES (1702, '36.78.141.195', 'news', '2022-04-01 10:20:51');
INSERT INTO `tb_visitlog_page` VALUES (1703, '36.78.141.195', 'wacana', '2022-04-01 10:21:33');
INSERT INTO `tb_visitlog_page` VALUES (1704, '36.78.141.195', 'wacana', '2022-04-01 10:21:45');
INSERT INTO `tb_visitlog_page` VALUES (1705, '36.78.141.195', 'news', '2022-04-01 10:21:48');
INSERT INTO `tb_visitlog_page` VALUES (1706, '36.78.141.195', 'news', '2022-04-01 10:22:12');
INSERT INTO `tb_visitlog_page` VALUES (1707, '36.78.141.195', 'news', '2022-04-01 10:22:30');
INSERT INTO `tb_visitlog_page` VALUES (1708, '36.78.141.195', 'wacana', '2022-04-01 10:22:48');
INSERT INTO `tb_visitlog_page` VALUES (1709, '36.78.141.195', 'wacana', '2022-04-01 10:23:24');
INSERT INTO `tb_visitlog_page` VALUES (1710, '36.78.141.195', 'wacana', '2022-04-01 10:23:29');
INSERT INTO `tb_visitlog_page` VALUES (1711, '36.78.141.195', 'wacana', '2022-04-01 10:23:35');
INSERT INTO `tb_visitlog_page` VALUES (1712, '36.78.141.195', 'news', '2022-04-01 10:24:25');
INSERT INTO `tb_visitlog_page` VALUES (1713, '36.78.141.195', 'wacana', '2022-04-01 10:24:36');
INSERT INTO `tb_visitlog_page` VALUES (1714, '36.78.141.195', 'home', '2022-04-01 10:25:24');
INSERT INTO `tb_visitlog_page` VALUES (1715, '36.78.141.195', 'wacana', '2022-04-01 10:25:25');
INSERT INTO `tb_visitlog_page` VALUES (1716, '36.78.141.195', 'news', '2022-04-01 10:25:27');
INSERT INTO `tb_visitlog_page` VALUES (1717, '202.6.227.46', 'news', '2022-04-01 10:49:20');
INSERT INTO `tb_visitlog_page` VALUES (1718, '180.246.230.247', 'home', '2022-04-01 10:50:45');
INSERT INTO `tb_visitlog_page` VALUES (1719, '180.246.230.247', 'order', '2022-04-01 10:50:47');
INSERT INTO `tb_visitlog_page` VALUES (1720, '180.246.230.247', 'order', '2022-04-01 10:50:51');
INSERT INTO `tb_visitlog_page` VALUES (1721, '180.246.230.247', 'menu', '2022-04-01 10:50:53');
INSERT INTO `tb_visitlog_page` VALUES (1722, '180.246.230.247', 'tentang', '2022-04-01 10:50:56');
INSERT INTO `tb_visitlog_page` VALUES (1723, '180.246.230.247', 'keranjang', '2022-04-01 10:51:00');
INSERT INTO `tb_visitlog_page` VALUES (1724, '180.246.230.247', 'kontak', '2022-04-01 10:51:01');
INSERT INTO `tb_visitlog_page` VALUES (1725, '180.246.230.247', 'tentang', '2022-04-01 10:51:02');
INSERT INTO `tb_visitlog_page` VALUES (1726, '180.246.230.247', 'menu', '2022-04-01 10:51:06');
INSERT INTO `tb_visitlog_page` VALUES (1727, '202.6.227.46', 'home', '2022-04-01 11:05:33');
INSERT INTO `tb_visitlog_page` VALUES (1728, '202.6.227.46', 'wacana', '2022-04-01 11:17:07');
INSERT INTO `tb_visitlog_page` VALUES (1729, '202.6.227.46', 'news', '2022-04-01 11:17:11');
INSERT INTO `tb_visitlog_page` VALUES (1730, '202.6.227.46', 'wacana', '2022-04-01 11:21:19');
INSERT INTO `tb_visitlog_page` VALUES (1731, '202.6.227.46', 'news', '2022-04-01 11:21:21');
INSERT INTO `tb_visitlog_page` VALUES (1732, '202.6.227.46', 'wacana', '2022-04-01 11:21:28');
INSERT INTO `tb_visitlog_page` VALUES (1733, '202.6.227.46', 'news', '2022-04-01 11:21:32');
INSERT INTO `tb_visitlog_page` VALUES (1734, '66.249.64.139', 'home', '2022-04-01 13:05:45');
INSERT INTO `tb_visitlog_page` VALUES (1735, '202.6.227.46', 'tentang', '2022-04-01 13:12:37');
INSERT INTO `tb_visitlog_page` VALUES (1736, '202.6.227.46', 'home', '2022-04-01 13:23:59');
INSERT INTO `tb_visitlog_page` VALUES (1737, '202.6.227.46', 'wacana', '2022-04-01 13:24:02');
INSERT INTO `tb_visitlog_page` VALUES (1738, '202.6.227.46', 'news', '2022-04-01 13:24:05');
INSERT INTO `tb_visitlog_page` VALUES (1739, '202.6.227.46', 'home', '2022-04-01 13:31:47');
INSERT INTO `tb_visitlog_page` VALUES (1740, '202.6.227.46', 'wacana', '2022-04-01 13:31:50');
INSERT INTO `tb_visitlog_page` VALUES (1741, '202.6.227.46', 'news', '2022-04-01 13:31:52');
INSERT INTO `tb_visitlog_page` VALUES (1742, '202.6.227.46', 'wacana', '2022-04-01 13:31:55');
INSERT INTO `tb_visitlog_page` VALUES (1743, '202.6.227.46', 'news', '2022-04-01 13:31:56');
INSERT INTO `tb_visitlog_page` VALUES (1744, '202.6.227.46', 'wacana', '2022-04-01 13:32:00');
INSERT INTO `tb_visitlog_page` VALUES (1745, '202.6.227.46', 'wacana', '2022-04-01 13:39:06');
INSERT INTO `tb_visitlog_page` VALUES (1746, '202.6.227.46', 'news', '2022-04-01 13:39:08');
INSERT INTO `tb_visitlog_page` VALUES (1747, '202.6.227.46', 'wacana', '2022-04-01 13:39:11');
INSERT INTO `tb_visitlog_page` VALUES (1748, '202.6.227.46', 'news', '2022-04-01 13:39:13');
INSERT INTO `tb_visitlog_page` VALUES (1749, '202.6.227.46', 'news', '2022-04-01 13:39:28');
INSERT INTO `tb_visitlog_page` VALUES (1750, '202.6.227.46', 'wacana', '2022-04-01 13:39:57');
INSERT INTO `tb_visitlog_page` VALUES (1751, '202.6.227.46', 'news', '2022-04-01 13:39:59');
INSERT INTO `tb_visitlog_page` VALUES (1752, '202.6.227.46', 'news', '2022-04-01 14:56:33');
INSERT INTO `tb_visitlog_page` VALUES (1753, '202.6.227.46', 'news', '2022-04-01 15:14:21');
INSERT INTO `tb_visitlog_page` VALUES (1754, '202.6.227.46', 'news', '2022-04-01 15:16:57');
INSERT INTO `tb_visitlog_page` VALUES (1755, '202.6.227.46', 'open po', '2022-04-01 15:51:09');
INSERT INTO `tb_visitlog_page` VALUES (1756, '202.6.227.46', 'news', '2022-04-01 16:28:39');
INSERT INTO `tb_visitlog_page` VALUES (1757, '202.6.227.46', 'home', '2022-04-01 16:55:06');
INSERT INTO `tb_visitlog_page` VALUES (1758, '202.6.227.46', 'wacana', '2022-04-01 16:55:07');
INSERT INTO `tb_visitlog_page` VALUES (1759, '202.6.227.46', 'news', '2022-04-01 16:55:09');
INSERT INTO `tb_visitlog_page` VALUES (1760, '110.50.81.202', 'news', '2022-04-01 17:02:54');
INSERT INTO `tb_visitlog_page` VALUES (1761, '202.6.227.46', 'news', '2022-04-01 17:09:03');
INSERT INTO `tb_visitlog_page` VALUES (1762, '202.6.227.46', 'news', '2022-04-01 17:09:27');
INSERT INTO `tb_visitlog_page` VALUES (1763, '202.6.227.46', 'news', '2022-04-01 17:09:34');
INSERT INTO `tb_visitlog_page` VALUES (1764, '202.6.227.46', 'news', '2022-04-01 17:09:56');
INSERT INTO `tb_visitlog_page` VALUES (1765, '202.6.227.46', 'news', '2022-04-01 17:10:50');
INSERT INTO `tb_visitlog_page` VALUES (1766, '202.6.227.46', 'news', '2022-04-01 17:11:26');
INSERT INTO `tb_visitlog_page` VALUES (1767, '202.6.227.46', 'news', '2022-04-01 17:12:33');
INSERT INTO `tb_visitlog_page` VALUES (1768, '103.26.211.4', 'news', '2022-04-01 17:13:06');
INSERT INTO `tb_visitlog_page` VALUES (1769, '202.6.227.46', 'news', '2022-04-01 17:16:14');
INSERT INTO `tb_visitlog_page` VALUES (1770, '112.215.173.177', 'news', '2022-04-01 18:52:50');
INSERT INTO `tb_visitlog_page` VALUES (1771, '66.249.64.139', 'news', '2022-04-02 00:34:52');
INSERT INTO `tb_visitlog_page` VALUES (1772, '66.249.65.4', 'news', '2022-04-02 14:33:35');
INSERT INTO `tb_visitlog_page` VALUES (1773, '35.160.49.205', 'home', '2022-04-02 16:09:13');
INSERT INTO `tb_visitlog_page` VALUES (1774, '66.249.65.16', 'news', '2022-04-03 02:47:30');
INSERT INTO `tb_visitlog_page` VALUES (1775, '66.249.65.12', 'home', '2022-04-03 02:49:52');
INSERT INTO `tb_visitlog_page` VALUES (1776, '66.249.65.14', 'home', '2022-04-03 02:53:18');
INSERT INTO `tb_visitlog_page` VALUES (1777, '66.249.73.104', 'home', '2022-04-03 02:54:15');
INSERT INTO `tb_visitlog_page` VALUES (1778, '17.121.114.99', 'news', '2022-04-03 03:48:27');
INSERT INTO `tb_visitlog_page` VALUES (1779, '66.249.64.146', 'home', '2022-04-03 04:27:39');
INSERT INTO `tb_visitlog_page` VALUES (1780, '66.249.73.104', 'news', '2022-04-03 04:47:03');
INSERT INTO `tb_visitlog_page` VALUES (1781, '66.249.64.146', 'news', '2022-04-03 15:06:29');
INSERT INTO `tb_visitlog_page` VALUES (1782, '66.249.65.4', 'home', '2022-04-03 15:43:52');
INSERT INTO `tb_visitlog_page` VALUES (1783, '66.249.64.135', 'home', '2022-04-04 00:07:39');
INSERT INTO `tb_visitlog_page` VALUES (1784, '66.249.75.233', 'home', '2022-04-04 00:08:15');
INSERT INTO `tb_visitlog_page` VALUES (1785, '66.249.75.233', 'home', '2022-04-04 00:08:24');
INSERT INTO `tb_visitlog_page` VALUES (1786, '66.249.64.158', 'home', '2022-04-04 05:54:08');
INSERT INTO `tb_visitlog_page` VALUES (1787, '36.78.141.195', 'home', '2022-04-04 08:10:43');
INSERT INTO `tb_visitlog_page` VALUES (1788, '202.6.227.46', 'home', '2022-04-04 08:49:30');
INSERT INTO `tb_visitlog_page` VALUES (1789, '202.6.227.46', 'open po', '2022-04-04 08:49:48');
INSERT INTO `tb_visitlog_page` VALUES (1790, '202.6.227.46', 'open po', '2022-04-04 08:55:05');
INSERT INTO `tb_visitlog_page` VALUES (1791, '36.78.141.195', 'open po', '2022-04-04 09:04:47');
INSERT INTO `tb_visitlog_page` VALUES (1792, '36.78.141.195', 'open po', '2022-04-04 09:04:49');
INSERT INTO `tb_visitlog_page` VALUES (1793, '40.77.139.39', 'home', '2022-04-04 09:48:52');
INSERT INTO `tb_visitlog_page` VALUES (1794, '202.6.227.46', 'open po', '2022-04-04 11:01:59');
INSERT INTO `tb_visitlog_page` VALUES (1795, '205.169.39.54', 'home', '2022-04-04 11:30:31');
INSERT INTO `tb_visitlog_page` VALUES (1796, '205.169.39.52', 'home', '2022-04-04 11:39:43');
INSERT INTO `tb_visitlog_page` VALUES (1797, '202.6.227.46', 'home', '2022-04-05 08:29:25');
INSERT INTO `tb_visitlog_page` VALUES (1798, '202.6.227.46', 'wacana', '2022-04-05 08:34:41');
INSERT INTO `tb_visitlog_page` VALUES (1799, '202.6.227.46', 'news', '2022-04-05 08:35:11');
INSERT INTO `tb_visitlog_page` VALUES (1800, '202.6.227.46', 'open po', '2022-04-05 08:35:35');
INSERT INTO `tb_visitlog_page` VALUES (1801, '202.6.227.46', 'news', '2022-04-05 08:35:45');
INSERT INTO `tb_visitlog_page` VALUES (1802, '202.6.227.46', 'wacana', '2022-04-05 08:37:17');
INSERT INTO `tb_visitlog_page` VALUES (1803, '202.6.227.46', 'menu', '2022-04-05 08:39:28');
INSERT INTO `tb_visitlog_page` VALUES (1804, '202.6.227.46', 'wacana', '2022-04-05 08:41:40');
INSERT INTO `tb_visitlog_page` VALUES (1805, '202.6.227.46', 'news', '2022-04-05 08:41:57');
INSERT INTO `tb_visitlog_page` VALUES (1806, '202.6.227.46', 'menu', '2022-04-05 09:08:40');
INSERT INTO `tb_visitlog_page` VALUES (1807, '34.91.59.8', 'home', '2022-04-05 10:06:41');
INSERT INTO `tb_visitlog_page` VALUES (1808, '202.6.227.46', 'menu', '2022-04-05 11:47:58');
INSERT INTO `tb_visitlog_page` VALUES (1809, '202.6.227.46', 'news', '2022-04-05 11:48:35');
INSERT INTO `tb_visitlog_page` VALUES (1810, '202.6.227.46', 'menu', '2022-04-05 11:48:37');
INSERT INTO `tb_visitlog_page` VALUES (1811, '202.6.227.46', 'home', '2022-04-05 13:19:43');
INSERT INTO `tb_visitlog_page` VALUES (1812, '202.6.227.46', 'wacana', '2022-04-05 13:19:44');
INSERT INTO `tb_visitlog_page` VALUES (1813, '202.6.227.46', 'wacana', '2022-04-05 16:23:08');
INSERT INTO `tb_visitlog_page` VALUES (1814, '202.6.227.46', 'news', '2022-04-05 16:23:12');
INSERT INTO `tb_visitlog_page` VALUES (1815, '202.6.227.46', 'open po', '2022-04-05 16:37:33');
INSERT INTO `tb_visitlog_page` VALUES (1816, '202.6.227.46', 'keranjang', '2022-04-05 16:37:48');
INSERT INTO `tb_visitlog_page` VALUES (1817, '202.6.227.46', 'open po', '2022-04-05 16:37:58');
INSERT INTO `tb_visitlog_page` VALUES (1818, '202.6.227.46', 'galeri', '2022-04-05 17:01:26');
INSERT INTO `tb_visitlog_page` VALUES (1819, '202.6.227.46', 'menu', '2022-04-05 17:01:33');
INSERT INTO `tb_visitlog_page` VALUES (1820, '66.249.64.152', 'open po', '2022-04-05 21:54:51');
INSERT INTO `tb_visitlog_page` VALUES (1821, '66.249.66.40', 'open po', '2022-04-06 06:35:27');
INSERT INTO `tb_visitlog_page` VALUES (1822, '36.78.141.195', 'menu', '2022-04-06 08:09:37');
INSERT INTO `tb_visitlog_page` VALUES (1823, '66.249.64.158', 'open po', '2022-04-06 15:34:46');
INSERT INTO `tb_visitlog_page` VALUES (1824, '66.249.64.158', 'open po', '2022-04-06 15:53:05');
INSERT INTO `tb_visitlog_page` VALUES (1825, '66.249.64.158', 'home', '2022-04-06 16:30:29');
INSERT INTO `tb_visitlog_page` VALUES (1826, '66.249.64.158', 'news', '2022-04-06 19:28:16');
INSERT INTO `tb_visitlog_page` VALUES (1827, '66.249.64.128', 'home', '2022-04-06 19:36:22');
INSERT INTO `tb_visitlog_page` VALUES (1828, '66.249.64.146', 'home', '2022-04-06 19:36:33');
INSERT INTO `tb_visitlog_page` VALUES (1829, '180.253.165.84', 'home', '2022-04-06 20:01:52');
INSERT INTO `tb_visitlog_page` VALUES (1830, '66.249.64.152', 'home', '2022-04-06 20:11:42');
INSERT INTO `tb_visitlog_page` VALUES (1831, '66.249.64.158', 'news', '2022-04-06 20:34:10');
INSERT INTO `tb_visitlog_page` VALUES (1832, '66.249.64.152', 'news', '2022-04-07 06:40:39');
INSERT INTO `tb_visitlog_page` VALUES (1833, '66.249.64.146', 'news', '2022-04-07 07:09:10');
INSERT INTO `tb_visitlog_page` VALUES (1834, '202.6.227.46', 'home', '2022-04-07 11:11:17');
INSERT INTO `tb_visitlog_page` VALUES (1835, '202.6.227.46', 'wacana', '2022-04-07 11:11:19');
INSERT INTO `tb_visitlog_page` VALUES (1836, '202.6.227.46', 'news', '2022-04-07 11:11:23');
INSERT INTO `tb_visitlog_page` VALUES (1837, '202.6.227.46', 'news', '2022-04-07 11:11:53');
INSERT INTO `tb_visitlog_page` VALUES (1838, '180.253.165.84', 'home', '2022-04-07 11:12:08');
INSERT INTO `tb_visitlog_page` VALUES (1839, '180.253.165.84', 'wacana', '2022-04-07 11:12:08');
INSERT INTO `tb_visitlog_page` VALUES (1840, '180.253.165.84', 'news', '2022-04-07 11:12:13');
INSERT INTO `tb_visitlog_page` VALUES (1841, '180.253.165.84', 'wacana', '2022-04-07 11:12:21');
INSERT INTO `tb_visitlog_page` VALUES (1842, '180.253.165.84', 'news', '2022-04-07 11:12:24');
INSERT INTO `tb_visitlog_page` VALUES (1843, '180.253.165.84', 'wacana', '2022-04-07 11:12:24');
INSERT INTO `tb_visitlog_page` VALUES (1844, '180.253.165.84', 'news', '2022-04-07 11:12:27');
INSERT INTO `tb_visitlog_page` VALUES (1845, '180.253.165.84', 'wacana', '2022-04-07 11:12:35');
INSERT INTO `tb_visitlog_page` VALUES (1846, '180.253.165.84', 'news', '2022-04-07 11:12:43');
INSERT INTO `tb_visitlog_page` VALUES (1847, '180.253.165.84', 'wacana', '2022-04-07 11:12:44');
INSERT INTO `tb_visitlog_page` VALUES (1848, '180.253.165.84', 'news', '2022-04-07 11:12:47');
INSERT INTO `tb_visitlog_page` VALUES (1849, '180.253.165.84', 'wacana', '2022-04-07 11:12:48');
INSERT INTO `tb_visitlog_page` VALUES (1850, '180.253.165.84', 'news', '2022-04-07 11:12:51');
INSERT INTO `tb_visitlog_page` VALUES (1851, '180.253.165.84', 'wacana', '2022-04-07 11:12:52');
INSERT INTO `tb_visitlog_page` VALUES (1852, '202.6.227.46', 'home', '2022-04-07 11:12:54');
INSERT INTO `tb_visitlog_page` VALUES (1853, '180.253.165.84', 'news', '2022-04-07 11:12:55');
INSERT INTO `tb_visitlog_page` VALUES (1854, '180.253.165.84', 'wacana', '2022-04-07 11:12:56');
INSERT INTO `tb_visitlog_page` VALUES (1855, '202.6.227.46', 'wacana', '2022-04-07 11:12:57');
INSERT INTO `tb_visitlog_page` VALUES (1856, '180.253.165.84', 'news', '2022-04-07 11:12:59');
INSERT INTO `tb_visitlog_page` VALUES (1857, '180.253.165.84', 'wacana', '2022-04-07 11:12:59');
INSERT INTO `tb_visitlog_page` VALUES (1858, '180.253.165.84', 'news', '2022-04-07 11:13:04');
INSERT INTO `tb_visitlog_page` VALUES (1859, '202.6.227.46', 'news', '2022-04-07 11:13:10');
INSERT INTO `tb_visitlog_page` VALUES (1860, '202.6.227.46', 'news', '2022-04-07 11:13:23');
INSERT INTO `tb_visitlog_page` VALUES (1861, '202.6.227.46', 'news', '2022-04-07 11:20:31');
INSERT INTO `tb_visitlog_page` VALUES (1862, '202.6.227.46', 'wacana', '2022-04-07 11:20:46');
INSERT INTO `tb_visitlog_page` VALUES (1863, '202.6.227.46', 'news', '2022-04-07 11:20:49');
INSERT INTO `tb_visitlog_page` VALUES (1864, '202.6.227.46', 'news', '2022-04-07 11:20:55');
INSERT INTO `tb_visitlog_page` VALUES (1865, '202.6.227.46', 'wacana', '2022-04-07 11:21:06');
INSERT INTO `tb_visitlog_page` VALUES (1866, '202.6.227.46', 'news', '2022-04-07 11:21:09');
INSERT INTO `tb_visitlog_page` VALUES (1867, '202.6.227.46', 'news', '2022-04-07 11:21:38');
INSERT INTO `tb_visitlog_page` VALUES (1868, '202.6.227.46', 'news', '2022-04-07 11:21:44');
INSERT INTO `tb_visitlog_page` VALUES (1869, '202.6.227.46', 'news', '2022-04-07 11:22:10');
INSERT INTO `tb_visitlog_page` VALUES (1870, '202.6.227.46', 'news', '2022-04-07 11:25:58');
INSERT INTO `tb_visitlog_page` VALUES (1871, '202.6.227.46', 'news', '2022-04-07 11:26:30');
INSERT INTO `tb_visitlog_page` VALUES (1872, '202.6.227.46', 'wacana', '2022-04-07 11:27:30');
INSERT INTO `tb_visitlog_page` VALUES (1873, '202.6.227.46', 'news', '2022-04-07 11:27:38');
INSERT INTO `tb_visitlog_page` VALUES (1874, '202.6.227.46', 'wacana', '2022-04-07 11:27:46');
INSERT INTO `tb_visitlog_page` VALUES (1875, '202.6.227.46', 'news', '2022-04-07 11:27:49');
INSERT INTO `tb_visitlog_page` VALUES (1876, '202.6.227.46', 'wacana', '2022-04-07 11:27:58');
INSERT INTO `tb_visitlog_page` VALUES (1877, '202.6.227.46', 'news', '2022-04-07 11:28:04');
INSERT INTO `tb_visitlog_page` VALUES (1878, '202.6.227.46', 'wacana', '2022-04-07 11:28:06');
INSERT INTO `tb_visitlog_page` VALUES (1879, '202.6.227.46', 'home', '2022-04-07 11:32:24');
INSERT INTO `tb_visitlog_page` VALUES (1880, '202.6.227.46', 'wacana', '2022-04-07 11:32:28');
INSERT INTO `tb_visitlog_page` VALUES (1881, '202.6.227.46', 'wacana', '2022-04-07 11:32:32');
INSERT INTO `tb_visitlog_page` VALUES (1882, '202.6.227.46', 'news', '2022-04-07 11:32:40');
INSERT INTO `tb_visitlog_page` VALUES (1883, '202.6.227.46', 'wacana', '2022-04-07 11:32:41');
INSERT INTO `tb_visitlog_page` VALUES (1884, '202.6.227.46', 'news', '2022-04-07 11:32:43');
INSERT INTO `tb_visitlog_page` VALUES (1885, '202.6.227.46', 'wacana', '2022-04-07 11:32:44');
INSERT INTO `tb_visitlog_page` VALUES (1886, '202.6.227.46', 'wacana', '2022-04-07 11:32:45');
INSERT INTO `tb_visitlog_page` VALUES (1887, '202.6.227.46', 'news', '2022-04-07 11:32:48');
INSERT INTO `tb_visitlog_page` VALUES (1888, '202.6.227.46', 'news', '2022-04-07 11:32:51');
INSERT INTO `tb_visitlog_page` VALUES (1889, '202.6.227.46', 'wacana', '2022-04-07 11:32:53');
INSERT INTO `tb_visitlog_page` VALUES (1890, '202.6.227.46', 'news', '2022-04-07 11:32:55');
INSERT INTO `tb_visitlog_page` VALUES (1891, '202.6.227.46', 'news', '2022-04-07 11:33:32');
INSERT INTO `tb_visitlog_page` VALUES (1892, '202.6.227.46', 'wacana', '2022-04-07 11:33:35');
INSERT INTO `tb_visitlog_page` VALUES (1893, '202.6.227.46', 'news', '2022-04-07 11:33:37');
INSERT INTO `tb_visitlog_page` VALUES (1894, '202.6.227.46', 'news', '2022-04-07 11:45:39');
INSERT INTO `tb_visitlog_page` VALUES (1895, '202.6.227.46', 'news', '2022-04-07 11:47:26');
INSERT INTO `tb_visitlog_page` VALUES (1896, '180.253.165.84', 'news', '2022-04-07 13:31:44');
INSERT INTO `tb_visitlog_page` VALUES (1897, '180.253.165.84', 'news', '2022-04-07 13:43:42');
INSERT INTO `tb_visitlog_page` VALUES (1898, '202.6.227.46', 'wacana', '2022-04-07 14:58:26');
INSERT INTO `tb_visitlog_page` VALUES (1899, '202.6.227.46', 'news', '2022-04-07 14:58:31');
INSERT INTO `tb_visitlog_page` VALUES (1900, '202.6.227.46', 'home', '2022-04-07 14:58:40');
INSERT INTO `tb_visitlog_page` VALUES (1901, '202.6.227.46', 'wacana', '2022-04-07 14:58:41');
INSERT INTO `tb_visitlog_page` VALUES (1902, '202.6.227.46', 'news', '2022-04-07 14:58:54');
INSERT INTO `tb_visitlog_page` VALUES (1903, '180.253.160.141', 'home', '2022-04-07 15:32:22');
INSERT INTO `tb_visitlog_page` VALUES (1904, '180.253.160.141', 'order', '2022-04-07 15:32:24');
INSERT INTO `tb_visitlog_page` VALUES (1905, '180.253.165.84', 'menu', '2022-04-07 15:32:36');
INSERT INTO `tb_visitlog_page` VALUES (1906, '180.253.160.141', 'order', '2022-04-07 15:32:43');
INSERT INTO `tb_visitlog_page` VALUES (1907, '180.253.160.141', 'open po', '2022-04-07 15:32:51');
INSERT INTO `tb_visitlog_page` VALUES (1908, '182.1.82.101', 'news', '2022-04-07 16:34:03');
INSERT INTO `tb_visitlog_page` VALUES (1909, '182.1.82.101', 'news', '2022-04-07 16:34:12');
INSERT INTO `tb_visitlog_page` VALUES (1910, '202.6.227.46', 'news', '2022-04-07 16:34:30');
INSERT INTO `tb_visitlog_page` VALUES (1911, '202.6.227.46', 'wacana', '2022-04-07 16:34:42');
INSERT INTO `tb_visitlog_page` VALUES (1912, '202.6.227.46', 'news', '2022-04-07 16:34:45');
INSERT INTO `tb_visitlog_page` VALUES (1913, '202.6.227.46', 'wacana', '2022-04-07 16:34:53');
INSERT INTO `tb_visitlog_page` VALUES (1914, '202.6.227.46', 'news', '2022-04-07 16:34:56');
INSERT INTO `tb_visitlog_page` VALUES (1915, '202.6.227.46', 'wacana', '2022-04-07 16:35:06');
INSERT INTO `tb_visitlog_page` VALUES (1916, '202.6.227.46', 'news', '2022-04-07 16:35:08');
INSERT INTO `tb_visitlog_page` VALUES (1917, '202.6.227.46', 'wacana', '2022-04-07 16:35:12');
INSERT INTO `tb_visitlog_page` VALUES (1918, '202.6.227.46', 'news', '2022-04-07 16:35:14');
INSERT INTO `tb_visitlog_page` VALUES (1919, '182.1.82.101', 'news', '2022-04-07 16:35:24');
INSERT INTO `tb_visitlog_page` VALUES (1920, '202.6.227.46', 'news', '2022-04-07 16:38:45');
INSERT INTO `tb_visitlog_page` VALUES (1921, '202.6.227.46', 'news', '2022-04-07 16:40:08');
INSERT INTO `tb_visitlog_page` VALUES (1922, '202.6.227.46', 'news', '2022-04-07 16:40:13');
INSERT INTO `tb_visitlog_page` VALUES (1923, '202.6.227.46', 'wacana', '2022-04-07 16:40:17');
INSERT INTO `tb_visitlog_page` VALUES (1924, '202.6.227.46', 'news', '2022-04-07 16:40:20');
INSERT INTO `tb_visitlog_page` VALUES (1925, '202.6.227.46', 'news', '2022-04-07 16:40:30');
INSERT INTO `tb_visitlog_page` VALUES (1926, '202.6.227.46', 'news', '2022-04-07 16:43:21');
INSERT INTO `tb_visitlog_page` VALUES (1927, '202.6.227.46', 'news', '2022-04-07 16:43:29');
INSERT INTO `tb_visitlog_page` VALUES (1928, '202.6.227.46', 'news', '2022-04-07 16:43:59');
INSERT INTO `tb_visitlog_page` VALUES (1929, '202.6.227.46', 'news', '2022-04-07 16:44:14');
INSERT INTO `tb_visitlog_page` VALUES (1930, '202.6.227.46', 'news', '2022-04-07 16:45:08');
INSERT INTO `tb_visitlog_page` VALUES (1931, '202.6.227.46', 'news', '2022-04-07 16:46:06');
INSERT INTO `tb_visitlog_page` VALUES (1932, '202.6.227.46', 'news', '2022-04-07 16:47:17');
INSERT INTO `tb_visitlog_page` VALUES (1933, '202.6.227.46', 'home', '2022-04-07 16:47:42');
INSERT INTO `tb_visitlog_page` VALUES (1934, '202.6.227.46', 'wacana', '2022-04-07 16:47:43');
INSERT INTO `tb_visitlog_page` VALUES (1935, '202.6.227.46', 'news', '2022-04-07 16:47:46');
INSERT INTO `tb_visitlog_page` VALUES (1936, '202.6.227.46', 'news', '2022-04-07 16:54:20');
INSERT INTO `tb_visitlog_page` VALUES (1937, '202.6.227.46', 'news', '2022-04-07 16:54:36');
INSERT INTO `tb_visitlog_page` VALUES (1938, '202.6.227.46', 'news', '2022-04-07 16:59:09');
INSERT INTO `tb_visitlog_page` VALUES (1939, '202.6.227.46', 'news', '2022-04-07 16:59:16');
INSERT INTO `tb_visitlog_page` VALUES (1940, '202.6.227.46', 'news', '2022-04-07 16:59:18');
INSERT INTO `tb_visitlog_page` VALUES (1941, '202.6.227.46', 'wacana', '2022-04-07 16:59:21');
INSERT INTO `tb_visitlog_page` VALUES (1942, '202.6.227.46', 'wacana', '2022-04-07 16:59:23');
INSERT INTO `tb_visitlog_page` VALUES (1943, '202.6.227.46', 'news', '2022-04-07 16:59:25');
INSERT INTO `tb_visitlog_page` VALUES (1944, '202.6.227.46', 'news', '2022-04-07 16:59:27');
INSERT INTO `tb_visitlog_page` VALUES (1945, '202.6.227.46', 'news', '2022-04-07 16:59:34');
INSERT INTO `tb_visitlog_page` VALUES (1946, '202.6.227.46', 'news', '2022-04-07 16:59:38');
INSERT INTO `tb_visitlog_page` VALUES (1947, '202.6.227.46', 'news', '2022-04-07 17:00:36');
INSERT INTO `tb_visitlog_page` VALUES (1948, '202.6.227.46', 'wacana', '2022-04-07 17:00:40');
INSERT INTO `tb_visitlog_page` VALUES (1949, '202.6.227.46', 'news', '2022-04-07 17:00:45');
INSERT INTO `tb_visitlog_page` VALUES (1950, '202.6.227.46', 'wacana', '2022-04-07 17:00:47');
INSERT INTO `tb_visitlog_page` VALUES (1951, '202.6.227.46', 'news', '2022-04-07 17:00:51');
INSERT INTO `tb_visitlog_page` VALUES (1952, '202.6.227.46', 'news', '2022-04-07 17:01:51');
INSERT INTO `tb_visitlog_page` VALUES (1953, '202.6.227.46', 'news', '2022-04-07 17:02:51');
INSERT INTO `tb_visitlog_page` VALUES (1954, '202.6.227.46', 'wacana', '2022-04-07 17:03:00');
INSERT INTO `tb_visitlog_page` VALUES (1955, '202.6.227.46', 'news', '2022-04-07 17:03:02');
INSERT INTO `tb_visitlog_page` VALUES (1956, '202.6.227.46', 'news', '2022-04-07 17:03:07');
INSERT INTO `tb_visitlog_page` VALUES (1957, '202.6.227.46', 'news', '2022-04-07 17:03:42');
INSERT INTO `tb_visitlog_page` VALUES (1958, '202.6.227.46', 'news', '2022-04-07 17:03:43');
INSERT INTO `tb_visitlog_page` VALUES (1959, '202.6.227.46', 'wacana', '2022-04-07 17:03:48');
INSERT INTO `tb_visitlog_page` VALUES (1960, '202.6.227.46', 'news', '2022-04-07 17:03:50');
INSERT INTO `tb_visitlog_page` VALUES (1961, '202.6.227.46', 'wacana', '2022-04-07 17:10:50');
INSERT INTO `tb_visitlog_page` VALUES (1962, '202.6.227.46', 'news', '2022-04-07 17:10:57');
INSERT INTO `tb_visitlog_page` VALUES (1963, '118.99.76.151', 'news', '2022-04-07 21:06:31');
INSERT INTO `tb_visitlog_page` VALUES (1964, '118.99.76.181', 'news', '2022-04-07 22:05:04');
INSERT INTO `tb_visitlog_page` VALUES (1965, '66.249.64.56', 'home', '2022-04-08 03:03:46');
INSERT INTO `tb_visitlog_page` VALUES (1966, '66.249.64.152', 'home', '2022-04-08 04:36:03');
INSERT INTO `tb_visitlog_page` VALUES (1967, '180.253.165.84', 'home', '2022-04-08 08:43:20');
INSERT INTO `tb_visitlog_page` VALUES (1968, '180.253.165.84', 'home', '2022-04-08 09:12:27');
INSERT INTO `tb_visitlog_page` VALUES (1969, '180.253.165.84', 'menu', '2022-04-08 09:12:33');
INSERT INTO `tb_visitlog_page` VALUES (1970, '180.253.165.84', 'menu', '2022-04-08 09:13:06');
INSERT INTO `tb_visitlog_page` VALUES (1971, '180.253.165.84', 'order', '2022-04-08 09:13:09');
INSERT INTO `tb_visitlog_page` VALUES (1972, '125.164.4.70', 'open po', '2022-04-08 09:13:15');
INSERT INTO `tb_visitlog_page` VALUES (1973, '66.249.64.152', 'news', '2022-04-08 10:48:14');
INSERT INTO `tb_visitlog_page` VALUES (1974, '180.253.165.84', 'news', '2022-04-08 15:10:20');
INSERT INTO `tb_visitlog_page` VALUES (1975, '202.6.227.46', 'news', '2022-04-08 16:44:15');
INSERT INTO `tb_visitlog_page` VALUES (1976, '202.6.227.46', 'home', '2022-04-08 17:02:39');
INSERT INTO `tb_visitlog_page` VALUES (1977, '180.253.165.84', 'home', '2022-04-08 17:02:52');
INSERT INTO `tb_visitlog_page` VALUES (1978, '180.253.165.84', 'wacana', '2022-04-08 17:02:53');
INSERT INTO `tb_visitlog_page` VALUES (1979, '180.253.165.84', 'news', '2022-04-08 17:02:55');
INSERT INTO `tb_visitlog_page` VALUES (1980, '150.129.59.5', 'news', '2022-04-08 17:04:08');
INSERT INTO `tb_visitlog_page` VALUES (1981, '110.50.81.202', 'news', '2022-04-08 17:04:44');
INSERT INTO `tb_visitlog_page` VALUES (1982, '114.4.4.137', 'news', '2022-04-08 17:04:50');
INSERT INTO `tb_visitlog_page` VALUES (1983, '180.253.165.84', 'home', '2022-04-08 17:07:49');
INSERT INTO `tb_visitlog_page` VALUES (1984, '180.253.165.84', 'news', '2022-04-08 17:08:00');
INSERT INTO `tb_visitlog_page` VALUES (1985, '66.96.225.95', 'home', '2022-04-08 17:09:05');
INSERT INTO `tb_visitlog_page` VALUES (1986, '180.253.165.126', 'news', '2022-04-08 19:51:09');
INSERT INTO `tb_visitlog_page` VALUES (1987, '180.253.165.126', 'open po', '2022-04-08 19:51:25');
INSERT INTO `tb_visitlog_page` VALUES (1988, '180.253.165.126', 'news', '2022-04-08 19:51:38');
INSERT INTO `tb_visitlog_page` VALUES (1989, '66.249.64.152', 'open po', '2022-04-08 20:50:03');
INSERT INTO `tb_visitlog_page` VALUES (1990, '2001:448a:1063:1f2d:', 'login', '2022-04-09 15:22:09');
INSERT INTO `tb_visitlog_page` VALUES (1991, '2001:448a:1063:1f2d:', 'menu', '2022-04-09 15:22:16');
INSERT INTO `tb_visitlog_page` VALUES (1992, '2001:448a:1063:1f2d:', 'wacana', '2022-04-09 15:22:26');
INSERT INTO `tb_visitlog_page` VALUES (1993, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:22:30');
INSERT INTO `tb_visitlog_page` VALUES (1994, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:23:51');
INSERT INTO `tb_visitlog_page` VALUES (1995, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:24:50');
INSERT INTO `tb_visitlog_page` VALUES (1996, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:24:56');
INSERT INTO `tb_visitlog_page` VALUES (1997, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:24:59');
INSERT INTO `tb_visitlog_page` VALUES (1998, '2001:448a:1063:1f2d:', 'open po', '2022-04-09 15:25:02');
INSERT INTO `tb_visitlog_page` VALUES (1999, '2001:448a:1063:1f2d:', 'order', '2022-04-09 15:25:12');
INSERT INTO `tb_visitlog_page` VALUES (2000, '2001:448a:1063:1f2d:', 'order', '2022-04-09 15:25:30');
INSERT INTO `tb_visitlog_page` VALUES (2001, '2001:448a:1063:1f2d:', 'kontak', '2022-04-09 15:25:32');
INSERT INTO `tb_visitlog_page` VALUES (2002, '2001:448a:1063:1f2d:', 'login', '2022-04-09 15:25:40');
INSERT INTO `tb_visitlog_page` VALUES (2003, '2001:448a:1063:1f2d:', 'register', '2022-04-09 15:25:43');
INSERT INTO `tb_visitlog_page` VALUES (2004, '2001:448a:1063:1f2d:', 'login', '2022-04-09 15:26:04');
INSERT INTO `tb_visitlog_page` VALUES (2005, '2001:448a:1063:1f2d:', 'home', '2022-04-09 15:26:09');
INSERT INTO `tb_visitlog_page` VALUES (2006, '2001:448a:1063:1f2d:', 'user', '2022-04-09 15:26:11');
INSERT INTO `tb_visitlog_page` VALUES (2007, '2001:448a:1063:1f2d:', 'wacana', '2022-04-09 15:26:20');
INSERT INTO `tb_visitlog_page` VALUES (2008, '2001:448a:1063:1f2d:', 'galeri', '2022-04-09 15:26:23');
INSERT INTO `tb_visitlog_page` VALUES (2009, '2001:448a:1063:1f2d:', 'menu', '2022-04-09 15:26:28');
INSERT INTO `tb_visitlog_page` VALUES (2010, '2001:448a:1063:1f2d:', 'menu', '2022-04-09 15:26:38');
INSERT INTO `tb_visitlog_page` VALUES (2011, '2001:448a:1063:1f2d:', 'order', '2022-04-09 15:26:40');
INSERT INTO `tb_visitlog_page` VALUES (2012, '2001:448a:1063:1f2d:', 'open po', '2022-04-09 15:26:44');
INSERT INTO `tb_visitlog_page` VALUES (2013, '2001:448a:1063:1f2d:', 'user', '2022-04-09 15:27:48');
INSERT INTO `tb_visitlog_page` VALUES (2014, '2001:448a:1063:1f2d:', 'keranjang', '2022-04-09 15:27:51');
INSERT INTO `tb_visitlog_page` VALUES (2015, '2001:448a:1063:1f2d:', 'open po', '2022-04-09 15:27:56');
INSERT INTO `tb_visitlog_page` VALUES (2016, '2001:448a:1063:1f2d:', 'user', '2022-04-09 15:48:14');
INSERT INTO `tb_visitlog_page` VALUES (2017, '2001:448a:1063:1f2d:', 'keranjang', '2022-04-09 15:48:54');
INSERT INTO `tb_visitlog_page` VALUES (2018, '2001:448a:1063:1f2d:', 'wacana', '2022-04-09 15:49:02');
INSERT INTO `tb_visitlog_page` VALUES (2019, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:08');
INSERT INTO `tb_visitlog_page` VALUES (2020, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:12');
INSERT INTO `tb_visitlog_page` VALUES (2021, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:16');
INSERT INTO `tb_visitlog_page` VALUES (2022, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:18');
INSERT INTO `tb_visitlog_page` VALUES (2023, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:25');
INSERT INTO `tb_visitlog_page` VALUES (2024, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:35');
INSERT INTO `tb_visitlog_page` VALUES (2025, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:40');
INSERT INTO `tb_visitlog_page` VALUES (2026, '2001:448a:1063:1f2d:', 'news', '2022-04-09 15:49:44');
INSERT INTO `tb_visitlog_page` VALUES (2027, '66.249.64.128', 'news', '2022-04-09 19:23:57');
INSERT INTO `tb_visitlog_page` VALUES (2028, '66.249.64.135', 'news', '2022-04-10 05:52:44');
INSERT INTO `tb_visitlog_page` VALUES (2029, '205.169.39.167', 'home', '2022-04-10 23:10:01');
INSERT INTO `tb_visitlog_page` VALUES (2030, '180.253.162.109', 'home', '2022-04-11 08:20:28');
INSERT INTO `tb_visitlog_page` VALUES (2031, '180.253.162.109', 'home', '2022-04-11 08:46:13');
INSERT INTO `tb_visitlog_page` VALUES (2032, '180.253.162.109', 'open po', '2022-04-11 08:46:16');
INSERT INTO `tb_visitlog_page` VALUES (2033, '202.6.227.46', 'open po', '2022-04-11 09:24:04');
INSERT INTO `tb_visitlog_page` VALUES (2034, '40.94.28.31', 'open po', '2022-04-11 11:13:15');
INSERT INTO `tb_visitlog_page` VALUES (2035, '40.94.28.31', 'home', '2022-04-11 11:13:15');
INSERT INTO `tb_visitlog_page` VALUES (2036, '40.94.28.36', 'keranjang', '2022-04-11 11:16:16');
INSERT INTO `tb_visitlog_page` VALUES (2037, '40.94.28.36', 'wacana', '2022-04-11 11:16:16');
INSERT INTO `tb_visitlog_page` VALUES (2038, '202.6.227.46', 'home', '2022-04-11 15:59:16');
INSERT INTO `tb_visitlog_page` VALUES (2039, '202.6.227.46', 'order', '2022-04-11 15:59:20');
INSERT INTO `tb_visitlog_page` VALUES (2040, '202.6.227.46', 'home', '2022-04-11 15:59:22');
INSERT INTO `tb_visitlog_page` VALUES (2041, '202.6.227.46', 'open po', '2022-04-11 15:59:40');
INSERT INTO `tb_visitlog_page` VALUES (2042, '202.6.227.46', 'home', '2022-04-11 16:00:21');
INSERT INTO `tb_visitlog_page` VALUES (2043, '202.6.227.46', 'wacana', '2022-04-11 16:00:23');
INSERT INTO `tb_visitlog_page` VALUES (2044, '202.6.227.46', 'order', '2022-04-11 16:00:29');
INSERT INTO `tb_visitlog_page` VALUES (2045, '202.6.227.46', 'open po', '2022-04-11 16:00:32');
INSERT INTO `tb_visitlog_page` VALUES (2046, '202.6.227.46', 'open po', '2022-04-11 16:00:35');
INSERT INTO `tb_visitlog_page` VALUES (2047, '202.6.227.46', 'open po', '2022-04-11 16:00:50');
INSERT INTO `tb_visitlog_page` VALUES (2048, '66.249.70.42', 'wacana', '2022-04-12 00:52:52');
INSERT INTO `tb_visitlog_page` VALUES (2049, '202.6.227.46', 'home', '2022-04-12 08:04:51');
INSERT INTO `tb_visitlog_page` VALUES (2050, '125.164.15.142', 'wacana', '2022-04-12 08:32:30');
INSERT INTO `tb_visitlog_page` VALUES (2051, '202.6.227.46', 'home', '2022-04-12 11:02:00');
INSERT INTO `tb_visitlog_page` VALUES (2052, '202.6.227.46', 'home', '2022-04-12 11:02:32');
INSERT INTO `tb_visitlog_page` VALUES (2053, '125.164.15.142', 'news', '2022-04-12 12:04:52');
INSERT INTO `tb_visitlog_page` VALUES (2054, '202.6.227.46', 'home', '2022-04-12 14:03:08');
INSERT INTO `tb_visitlog_page` VALUES (2055, '202.6.227.46', 'home', '2022-04-12 14:04:27');
INSERT INTO `tb_visitlog_page` VALUES (2056, '202.6.227.46', 'wacana', '2022-04-12 14:04:29');
INSERT INTO `tb_visitlog_page` VALUES (2057, '202.6.227.46', 'news', '2022-04-12 14:04:37');
INSERT INTO `tb_visitlog_page` VALUES (2058, '125.164.15.142', 'home', '2022-04-12 14:07:25');
INSERT INTO `tb_visitlog_page` VALUES (2059, '125.164.15.142', 'wacana', '2022-04-12 14:07:26');
INSERT INTO `tb_visitlog_page` VALUES (2060, '125.164.15.142', 'news', '2022-04-12 14:07:31');
INSERT INTO `tb_visitlog_page` VALUES (2061, '125.164.15.142', 'news', '2022-04-12 14:10:13');
INSERT INTO `tb_visitlog_page` VALUES (2062, '202.6.227.46', 'news', '2022-04-12 14:15:06');
INSERT INTO `tb_visitlog_page` VALUES (2063, '202.6.227.46', 'wacana', '2022-04-12 14:15:34');
INSERT INTO `tb_visitlog_page` VALUES (2064, '202.6.227.46', 'news', '2022-04-12 14:15:39');
INSERT INTO `tb_visitlog_page` VALUES (2065, '202.6.227.46', 'wacana', '2022-04-12 14:16:02');
INSERT INTO `tb_visitlog_page` VALUES (2066, '202.6.227.46', 'news', '2022-04-12 14:16:06');
INSERT INTO `tb_visitlog_page` VALUES (2067, '202.6.227.46', 'wacana', '2022-04-12 14:16:34');
INSERT INTO `tb_visitlog_page` VALUES (2068, '202.6.227.46', 'news', '2022-04-12 14:16:37');
INSERT INTO `tb_visitlog_page` VALUES (2069, '202.6.227.46', 'wacana', '2022-04-12 14:16:48');
INSERT INTO `tb_visitlog_page` VALUES (2070, '202.6.227.46', 'news', '2022-04-12 14:16:51');
INSERT INTO `tb_visitlog_page` VALUES (2071, '202.6.227.46', 'news', '2022-04-12 14:24:31');
INSERT INTO `tb_visitlog_page` VALUES (2072, '202.6.227.46', 'open po', '2022-04-12 14:24:45');
INSERT INTO `tb_visitlog_page` VALUES (2073, '202.6.227.46', 'news', '2022-04-12 14:24:49');
INSERT INTO `tb_visitlog_page` VALUES (2074, '202.6.227.46', 'news', '2022-04-12 14:31:18');
INSERT INTO `tb_visitlog_page` VALUES (2075, '202.6.227.46', 'news', '2022-04-12 16:00:16');
INSERT INTO `tb_visitlog_page` VALUES (2076, '198.50.163.54', 'home', '2022-04-12 17:32:32');
INSERT INTO `tb_visitlog_page` VALUES (2077, '65.154.226.166', 'home', '2022-04-12 19:04:17');
INSERT INTO `tb_visitlog_page` VALUES (2078, '65.154.226.169', 'home', '2022-04-12 19:08:49');
INSERT INTO `tb_visitlog_page` VALUES (2079, '112.215.241.92', 'home', '2022-04-12 19:20:41');
INSERT INTO `tb_visitlog_page` VALUES (2080, '112.215.241.92', 'menu', '2022-04-12 19:21:14');
INSERT INTO `tb_visitlog_page` VALUES (2081, '112.215.241.92', 'menu', '2022-04-12 19:38:17');
INSERT INTO `tb_visitlog_page` VALUES (2082, '66.249.64.135', 'home', '2022-04-12 21:19:29');
INSERT INTO `tb_visitlog_page` VALUES (2083, '66.249.64.132', 'home', '2022-04-12 21:29:45');
INSERT INTO `tb_visitlog_page` VALUES (2084, '66.249.64.135', 'news', '2022-04-13 03:43:20');
INSERT INTO `tb_visitlog_page` VALUES (2085, '66.249.64.132', 'news', '2022-04-13 04:15:54');
INSERT INTO `tb_visitlog_page` VALUES (2086, '66.249.64.135', 'news', '2022-04-13 04:16:39');
INSERT INTO `tb_visitlog_page` VALUES (2087, '202.6.227.46', 'news', '2022-04-13 08:38:29');
INSERT INTO `tb_visitlog_page` VALUES (2088, '202.6.227.46', 'wacana', '2022-04-13 08:38:31');
INSERT INTO `tb_visitlog_page` VALUES (2089, '66.249.64.158', 'keranjang', '2022-04-13 08:43:10');
INSERT INTO `tb_visitlog_page` VALUES (2090, '66.249.64.56', 'keranjang', '2022-04-13 08:44:46');
INSERT INTO `tb_visitlog_page` VALUES (2091, '202.6.227.46', 'news', '2022-04-13 12:13:21');
INSERT INTO `tb_visitlog_page` VALUES (2092, '202.6.227.46', 'wacana', '2022-04-13 12:13:24');
INSERT INTO `tb_visitlog_page` VALUES (2093, '202.6.227.46', 'syarat & ketentuan', '2022-04-13 13:17:55');
INSERT INTO `tb_visitlog_page` VALUES (2094, '202.6.227.46', 'tentang', '2022-04-13 13:24:58');
INSERT INTO `tb_visitlog_page` VALUES (2095, '202.6.227.46', 'wacana', '2022-04-13 13:53:43');
INSERT INTO `tb_visitlog_page` VALUES (2096, '202.6.227.46', 'home', '2022-04-13 14:07:36');
INSERT INTO `tb_visitlog_page` VALUES (2097, '2001:448a:5020:a5cf:', 'wacana', '2022-04-13 14:25:44');
INSERT INTO `tb_visitlog_page` VALUES (2098, '2001:448a:5020:a5cf:', 'news', '2022-04-13 14:25:46');
INSERT INTO `tb_visitlog_page` VALUES (2099, '2001:448a:5020:a5cf:', 'news', '2022-04-13 15:44:05');
INSERT INTO `tb_visitlog_page` VALUES (2100, '2001:448a:5020:a5cf:', 'news', '2022-04-13 15:44:24');
INSERT INTO `tb_visitlog_page` VALUES (2101, '2001:448a:5020:a5cf:', 'news', '2022-04-13 15:44:37');
INSERT INTO `tb_visitlog_page` VALUES (2102, '2001:448a:5020:a5cf:', 'wacana', '2022-04-13 15:44:40');
INSERT INTO `tb_visitlog_page` VALUES (2103, '2001:448a:5020:a5cf:', 'wacana', '2022-04-13 15:44:54');
INSERT INTO `tb_visitlog_page` VALUES (2104, '2001:448a:5020:a5cf:', 'news', '2022-04-13 15:45:04');
INSERT INTO `tb_visitlog_page` VALUES (2105, '66.249.64.132', 'keranjang', '2022-04-14 06:40:50');
INSERT INTO `tb_visitlog_page` VALUES (2106, '180.253.166.83', 'home', '2022-04-14 08:22:47');
INSERT INTO `tb_visitlog_page` VALUES (2107, '2001:448a:5020:6d39:', 'home', '2022-04-14 08:41:07');
INSERT INTO `tb_visitlog_page` VALUES (2108, '2001:448a:5020:6d39:', 'wacana', '2022-04-14 08:41:09');
INSERT INTO `tb_visitlog_page` VALUES (2109, '2001:448a:5020:6d39:', 'wacana', '2022-04-14 08:41:24');
INSERT INTO `tb_visitlog_page` VALUES (2110, '2001:448a:5020:6d39:', 'news', '2022-04-14 08:41:28');
INSERT INTO `tb_visitlog_page` VALUES (2111, '2001:448a:5020:6d39:', 'wacana', '2022-04-14 08:57:01');
INSERT INTO `tb_visitlog_page` VALUES (2112, '149.113.17.46', 'home', '2022-04-14 10:32:51');
INSERT INTO `tb_visitlog_page` VALUES (2113, '149.113.17.46', 'order', '2022-04-14 10:32:58');
INSERT INTO `tb_visitlog_page` VALUES (2114, '149.113.17.46', 'open po', '2022-04-14 10:33:03');
INSERT INTO `tb_visitlog_page` VALUES (2115, '149.113.17.46', 'order', '2022-04-14 10:33:24');
INSERT INTO `tb_visitlog_page` VALUES (2116, '149.113.17.46', 'home', '2022-04-14 10:33:26');
INSERT INTO `tb_visitlog_page` VALUES (2117, '149.113.17.46', 'home', '2022-04-14 10:34:46');
INSERT INTO `tb_visitlog_page` VALUES (2118, '149.113.17.46', 'order', '2022-04-14 10:34:49');
INSERT INTO `tb_visitlog_page` VALUES (2119, '149.113.17.46', 'open po', '2022-04-14 10:34:52');
INSERT INTO `tb_visitlog_page` VALUES (2120, '2001:448a:5020:6d39:', 'home', '2022-04-14 10:57:08');
INSERT INTO `tb_visitlog_page` VALUES (2121, '2001:448a:5020:6d39:', 'wacana', '2022-04-14 10:57:10');
INSERT INTO `tb_visitlog_page` VALUES (2122, '2001:448a:5020:6d39:', 'news', '2022-04-14 12:33:55');
INSERT INTO `tb_visitlog_page` VALUES (2123, '202.6.227.46', 'home', '2022-04-14 13:35:15');
INSERT INTO `tb_visitlog_page` VALUES (2124, '149.113.17.46', 'open po', '2022-04-14 13:43:11');
INSERT INTO `tb_visitlog_page` VALUES (2125, '202.6.227.46', 'home', '2022-04-14 13:48:48');
INSERT INTO `tb_visitlog_page` VALUES (2126, '202.6.227.46', 'home', '2022-04-14 13:56:41');
INSERT INTO `tb_visitlog_page` VALUES (2127, '2001:448a:5020:6d39:', 'news', '2022-04-14 14:25:00');
INSERT INTO `tb_visitlog_page` VALUES (2128, '202.6.227.46', 'home', '2022-04-14 16:33:56');
INSERT INTO `tb_visitlog_page` VALUES (2129, '202.6.227.46', 'menu', '2022-04-14 16:33:59');
INSERT INTO `tb_visitlog_page` VALUES (2130, '202.6.227.46', 'order', '2022-04-14 16:34:14');
INSERT INTO `tb_visitlog_page` VALUES (2131, '202.6.227.46', 'order', '2022-04-14 16:34:30');
INSERT INTO `tb_visitlog_page` VALUES (2132, '202.6.227.46', 'home', '2022-04-14 16:37:46');
INSERT INTO `tb_visitlog_page` VALUES (2133, '202.6.227.46', 'menu', '2022-04-14 16:37:49');
INSERT INTO `tb_visitlog_page` VALUES (2134, '36.68.221.129', 'home', '2022-04-15 04:53:51');
INSERT INTO `tb_visitlog_page` VALUES (2135, '36.68.221.129', 'news', '2022-04-15 04:54:01');
INSERT INTO `tb_visitlog_page` VALUES (2136, '36.68.221.129', 'news', '2022-04-15 04:54:08');
INSERT INTO `tb_visitlog_page` VALUES (2137, '36.68.221.129', 'news', '2022-04-15 04:54:10');
INSERT INTO `tb_visitlog_page` VALUES (2138, '36.68.221.129', 'news', '2022-04-15 04:54:12');
INSERT INTO `tb_visitlog_page` VALUES (2139, '36.68.221.129', 'news', '2022-04-15 04:54:15');
INSERT INTO `tb_visitlog_page` VALUES (2140, '36.68.221.129', 'news', '2022-04-15 04:54:37');
INSERT INTO `tb_visitlog_page` VALUES (2141, '149.113.17.46', 'home', '2022-04-15 10:56:51');
INSERT INTO `tb_visitlog_page` VALUES (2142, '149.113.17.46', 'menu', '2022-04-15 10:56:56');
INSERT INTO `tb_visitlog_page` VALUES (2143, '149.113.17.46', 'home', '2022-04-15 10:57:13');
INSERT INTO `tb_visitlog_page` VALUES (2144, '2605:6400:20:2454:7b', 'home', '2022-04-15 13:30:50');
INSERT INTO `tb_visitlog_page` VALUES (2145, '202.67.40.209', 'news', '2022-04-15 16:52:55');
INSERT INTO `tb_visitlog_page` VALUES (2146, '118.98.26.6', 'news', '2022-04-15 17:03:49');
INSERT INTO `tb_visitlog_page` VALUES (2147, '114.4.4.134', 'news', '2022-04-15 17:19:15');
INSERT INTO `tb_visitlog_page` VALUES (2148, '114.10.27.95', 'home', '2022-04-15 19:43:25');
INSERT INTO `tb_visitlog_page` VALUES (2149, '114.10.27.95', 'login', '2022-04-15 19:43:25');
INSERT INTO `tb_visitlog_page` VALUES (2150, '114.10.27.95', 'login', '2022-04-15 19:43:44');
INSERT INTO `tb_visitlog_page` VALUES (2151, '114.10.27.95', 'register', '2022-04-15 19:43:51');
INSERT INTO `tb_visitlog_page` VALUES (2152, '114.10.27.95', 'login', '2022-04-15 19:44:19');
INSERT INTO `tb_visitlog_page` VALUES (2153, '114.10.27.95', 'home', '2022-04-15 19:44:29');
INSERT INTO `tb_visitlog_page` VALUES (2154, '114.10.27.95', 'user', '2022-04-15 19:44:33');
INSERT INTO `tb_visitlog_page` VALUES (2155, '114.10.27.95', 'galeri', '2022-04-15 19:44:43');
INSERT INTO `tb_visitlog_page` VALUES (2156, '114.10.27.95', 'home', '2022-04-15 19:44:59');
INSERT INTO `tb_visitlog_page` VALUES (2157, '114.10.27.95', 'menu', '2022-04-15 19:45:06');
INSERT INTO `tb_visitlog_page` VALUES (2158, '17.121.115.143', 'news', '2022-04-16 03:59:59');
INSERT INTO `tb_visitlog_page` VALUES (2159, '17.121.114.224', 'order', '2022-04-16 04:37:07');
INSERT INTO `tb_visitlog_page` VALUES (2160, '66.249.64.152', 'news', '2022-04-16 06:09:02');
INSERT INTO `tb_visitlog_page` VALUES (2161, '89.3.188.163', 'tentang', '2022-04-16 10:48:06');
INSERT INTO `tb_visitlog_page` VALUES (2162, '144.217.135.136', 'home', '2022-04-16 22:43:39');
INSERT INTO `tb_visitlog_page` VALUES (2163, '2001:448a:5020:6d39:', 'news', '2022-04-18 08:19:01');
INSERT INTO `tb_visitlog_page` VALUES (2164, '180.253.166.83', 'home', '2022-04-18 08:19:46');
INSERT INTO `tb_visitlog_page` VALUES (2165, '2001:448a:5020:6d39:', 'open po', '2022-04-18 08:28:04');
INSERT INTO `tb_visitlog_page` VALUES (2166, '2001:448a:5020:6d39:', 'open po', '2022-04-18 08:37:23');
INSERT INTO `tb_visitlog_page` VALUES (2167, '2001:448a:5020:6d39:', 'home', '2022-04-18 09:02:03');
INSERT INTO `tb_visitlog_page` VALUES (2168, '2001:448a:5020:6d39:', 'open po', '2022-04-18 09:02:18');
INSERT INTO `tb_visitlog_page` VALUES (2169, '202.6.227.46', 'home', '2022-04-18 10:11:46');
INSERT INTO `tb_visitlog_page` VALUES (2170, '2001:448a:5020:6d39:', 'open po', '2022-04-18 10:48:36');
INSERT INTO `tb_visitlog_page` VALUES (2171, '44.226.198.94', 'home', '2022-04-18 11:14:04');
INSERT INTO `tb_visitlog_page` VALUES (2172, '180.253.166.83', 'home', '2022-04-18 12:10:05');
INSERT INTO `tb_visitlog_page` VALUES (2173, '180.253.166.83', 'menu', '2022-04-18 12:12:55');
INSERT INTO `tb_visitlog_page` VALUES (2174, '36.81.213.194', 'home', '2022-04-18 21:37:46');
INSERT INTO `tb_visitlog_page` VALUES (2175, '36.81.213.194', 'order', '2022-04-18 21:37:58');
INSERT INTO `tb_visitlog_page` VALUES (2176, '36.81.213.194', 'open po', '2022-04-18 21:38:01');
INSERT INTO `tb_visitlog_page` VALUES (2177, '202.6.227.46', 'home', '2022-04-19 08:15:46');
INSERT INTO `tb_visitlog_page` VALUES (2178, '202.6.227.46', 'wacana', '2022-04-19 08:28:53');
INSERT INTO `tb_visitlog_page` VALUES (2179, '202.6.227.46', 'tentang', '2022-04-19 08:29:03');
INSERT INTO `tb_visitlog_page` VALUES (2180, '66.249.64.146', 'news', '2022-04-19 18:18:58');
INSERT INTO `tb_visitlog_page` VALUES (2181, '66.249.64.139', 'home', '2022-04-19 19:32:40');
INSERT INTO `tb_visitlog_page` VALUES (2182, '66.249.64.146', 'home', '2022-04-19 19:52:37');
INSERT INTO `tb_visitlog_page` VALUES (2183, '66.249.64.146', 'home', '2022-04-19 19:54:22');
INSERT INTO `tb_visitlog_page` VALUES (2184, '66.249.64.42', 'home', '2022-04-19 20:12:57');
INSERT INTO `tb_visitlog_page` VALUES (2185, '202.6.227.46', 'tentang', '2022-04-20 07:51:10');
INSERT INTO `tb_visitlog_page` VALUES (2186, '202.6.227.46', 'tentang', '2022-04-20 08:13:28');
INSERT INTO `tb_visitlog_page` VALUES (2187, '180.253.166.83', 'tentang', '2022-04-20 09:37:41');
INSERT INTO `tb_visitlog_page` VALUES (2188, '202.6.227.46', 'wacana', '2022-04-20 10:24:32');
INSERT INTO `tb_visitlog_page` VALUES (2189, '202.6.227.46', 'menu', '2022-04-20 10:26:52');
INSERT INTO `tb_visitlog_page` VALUES (2190, '2001:448a:5020:6d39:', 'home', '2022-04-20 11:37:04');
INSERT INTO `tb_visitlog_page` VALUES (2191, '2001:448a:5020:6d39:', 'menu', '2022-04-20 11:37:06');
INSERT INTO `tb_visitlog_page` VALUES (2192, '2001:448a:5020:9b8c:', 'home', '2022-04-21 08:01:01');
INSERT INTO `tb_visitlog_page` VALUES (2193, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:34:33');
INSERT INTO `tb_visitlog_page` VALUES (2194, '2001:448a:5020:9b8c:', 'home', '2022-04-21 08:36:16');
INSERT INTO `tb_visitlog_page` VALUES (2195, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 08:36:22');
INSERT INTO `tb_visitlog_page` VALUES (2196, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:36:56');
INSERT INTO `tb_visitlog_page` VALUES (2197, '202.6.227.46', 'news', '2022-04-21 08:37:25');
INSERT INTO `tb_visitlog_page` VALUES (2198, '2001:448a:5020:9b8c:', 'home', '2022-04-21 08:37:27');
INSERT INTO `tb_visitlog_page` VALUES (2199, '121.7.70.28', 'news', '2022-04-21 08:37:41');
INSERT INTO `tb_visitlog_page` VALUES (2200, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:37:43');
INSERT INTO `tb_visitlog_page` VALUES (2201, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 08:42:57');
INSERT INTO `tb_visitlog_page` VALUES (2202, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:43:01');
INSERT INTO `tb_visitlog_page` VALUES (2203, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:43:45');
INSERT INTO `tb_visitlog_page` VALUES (2204, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:44:22');
INSERT INTO `tb_visitlog_page` VALUES (2205, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:48:31');
INSERT INTO `tb_visitlog_page` VALUES (2206, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:52:06');
INSERT INTO `tb_visitlog_page` VALUES (2207, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:52:38');
INSERT INTO `tb_visitlog_page` VALUES (2208, '2001:448a:5020:9b8c:', 'news', '2022-04-21 08:54:48');
INSERT INTO `tb_visitlog_page` VALUES (2209, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:04:40');
INSERT INTO `tb_visitlog_page` VALUES (2210, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:05:59');
INSERT INTO `tb_visitlog_page` VALUES (2211, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:13:26');
INSERT INTO `tb_visitlog_page` VALUES (2212, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:14:13');
INSERT INTO `tb_visitlog_page` VALUES (2213, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 09:14:43');
INSERT INTO `tb_visitlog_page` VALUES (2214, '2001:448a:5020:9b8c:', 'home', '2022-04-21 09:15:06');
INSERT INTO `tb_visitlog_page` VALUES (2215, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 09:15:16');
INSERT INTO `tb_visitlog_page` VALUES (2216, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:15:21');
INSERT INTO `tb_visitlog_page` VALUES (2217, '2001:448a:5020:9b8c:', 'galeri', '2022-04-21 09:16:36');
INSERT INTO `tb_visitlog_page` VALUES (2218, '2001:448a:5020:9b8c:', 'login', '2022-04-21 09:17:39');
INSERT INTO `tb_visitlog_page` VALUES (2219, '2001:448a:5020:9b8c:', 'menu', '2022-04-21 09:17:44');
INSERT INTO `tb_visitlog_page` VALUES (2220, '2001:448a:5020:9b8c:', 'tentang', '2022-04-21 09:17:45');
INSERT INTO `tb_visitlog_page` VALUES (2221, '2001:448a:5020:9b8c:', 'menu', '2022-04-21 09:19:02');
INSERT INTO `tb_visitlog_page` VALUES (2222, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:26:40');
INSERT INTO `tb_visitlog_page` VALUES (2223, '182.1.92.32', 'news', '2022-04-21 09:45:23');
INSERT INTO `tb_visitlog_page` VALUES (2224, '2001:448a:5020:9b8c:', 'home', '2022-04-21 09:47:14');
INSERT INTO `tb_visitlog_page` VALUES (2225, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 09:47:16');
INSERT INTO `tb_visitlog_page` VALUES (2226, '2001:448a:5020:9b8c:', 'home', '2022-04-21 09:52:22');
INSERT INTO `tb_visitlog_page` VALUES (2227, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 09:52:23');
INSERT INTO `tb_visitlog_page` VALUES (2228, '2001:448a:5020:9b8c:', 'news', '2022-04-21 09:52:26');
INSERT INTO `tb_visitlog_page` VALUES (2229, '202.6.227.46', 'home', '2022-04-21 15:58:29');
INSERT INTO `tb_visitlog_page` VALUES (2230, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 16:13:02');
INSERT INTO `tb_visitlog_page` VALUES (2231, '2001:448a:5020:9b8c:', 'home', '2022-04-21 16:13:17');
INSERT INTO `tb_visitlog_page` VALUES (2232, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 16:14:42');
INSERT INTO `tb_visitlog_page` VALUES (2233, '2001:448a:5020:9b8c:', 'wacana', '2022-04-21 16:14:43');
INSERT INTO `tb_visitlog_page` VALUES (2234, '202.6.227.46', 'home', '2022-04-21 16:20:34');
INSERT INTO `tb_visitlog_page` VALUES (2235, '202.6.227.46', 'wacana', '2022-04-21 16:20:38');
INSERT INTO `tb_visitlog_page` VALUES (2236, '125.164.10.51', 'home', '2022-04-22 08:05:35');
INSERT INTO `tb_visitlog_page` VALUES (2237, '2001:448a:5020:9b8c:', 'home', '2022-04-22 08:08:14');
INSERT INTO `tb_visitlog_page` VALUES (2238, '2001:448a:5020:9b8c:', 'home', '2022-04-22 08:29:06');
INSERT INTO `tb_visitlog_page` VALUES (2239, '2001:448a:5020:9b8c:', 'menu', '2022-04-22 08:29:13');
INSERT INTO `tb_visitlog_page` VALUES (2240, '2001:448a:5020:9b8c:', 'order', '2022-04-22 08:29:15');
INSERT INTO `tb_visitlog_page` VALUES (2241, '2001:448a:5020:9b8c:', 'open po', '2022-04-22 08:29:16');
INSERT INTO `tb_visitlog_page` VALUES (2242, '125.164.10.51', 'home', '2022-04-22 10:48:36');
INSERT INTO `tb_visitlog_page` VALUES (2243, '125.164.10.51', 'home', '2022-04-22 10:48:49');
INSERT INTO `tb_visitlog_page` VALUES (2244, '125.164.10.51', 'login', '2022-04-22 10:55:38');
INSERT INTO `tb_visitlog_page` VALUES (2245, '66.249.64.146', 'home', '2022-04-22 10:57:26');
INSERT INTO `tb_visitlog_page` VALUES (2246, '202.6.227.46', 'order', '2022-04-22 11:08:12');
INSERT INTO `tb_visitlog_page` VALUES (2247, '202.6.227.46', 'order', '2022-04-22 11:08:43');
INSERT INTO `tb_visitlog_page` VALUES (2248, '202.6.227.46', 'order', '2022-04-22 11:10:38');
INSERT INTO `tb_visitlog_page` VALUES (2249, '202.6.227.46', 'home', '2022-04-22 11:12:19');
INSERT INTO `tb_visitlog_page` VALUES (2250, '202.6.227.46', 'menu', '2022-04-22 11:12:21');
INSERT INTO `tb_visitlog_page` VALUES (2251, '202.6.227.46', 'order', '2022-04-22 11:18:19');
INSERT INTO `tb_visitlog_page` VALUES (2252, '202.6.227.46', 'order', '2022-04-22 11:23:47');
INSERT INTO `tb_visitlog_page` VALUES (2253, '202.6.227.46', 'open po', '2022-04-22 11:23:50');
INSERT INTO `tb_visitlog_page` VALUES (2254, '202.6.227.46', 'order', '2022-04-22 11:23:54');
INSERT INTO `tb_visitlog_page` VALUES (2255, '202.6.227.46', 'open po', '2022-04-22 11:23:57');
INSERT INTO `tb_visitlog_page` VALUES (2256, '202.6.227.46', 'order', '2022-04-22 11:24:01');
INSERT INTO `tb_visitlog_page` VALUES (2257, '202.6.227.46', 'home', '2022-04-22 15:26:29');
INSERT INTO `tb_visitlog_page` VALUES (2258, '202.6.227.46', 'menu', '2022-04-22 15:26:42');
INSERT INTO `tb_visitlog_page` VALUES (2259, '202.6.227.46', 'home', '2022-04-22 15:28:04');
INSERT INTO `tb_visitlog_page` VALUES (2260, '182.1.82.145', 'home', '2022-04-22 15:29:19');
INSERT INTO `tb_visitlog_page` VALUES (2261, '182.1.82.145', 'menu', '2022-04-22 15:29:37');
INSERT INTO `tb_visitlog_page` VALUES (2262, '202.6.227.46', 'home', '2022-04-22 15:29:41');
INSERT INTO `tb_visitlog_page` VALUES (2263, '182.1.82.145', 'menu', '2022-04-22 15:30:13');
INSERT INTO `tb_visitlog_page` VALUES (2264, '2001:448a:5020:9b8c:', 'open po', '2022-04-22 16:11:44');
INSERT INTO `tb_visitlog_page` VALUES (2265, '2001:448a:5020:9b8c:', 'wacana', '2022-04-22 16:11:46');
INSERT INTO `tb_visitlog_page` VALUES (2266, '2001:448a:5020:9b8c:', 'news', '2022-04-22 16:11:48');
INSERT INTO `tb_visitlog_page` VALUES (2267, '114.4.4.135', 'news', '2022-04-22 16:46:06');
INSERT INTO `tb_visitlog_page` VALUES (2268, '112.215.240.108', 'home', '2022-04-22 20:18:01');
INSERT INTO `tb_visitlog_page` VALUES (2269, '66.249.74.24', 'kontak', '2022-04-23 00:15:17');
INSERT INTO `tb_visitlog_page` VALUES (2270, '114.125.86.43', 'news', '2022-04-23 08:56:10');
INSERT INTO `tb_visitlog_page` VALUES (2271, '17.121.114.160', 'galeri', '2022-04-23 08:58:08');
INSERT INTO `tb_visitlog_page` VALUES (2272, '17.121.114.134', 'wacana', '2022-04-23 09:40:15');
INSERT INTO `tb_visitlog_page` VALUES (2273, '17.121.114.67', 'order', '2022-04-23 09:52:45');
INSERT INTO `tb_visitlog_page` VALUES (2274, '66.249.64.152', 'tentang', '2022-04-23 12:45:56');
INSERT INTO `tb_visitlog_page` VALUES (2275, '66.249.74.10', 'tentang', '2022-04-23 20:52:17');
INSERT INTO `tb_visitlog_page` VALUES (2276, '66.249.64.128', 'menu', '2022-04-24 02:58:33');
INSERT INTO `tb_visitlog_page` VALUES (2277, '180.253.164.142', 'wacana', '2022-04-24 20:05:07');
INSERT INTO `tb_visitlog_page` VALUES (2278, '180.253.164.142', 'home', '2022-04-24 20:05:11');
INSERT INTO `tb_visitlog_page` VALUES (2279, '180.253.164.142', 'menu', '2022-04-24 20:05:29');
INSERT INTO `tb_visitlog_page` VALUES (2280, '202.6.227.46', 'home', '2022-04-25 08:18:41');
INSERT INTO `tb_visitlog_page` VALUES (2281, '202.6.227.46', 'open po', '2022-04-25 08:22:31');
INSERT INTO `tb_visitlog_page` VALUES (2282, '202.6.227.46', 'keranjang', '2022-04-25 08:22:36');
INSERT INTO `tb_visitlog_page` VALUES (2283, '202.6.227.46', 'kontak', '2022-04-25 08:22:52');
INSERT INTO `tb_visitlog_page` VALUES (2284, '202.6.227.46', 'wacana', '2022-04-25 08:23:22');
INSERT INTO `tb_visitlog_page` VALUES (2285, '202.6.227.46', 'open po', '2022-04-25 08:28:44');
INSERT INTO `tb_visitlog_page` VALUES (2286, '125.164.0.115', 'wacana', '2022-04-25 08:39:23');
INSERT INTO `tb_visitlog_page` VALUES (2287, '125.164.0.115', 'news', '2022-04-25 08:39:38');
INSERT INTO `tb_visitlog_page` VALUES (2288, '202.6.227.46', 'home', '2022-04-25 09:12:06');
INSERT INTO `tb_visitlog_page` VALUES (2289, '202.6.227.46', 'menu', '2022-04-25 09:12:12');
INSERT INTO `tb_visitlog_page` VALUES (2290, '125.164.0.115', 'news', '2022-04-25 09:36:29');
INSERT INTO `tb_visitlog_page` VALUES (2291, '202.6.227.46', 'wacana', '2022-04-25 10:44:46');
INSERT INTO `tb_visitlog_page` VALUES (2292, '202.6.227.46', 'order', '2022-04-25 10:44:47');
INSERT INTO `tb_visitlog_page` VALUES (2293, '202.6.227.46', 'open po', '2022-04-25 10:44:48');
INSERT INTO `tb_visitlog_page` VALUES (2294, '202.6.227.46', 'open po', '2022-04-25 10:47:33');
INSERT INTO `tb_visitlog_page` VALUES (2295, '202.6.227.46', 'home', '2022-04-25 10:49:10');
INSERT INTO `tb_visitlog_page` VALUES (2296, '202.6.227.46', 'order', '2022-04-25 10:49:43');
INSERT INTO `tb_visitlog_page` VALUES (2297, '202.6.227.46', 'open po', '2022-04-25 10:49:46');
INSERT INTO `tb_visitlog_page` VALUES (2298, '202.6.227.46', 'home', '2022-04-25 11:11:16');
INSERT INTO `tb_visitlog_page` VALUES (2299, '202.6.227.46', 'order', '2022-04-25 11:11:19');
INSERT INTO `tb_visitlog_page` VALUES (2300, '202.6.227.46', 'open po', '2022-04-25 11:11:21');
INSERT INTO `tb_visitlog_page` VALUES (2301, '202.6.227.46', 'home', '2022-04-25 11:18:53');
INSERT INTO `tb_visitlog_page` VALUES (2302, '202.6.227.46', 'order', '2022-04-25 11:19:04');
INSERT INTO `tb_visitlog_page` VALUES (2303, '202.6.227.46', 'open po', '2022-04-25 11:19:06');
INSERT INTO `tb_visitlog_page` VALUES (2304, '202.6.227.46', 'open po', '2022-04-25 11:19:28');
INSERT INTO `tb_visitlog_page` VALUES (2305, '66.249.64.158', 'news', '2022-04-25 12:54:10');
INSERT INTO `tb_visitlog_page` VALUES (2306, '66.249.64.128', 'home', '2022-04-25 14:02:39');
INSERT INTO `tb_visitlog_page` VALUES (2307, '66.249.64.158', 'home', '2022-04-25 16:20:09');
INSERT INTO `tb_visitlog_page` VALUES (2308, '66.249.64.158', 'home', '2022-04-25 17:15:10');
INSERT INTO `tb_visitlog_page` VALUES (2309, '2001:448a:5020:b025:', 'home', '2022-04-26 09:16:35');
INSERT INTO `tb_visitlog_page` VALUES (2310, '2001:448a:5020:b025:', 'menu', '2022-04-26 09:16:38');
INSERT INTO `tb_visitlog_page` VALUES (2311, '2001:448a:5020:b025:', 'wacana', '2022-04-26 09:51:13');
INSERT INTO `tb_visitlog_page` VALUES (2312, '2001:448a:5020:b025:', 'menu', '2022-04-26 10:16:52');
INSERT INTO `tb_visitlog_page` VALUES (2313, '202.6.227.46', 'home', '2022-04-27 14:46:21');
INSERT INTO `tb_visitlog_page` VALUES (2314, '202.6.227.46', 'menu', '2022-04-27 14:46:25');
INSERT INTO `tb_visitlog_page` VALUES (2315, '202.6.227.46', 'wacana', '2022-04-27 14:46:29');
INSERT INTO `tb_visitlog_page` VALUES (2316, '202.6.227.46', 'home', '2022-04-27 14:48:54');
INSERT INTO `tb_visitlog_page` VALUES (2317, '202.6.227.46', 'wacana', '2022-04-27 14:48:55');
INSERT INTO `tb_visitlog_page` VALUES (2318, '202.6.227.46', 'news', '2022-04-27 14:49:18');
INSERT INTO `tb_visitlog_page` VALUES (2319, '202.6.227.46', 'news', '2022-04-27 14:49:33');
INSERT INTO `tb_visitlog_page` VALUES (2320, '202.6.227.46', 'news', '2022-04-27 14:49:54');
INSERT INTO `tb_visitlog_page` VALUES (2321, '202.6.227.46', 'news', '2022-04-27 14:50:30');
INSERT INTO `tb_visitlog_page` VALUES (2322, '202.6.227.46', 'news', '2022-04-27 14:51:54');
INSERT INTO `tb_visitlog_page` VALUES (2323, '202.6.227.46', 'news', '2022-04-27 14:52:27');
INSERT INTO `tb_visitlog_page` VALUES (2324, '202.6.227.46', 'news', '2022-04-27 14:53:16');
INSERT INTO `tb_visitlog_page` VALUES (2325, '202.6.227.46', 'news', '2022-04-27 14:54:03');
INSERT INTO `tb_visitlog_page` VALUES (2326, '202.6.227.46', 'news', '2022-04-27 14:55:39');
INSERT INTO `tb_visitlog_page` VALUES (2327, '202.6.227.46', 'menu', '2022-04-27 14:56:19');
INSERT INTO `tb_visitlog_page` VALUES (2328, '125.164.50.131', 'wacana', '2022-04-27 17:12:40');
INSERT INTO `tb_visitlog_page` VALUES (2329, '202.6.227.46', 'wacana', '2022-04-27 17:13:19');
INSERT INTO `tb_visitlog_page` VALUES (2330, '202.6.227.46', 'news', '2022-04-27 17:14:20');
INSERT INTO `tb_visitlog_page` VALUES (2331, '66.249.66.58', 'tentang', '2022-04-28 08:38:02');
INSERT INTO `tb_visitlog_page` VALUES (2332, '116.206.40.75', 'news', '2022-04-28 14:13:41');
INSERT INTO `tb_visitlog_page` VALUES (2333, '202.6.227.46', 'news', '2022-04-28 14:15:50');
INSERT INTO `tb_visitlog_page` VALUES (2334, '202.6.227.46', 'wacana', '2022-04-28 14:15:57');
INSERT INTO `tb_visitlog_page` VALUES (2335, '202.6.227.46', 'news', '2022-04-28 14:16:00');
INSERT INTO `tb_visitlog_page` VALUES (2336, '202.6.227.46', 'news', '2022-04-28 14:16:42');
INSERT INTO `tb_visitlog_page` VALUES (2337, '202.6.227.46', 'news', '2022-04-28 14:17:16');
INSERT INTO `tb_visitlog_page` VALUES (2338, '202.6.227.46', 'news', '2022-04-28 14:17:21');
INSERT INTO `tb_visitlog_page` VALUES (2339, '202.6.227.46', 'wacana', '2022-04-28 14:17:26');
INSERT INTO `tb_visitlog_page` VALUES (2340, '202.6.227.46', 'open po', '2022-04-28 15:37:34');
INSERT INTO `tb_visitlog_page` VALUES (2341, '202.6.227.46', 'order', '2022-04-28 15:37:51');
INSERT INTO `tb_visitlog_page` VALUES (2342, '202.6.227.46', 'open po', '2022-04-28 15:37:54');
INSERT INTO `tb_visitlog_page` VALUES (2343, '202.6.227.46', 'home', '2022-04-28 15:38:51');
INSERT INTO `tb_visitlog_page` VALUES (2344, '202.6.227.46', 'order', '2022-04-28 15:38:53');
INSERT INTO `tb_visitlog_page` VALUES (2345, '202.6.227.46', 'open po', '2022-04-28 15:38:59');
INSERT INTO `tb_visitlog_page` VALUES (2346, '202.6.227.46', 'open po', '2022-04-28 15:43:04');
INSERT INTO `tb_visitlog_page` VALUES (2347, '202.6.227.46', 'open po', '2022-04-28 15:44:05');
INSERT INTO `tb_visitlog_page` VALUES (2348, '202.6.227.46', 'news', '2022-04-28 16:22:53');
INSERT INTO `tb_visitlog_page` VALUES (2349, '202.6.227.46', 'open po', '2022-04-28 16:44:13');
INSERT INTO `tb_visitlog_page` VALUES (2350, '202.6.227.46', 'open po', '2022-04-28 16:44:17');
INSERT INTO `tb_visitlog_page` VALUES (2351, '202.6.227.46', 'order', '2022-04-28 16:44:19');
INSERT INTO `tb_visitlog_page` VALUES (2352, '202.6.227.46', 'open po', '2022-04-28 16:44:20');
INSERT INTO `tb_visitlog_page` VALUES (2353, '202.6.227.46', 'open po', '2022-04-28 16:45:22');
INSERT INTO `tb_visitlog_page` VALUES (2354, '202.6.227.46', 'home', '2022-04-28 16:45:43');
INSERT INTO `tb_visitlog_page` VALUES (2355, '202.6.227.46', 'order', '2022-04-28 16:45:46');
INSERT INTO `tb_visitlog_page` VALUES (2356, '202.6.227.46', 'open po', '2022-04-28 16:45:48');
INSERT INTO `tb_visitlog_page` VALUES (2357, '66.249.64.146', 'galeri', '2022-04-29 06:28:39');
INSERT INTO `tb_visitlog_page` VALUES (2358, '66.249.64.135', 'home', '2022-04-29 08:15:06');
INSERT INTO `tb_visitlog_page` VALUES (2359, '66.249.64.158', 'home', '2022-04-29 08:39:07');
INSERT INTO `tb_visitlog_page` VALUES (2360, '66.249.66.58', 'home', '2022-04-29 09:06:28');
INSERT INTO `tb_visitlog_page` VALUES (2361, '114.4.4.197', 'news', '2022-04-29 16:54:01');
INSERT INTO `tb_visitlog_page` VALUES (2362, '114.4.4.139', 'news', '2022-04-29 16:54:01');
INSERT INTO `tb_visitlog_page` VALUES (2363, '114.4.4.197', 'news', '2022-04-29 16:55:52');
INSERT INTO `tb_visitlog_page` VALUES (2364, '36.68.218.227', 'home', '2022-04-29 17:50:51');
INSERT INTO `tb_visitlog_page` VALUES (2365, '36.68.218.227', 'news', '2022-04-29 17:51:12');
INSERT INTO `tb_visitlog_page` VALUES (2366, '36.68.218.227', 'news', '2022-04-29 17:51:21');
INSERT INTO `tb_visitlog_page` VALUES (2367, '36.68.218.227', 'news', '2022-04-29 17:51:26');
INSERT INTO `tb_visitlog_page` VALUES (2368, '36.68.218.227', 'news', '2022-04-29 17:51:27');
INSERT INTO `tb_visitlog_page` VALUES (2369, '36.68.218.227', 'news', '2022-04-29 17:51:56');
INSERT INTO `tb_visitlog_page` VALUES (2370, '114.125.87.63', 'news', '2022-04-29 21:18:10');
INSERT INTO `tb_visitlog_page` VALUES (2371, '36.68.218.227', 'news', '2022-04-29 23:21:03');
INSERT INTO `tb_visitlog_page` VALUES (2372, '66.249.64.146', 'news', '2022-04-30 14:09:57');
INSERT INTO `tb_visitlog_page` VALUES (2373, '66.249.66.58', 'open po', '2022-04-30 14:22:10');
INSERT INTO `tb_visitlog_page` VALUES (2374, '66.249.66.58', 'wacana', '2022-04-30 14:22:15');
INSERT INTO `tb_visitlog_page` VALUES (2375, '66.249.64.158', 'wacana', '2022-04-30 14:22:49');
INSERT INTO `tb_visitlog_page` VALUES (2376, '66.249.74.6', 'home', '2022-04-30 14:29:54');
INSERT INTO `tb_visitlog_page` VALUES (2377, '66.249.64.135', 'open po', '2022-04-30 14:38:16');
INSERT INTO `tb_visitlog_page` VALUES (2378, '66.249.64.158', 'news', '2022-04-30 14:40:19');
INSERT INTO `tb_visitlog_page` VALUES (2379, '66.249.64.146', 'home', '2022-04-30 14:48:01');
INSERT INTO `tb_visitlog_page` VALUES (2380, '66.249.64.128', 'open po', '2022-04-30 19:20:51');
INSERT INTO `tb_visitlog_page` VALUES (2381, '66.249.74.20', 'open po', '2022-04-30 20:02:49');
INSERT INTO `tb_visitlog_page` VALUES (2382, '66.249.64.146', 'open po', '2022-05-01 03:00:03');
INSERT INTO `tb_visitlog_page` VALUES (2383, '66.249.64.146', 'wacana', '2022-05-01 03:43:40');
INSERT INTO `tb_visitlog_page` VALUES (2384, '17.121.115.175', 'wacana', '2022-05-01 05:37:39');
INSERT INTO `tb_visitlog_page` VALUES (2385, '17.121.112.136', 'news', '2022-05-01 06:42:35');
INSERT INTO `tb_visitlog_page` VALUES (2386, '66.249.74.18', 'open po', '2022-05-01 11:55:03');
INSERT INTO `tb_visitlog_page` VALUES (2387, '66.249.74.18', 'wacana', '2022-05-01 16:03:24');
INSERT INTO `tb_visitlog_page` VALUES (2388, '66.249.64.158', 'open po', '2022-05-01 17:00:54');
INSERT INTO `tb_visitlog_page` VALUES (2389, '66.249.64.135', 'wacana', '2022-05-01 17:46:21');
INSERT INTO `tb_visitlog_page` VALUES (2390, '207.46.13.5', 'wacana', '2022-05-01 21:01:55');
INSERT INTO `tb_visitlog_page` VALUES (2391, '36.81.126.206', 'home', '2022-05-02 08:16:08');
INSERT INTO `tb_visitlog_page` VALUES (2392, '36.81.126.206', 'order', '2022-05-02 08:16:12');
INSERT INTO `tb_visitlog_page` VALUES (2393, '35.87.44.242', 'home', '2022-05-03 12:44:13');
INSERT INTO `tb_visitlog_page` VALUES (2394, '66.249.64.158', 'order', '2022-05-04 13:07:30');
INSERT INTO `tb_visitlog_page` VALUES (2395, '66.249.64.135', 'order', '2022-05-04 13:30:02');
INSERT INTO `tb_visitlog_page` VALUES (2396, '36.90.179.244', 'home', '2022-05-05 08:10:00');
INSERT INTO `tb_visitlog_page` VALUES (2397, '36.90.179.244', 'wacana', '2022-05-05 08:10:03');
INSERT INTO `tb_visitlog_page` VALUES (2398, '36.90.179.244', 'news', '2022-05-05 08:10:11');
INSERT INTO `tb_visitlog_page` VALUES (2399, '36.81.108.35', 'news', '2022-05-05 08:10:51');
INSERT INTO `tb_visitlog_page` VALUES (2400, '202.67.46.5', 'news', '2022-05-06 14:48:07');
INSERT INTO `tb_visitlog_page` VALUES (2401, '202.67.46.5', 'news', '2022-05-06 16:21:52');
INSERT INTO `tb_visitlog_page` VALUES (2402, '45.121.219.5', 'news', '2022-05-06 17:23:48');
INSERT INTO `tb_visitlog_page` VALUES (2403, '114.4.4.134', 'news', '2022-05-06 17:26:50');
INSERT INTO `tb_visitlog_page` VALUES (2404, '2605:6400:20:248f:2e', 'home', '2022-05-06 22:11:54');
INSERT INTO `tb_visitlog_page` VALUES (2405, '66.249.66.46', 'kebijakan privasi', '2022-05-08 02:26:56');
INSERT INTO `tb_visitlog_page` VALUES (2406, '66.249.66.46', 'keranjang', '2022-05-08 07:09:21');
INSERT INTO `tb_visitlog_page` VALUES (2407, '205.169.39.41', 'home', '2022-05-08 07:35:04');
INSERT INTO `tb_visitlog_page` VALUES (2408, '2a03:2880:ff:18::fac', 'home', '2022-05-08 11:44:37');
INSERT INTO `tb_visitlog_page` VALUES (2409, '2a03:2880:21ff:2::fa', 'home', '2022-05-08 11:44:37');
INSERT INTO `tb_visitlog_page` VALUES (2410, '139.0.161.90', 'home', '2022-05-08 14:02:11');
INSERT INTO `tb_visitlog_page` VALUES (2411, '139.0.161.90', 'order', '2022-05-08 14:02:22');
INSERT INTO `tb_visitlog_page` VALUES (2412, '139.0.161.90', 'open po', '2022-05-08 14:02:25');
INSERT INTO `tb_visitlog_page` VALUES (2413, '118.99.76.173', 'home', '2022-05-08 22:43:50');
INSERT INTO `tb_visitlog_page` VALUES (2414, '66.249.64.152', 'syarat & ketentuan', '2022-05-09 03:02:06');
INSERT INTO `tb_visitlog_page` VALUES (2415, '66.249.64.152', 'syarat & ketentuan', '2022-05-09 03:06:59');
INSERT INTO `tb_visitlog_page` VALUES (2416, '66.249.64.139', 'home', '2022-05-09 04:29:42');
INSERT INTO `tb_visitlog_page` VALUES (2417, '66.249.64.139', 'home', '2022-05-09 04:29:43');
INSERT INTO `tb_visitlog_page` VALUES (2418, '125.164.13.97', 'home', '2022-05-09 08:19:01');
INSERT INTO `tb_visitlog_page` VALUES (2419, '202.6.227.46', 'home', '2022-05-09 08:28:41');
INSERT INTO `tb_visitlog_page` VALUES (2420, '202.6.227.46', 'menu', '2022-05-09 08:28:58');
INSERT INTO `tb_visitlog_page` VALUES (2421, '202.6.227.46', 'open po', '2022-05-09 08:53:06');
INSERT INTO `tb_visitlog_page` VALUES (2422, '202.6.227.46', 'order', '2022-05-09 08:56:26');
INSERT INTO `tb_visitlog_page` VALUES (2423, '202.6.227.46', 'open po', '2022-05-09 08:56:27');
INSERT INTO `tb_visitlog_page` VALUES (2424, '40.77.202.9', 'menu', '2022-05-09 10:38:03');
INSERT INTO `tb_visitlog_page` VALUES (2425, '139.0.161.90', 'open po', '2022-05-09 10:52:05');
INSERT INTO `tb_visitlog_page` VALUES (2426, '202.6.227.46', 'open po', '2022-05-09 10:58:14');
INSERT INTO `tb_visitlog_page` VALUES (2427, '202.6.227.46', 'open po', '2022-05-09 11:27:26');
INSERT INTO `tb_visitlog_page` VALUES (2428, '2a02:26f7:dfcd:4000:', 'open po', '2022-05-09 12:15:58');
INSERT INTO `tb_visitlog_page` VALUES (2429, '2a02:26f7:dfcd:4000:', 'keranjang', '2022-05-09 12:16:01');
INSERT INTO `tb_visitlog_page` VALUES (2430, '2a02:26f7:dfcd:4000:', 'login', '2022-05-09 12:16:10');
INSERT INTO `tb_visitlog_page` VALUES (2431, '2a02:26f7:dfc8:4000:', 'open po', '2022-05-09 12:16:34');
INSERT INTO `tb_visitlog_page` VALUES (2432, '66.249.64.128', 'home', '2022-05-09 15:37:23');
INSERT INTO `tb_visitlog_page` VALUES (2433, '66.249.64.152', 'login', '2022-05-09 20:01:33');
INSERT INTO `tb_visitlog_page` VALUES (2434, '207.46.13.5', 'home', '2022-05-09 23:17:02');
INSERT INTO `tb_visitlog_page` VALUES (2435, '140.0.163.76', 'wacana', '2022-05-09 23:44:55');
INSERT INTO `tb_visitlog_page` VALUES (2436, '140.0.163.76', 'home', '2022-05-09 23:47:26');
INSERT INTO `tb_visitlog_page` VALUES (2437, '66.249.66.46', 'login', '2022-05-10 02:28:40');
INSERT INTO `tb_visitlog_page` VALUES (2438, '66.249.66.46', 'home', '2022-05-10 06:14:10');
INSERT INTO `tb_visitlog_page` VALUES (2439, '66.249.74.18', 'home', '2022-05-10 06:24:07');
INSERT INTO `tb_visitlog_page` VALUES (2440, '66.249.74.6', 'home', '2022-05-10 06:33:18');
INSERT INTO `tb_visitlog_page` VALUES (2441, '2001:448a:5020:634a:', 'home', '2022-05-10 14:02:02');
INSERT INTO `tb_visitlog_page` VALUES (2442, '2001:448a:5020:634a:', 'wacana', '2022-05-10 14:02:48');
INSERT INTO `tb_visitlog_page` VALUES (2443, '2001:448a:5020:634a:', 'news', '2022-05-10 14:02:56');
INSERT INTO `tb_visitlog_page` VALUES (2444, '2001:448a:5020:634a:', 'wacana', '2022-05-10 14:03:18');
INSERT INTO `tb_visitlog_page` VALUES (2445, '2001:448a:5020:634a:', 'wacana', '2022-05-10 14:22:37');
INSERT INTO `tb_visitlog_page` VALUES (2446, '66.249.73.116', 'home', '2022-05-10 15:28:03');
INSERT INTO `tb_visitlog_page` VALUES (2447, '182.1.108.33', 'home', '2022-05-10 21:40:28');
INSERT INTO `tb_visitlog_page` VALUES (2448, '182.1.108.33', 'home', '2022-05-10 21:40:49');
INSERT INTO `tb_visitlog_page` VALUES (2449, '40.77.139.91', 'open po', '2022-05-10 22:19:53');
INSERT INTO `tb_visitlog_page` VALUES (2450, '66.249.64.152', 'news', '2022-05-11 00:35:58');
INSERT INTO `tb_visitlog_page` VALUES (2451, '66.249.66.50', 'home', '2022-05-11 04:26:13');
INSERT INTO `tb_visitlog_page` VALUES (2452, '66.249.66.56', 'news', '2022-05-11 04:28:18');
INSERT INTO `tb_visitlog_page` VALUES (2453, '125.164.6.168', 'home', '2022-05-11 08:29:43');
INSERT INTO `tb_visitlog_page` VALUES (2454, '125.164.6.168', 'wacana', '2022-05-11 08:30:06');
INSERT INTO `tb_visitlog_page` VALUES (2455, '125.164.1.82', 'home', '2022-05-11 09:01:33');
INSERT INTO `tb_visitlog_page` VALUES (2456, '125.164.1.82', 'wacana', '2022-05-11 09:01:38');
INSERT INTO `tb_visitlog_page` VALUES (2457, '125.164.1.82', 'news', '2022-05-11 09:01:52');
INSERT INTO `tb_visitlog_page` VALUES (2458, '125.164.6.168', 'wacana', '2022-05-11 13:35:29');
INSERT INTO `tb_visitlog_page` VALUES (2459, '125.164.6.168', 'news', '2022-05-11 13:35:39');
INSERT INTO `tb_visitlog_page` VALUES (2460, '125.164.1.82', 'menu', '2022-05-11 14:05:19');
INSERT INTO `tb_visitlog_page` VALUES (2461, '125.164.1.82', 'wacana', '2022-05-11 14:05:23');
INSERT INTO `tb_visitlog_page` VALUES (2462, '125.164.6.168', 'home', '2022-05-11 14:05:46');
INSERT INTO `tb_visitlog_page` VALUES (2463, '125.164.6.168', 'menu', '2022-05-11 14:05:50');
INSERT INTO `tb_visitlog_page` VALUES (2464, '125.164.6.168', 'wacana', '2022-05-11 14:06:20');
INSERT INTO `tb_visitlog_page` VALUES (2465, '125.164.1.82', 'menu', '2022-05-11 14:07:42');
INSERT INTO `tb_visitlog_page` VALUES (2466, '125.164.1.82', 'wacana', '2022-05-11 14:08:03');
INSERT INTO `tb_visitlog_page` VALUES (2467, '125.164.1.82', 'menu', '2022-05-11 14:09:35');
INSERT INTO `tb_visitlog_page` VALUES (2468, '125.164.6.168', 'wacana', '2022-05-11 15:17:32');
INSERT INTO `tb_visitlog_page` VALUES (2469, '125.164.6.168', 'menu', '2022-05-11 17:06:27');
INSERT INTO `tb_visitlog_page` VALUES (2470, '5.228.154.164', 'home', '2022-05-11 17:58:25');
INSERT INTO `tb_visitlog_page` VALUES (2471, '180.247.131.168', 'home', '2022-05-12 08:32:35');
INSERT INTO `tb_visitlog_page` VALUES (2472, '180.247.131.168', 'wacana', '2022-05-12 08:32:37');
INSERT INTO `tb_visitlog_page` VALUES (2473, '125.164.10.123', 'menu', '2022-05-12 08:48:16');
INSERT INTO `tb_visitlog_page` VALUES (2474, '125.164.10.123', 'home', '2022-05-12 09:52:16');
INSERT INTO `tb_visitlog_page` VALUES (2475, '125.164.10.123', 'menu', '2022-05-12 09:52:26');
INSERT INTO `tb_visitlog_page` VALUES (2476, '125.164.10.123', 'order', '2022-05-12 09:52:42');
INSERT INTO `tb_visitlog_page` VALUES (2477, '125.164.10.123', 'open po', '2022-05-12 09:52:46');
INSERT INTO `tb_visitlog_page` VALUES (2478, '125.164.10.123', 'menu', '2022-05-12 09:52:51');
INSERT INTO `tb_visitlog_page` VALUES (2479, '125.164.10.123', 'menu', '2022-05-12 10:44:08');
INSERT INTO `tb_visitlog_page` VALUES (2480, '202.6.227.46', 'home', '2022-05-12 14:23:29');
INSERT INTO `tb_visitlog_page` VALUES (2481, '202.6.227.46', 'wacana', '2022-05-12 14:23:31');
INSERT INTO `tb_visitlog_page` VALUES (2482, '202.6.227.46', 'news', '2022-05-12 14:23:33');
INSERT INTO `tb_visitlog_page` VALUES (2483, '180.247.131.168', 'news', '2022-05-12 14:24:03');
INSERT INTO `tb_visitlog_page` VALUES (2484, '202.6.227.46', 'news', '2022-05-12 14:58:30');
INSERT INTO `tb_visitlog_page` VALUES (2485, '202.6.227.46', 'news', '2022-05-12 15:57:10');
INSERT INTO `tb_visitlog_page` VALUES (2486, '202.6.227.46', 'home', '2022-05-12 17:10:31');
INSERT INTO `tb_visitlog_page` VALUES (2487, '202.6.227.46', 'wacana', '2022-05-12 17:10:32');
INSERT INTO `tb_visitlog_page` VALUES (2488, '202.6.227.46', 'news', '2022-05-12 17:16:46');
INSERT INTO `tb_visitlog_page` VALUES (2489, '66.249.66.56', 'keranjang', '2022-05-12 21:56:30');
INSERT INTO `tb_visitlog_page` VALUES (2490, '2001:448a:5020:4b61:', 'home', '2022-05-13 08:44:11');
INSERT INTO `tb_visitlog_page` VALUES (2491, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 08:44:13');
INSERT INTO `tb_visitlog_page` VALUES (2492, '2001:448a:5020:4b61:', 'home', '2022-05-13 08:48:55');
INSERT INTO `tb_visitlog_page` VALUES (2493, '2001:448a:5020:4b61:', 'menu', '2022-05-13 08:48:56');
INSERT INTO `tb_visitlog_page` VALUES (2494, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:07:39');
INSERT INTO `tb_visitlog_page` VALUES (2495, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:07:43');
INSERT INTO `tb_visitlog_page` VALUES (2496, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:08:06');
INSERT INTO `tb_visitlog_page` VALUES (2497, '202.6.227.46', 'wacana', '2022-05-13 09:10:13');
INSERT INTO `tb_visitlog_page` VALUES (2498, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:17:27');
INSERT INTO `tb_visitlog_page` VALUES (2499, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:17:29');
INSERT INTO `tb_visitlog_page` VALUES (2500, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:28:09');
INSERT INTO `tb_visitlog_page` VALUES (2501, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:28:09');
INSERT INTO `tb_visitlog_page` VALUES (2502, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:28:12');
INSERT INTO `tb_visitlog_page` VALUES (2503, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:28:15');
INSERT INTO `tb_visitlog_page` VALUES (2504, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:28:17');
INSERT INTO `tb_visitlog_page` VALUES (2505, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:28:35');
INSERT INTO `tb_visitlog_page` VALUES (2506, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:34:49');
INSERT INTO `tb_visitlog_page` VALUES (2507, '2001:448a:5020:4b61:', 'news', '2022-05-13 09:34:53');
INSERT INTO `tb_visitlog_page` VALUES (2508, '202.6.227.46', 'wacana', '2022-05-13 09:36:02');
INSERT INTO `tb_visitlog_page` VALUES (2509, '202.6.227.46', 'news', '2022-05-13 09:36:24');
INSERT INTO `tb_visitlog_page` VALUES (2510, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:40:30');
INSERT INTO `tb_visitlog_page` VALUES (2511, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:42:02');
INSERT INTO `tb_visitlog_page` VALUES (2512, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 09:42:28');
INSERT INTO `tb_visitlog_page` VALUES (2513, '2001:448a:5020:4b61:', 'news', '2022-05-13 10:08:07');
INSERT INTO `tb_visitlog_page` VALUES (2514, '2001:448a:5020:4b61:', 'news', '2022-05-13 10:08:30');
INSERT INTO `tb_visitlog_page` VALUES (2515, '2001:448a:5020:4b61:', 'home', '2022-05-13 10:11:05');
INSERT INTO `tb_visitlog_page` VALUES (2516, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 10:11:06');
INSERT INTO `tb_visitlog_page` VALUES (2517, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 10:13:18');
INSERT INTO `tb_visitlog_page` VALUES (2518, '66.249.66.48', 'keranjang', '2022-05-13 11:00:12');
INSERT INTO `tb_visitlog_page` VALUES (2519, '66.249.66.52', 'keranjang', '2022-05-13 11:23:49');
INSERT INTO `tb_visitlog_page` VALUES (2520, '66.249.66.60', 'home', '2022-05-13 14:40:04');
INSERT INTO `tb_visitlog_page` VALUES (2521, '66.249.66.60', 'home', '2022-05-13 14:40:05');
INSERT INTO `tb_visitlog_page` VALUES (2522, '2001:448a:5020:4b61:', 'news', '2022-05-13 16:58:10');
INSERT INTO `tb_visitlog_page` VALUES (2523, '2001:448a:5020:4b61:', 'news', '2022-05-13 16:58:25');
INSERT INTO `tb_visitlog_page` VALUES (2524, '2001:448a:5020:4b61:', 'news', '2022-05-13 16:58:32');
INSERT INTO `tb_visitlog_page` VALUES (2525, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 16:58:34');
INSERT INTO `tb_visitlog_page` VALUES (2526, '202.6.227.46', 'news', '2022-05-13 16:59:58');
INSERT INTO `tb_visitlog_page` VALUES (2527, '208.84.221.164', 'news', '2022-05-13 17:09:02');
INSERT INTO `tb_visitlog_page` VALUES (2528, '2001:448a:5020:4b61:', 'open po', '2022-05-13 17:17:51');
INSERT INTO `tb_visitlog_page` VALUES (2529, '114.4.4.199', 'news', '2022-05-13 17:17:55');
INSERT INTO `tb_visitlog_page` VALUES (2530, '2001:448a:5020:4b61:', 'home', '2022-05-13 18:11:41');
INSERT INTO `tb_visitlog_page` VALUES (2531, '2001:448a:5020:4b61:', 'menu', '2022-05-13 18:11:43');
INSERT INTO `tb_visitlog_page` VALUES (2532, '2001:448a:5020:4b61:', 'wacana', '2022-05-13 18:11:45');
INSERT INTO `tb_visitlog_page` VALUES (2533, '2001:448a:5020:4b61:', 'news', '2022-05-13 18:11:47');
INSERT INTO `tb_visitlog_page` VALUES (2534, '65.154.226.171', 'home', '2022-05-15 07:17:41');
INSERT INTO `tb_visitlog_page` VALUES (2535, '17.121.113.52', 'order', '2022-05-15 14:44:04');
INSERT INTO `tb_visitlog_page` VALUES (2536, '66.249.74.18', 'keranjang', '2022-05-15 18:59:57');
INSERT INTO `tb_visitlog_page` VALUES (2537, '66.249.64.128', 'keranjang', '2022-05-16 09:57:09');
INSERT INTO `tb_visitlog_page` VALUES (2538, '118.99.76.176', 'open po', '2022-05-16 10:06:30');
INSERT INTO `tb_visitlog_page` VALUES (2539, '114.4.4.201', 'news', '2022-05-16 11:04:53');
INSERT INTO `tb_visitlog_page` VALUES (2540, '182.1.123.176', 'home', '2022-05-16 12:08:05');
INSERT INTO `tb_visitlog_page` VALUES (2541, '182.1.123.176', 'open po', '2022-05-16 12:08:12');
INSERT INTO `tb_visitlog_page` VALUES (2542, '182.1.83.124', 'home', '2022-05-16 14:24:21');
INSERT INTO `tb_visitlog_page` VALUES (2543, '182.1.83.124', 'tentang', '2022-05-16 14:24:57');
INSERT INTO `tb_visitlog_page` VALUES (2544, '182.1.83.124', 'kontak', '2022-05-16 14:25:11');
INSERT INTO `tb_visitlog_page` VALUES (2545, '182.1.83.124', 'galeri', '2022-05-16 14:25:45');
INSERT INTO `tb_visitlog_page` VALUES (2546, '180.254.45.43', 'open po', '2022-05-16 23:14:47');
INSERT INTO `tb_visitlog_page` VALUES (2547, '66.249.66.58', 'keranjang', '2022-05-17 00:07:36');
INSERT INTO `tb_visitlog_page` VALUES (2548, '149.56.150.185', 'home', '2022-05-17 02:28:00');
INSERT INTO `tb_visitlog_page` VALUES (2549, '125.164.8.97', 'wacana', '2022-05-17 08:19:36');
INSERT INTO `tb_visitlog_page` VALUES (2550, '202.6.227.46', 'home', '2022-05-17 09:30:05');
INSERT INTO `tb_visitlog_page` VALUES (2551, '202.6.227.46', 'wacana', '2022-05-17 09:30:05');
INSERT INTO `tb_visitlog_page` VALUES (2552, '202.6.227.46', 'news', '2022-05-17 09:30:08');
INSERT INTO `tb_visitlog_page` VALUES (2553, '66.249.66.33', 'open po', '2022-05-17 10:35:42');
INSERT INTO `tb_visitlog_page` VALUES (2554, '66.249.66.46', 'open po', '2022-05-17 10:35:42');
INSERT INTO `tb_visitlog_page` VALUES (2555, '66.249.66.48', 'keranjang', '2022-05-17 10:37:26');
INSERT INTO `tb_visitlog_page` VALUES (2556, '125.164.8.97', 'news', '2022-05-17 11:35:16');
INSERT INTO `tb_visitlog_page` VALUES (2557, '125.164.8.97', 'news', '2022-05-17 11:36:32');
INSERT INTO `tb_visitlog_page` VALUES (2558, '202.6.227.46', 'home', '2022-05-17 11:36:35');
INSERT INTO `tb_visitlog_page` VALUES (2559, '202.6.227.46', 'wacana', '2022-05-17 11:36:37');
INSERT INTO `tb_visitlog_page` VALUES (2560, '202.6.227.46', 'wacana', '2022-05-17 11:37:39');
INSERT INTO `tb_visitlog_page` VALUES (2561, '202.6.227.46', 'news', '2022-05-17 11:37:42');
INSERT INTO `tb_visitlog_page` VALUES (2562, '125.164.8.97', 'news', '2022-05-17 12:10:01');
INSERT INTO `tb_visitlog_page` VALUES (2563, '202.6.227.46', 'news', '2022-05-17 12:11:38');
INSERT INTO `tb_visitlog_page` VALUES (2564, '202.6.227.46', 'news', '2022-05-17 12:11:57');
INSERT INTO `tb_visitlog_page` VALUES (2565, '202.6.227.46', 'wacana', '2022-05-17 12:11:59');
INSERT INTO `tb_visitlog_page` VALUES (2566, '180.253.160.254', 'home', '2022-05-17 14:34:17');
INSERT INTO `tb_visitlog_page` VALUES (2567, '125.164.0.137', 'menu', '2022-05-18 14:53:09');
INSERT INTO `tb_visitlog_page` VALUES (2568, '125.164.0.137', 'home', '2022-05-18 16:39:07');
INSERT INTO `tb_visitlog_page` VALUES (2569, '125.164.6.111', 'home', '2022-05-18 16:43:58');
INSERT INTO `tb_visitlog_page` VALUES (2570, '207.46.13.187', 'open po', '2022-05-19 10:30:02');
INSERT INTO `tb_visitlog_page` VALUES (2571, '125.164.52.197', 'home', '2022-05-19 11:00:01');
INSERT INTO `tb_visitlog_page` VALUES (2572, '36.84.43.215', 'home', '2022-05-19 11:14:28');
INSERT INTO `tb_visitlog_page` VALUES (2573, '36.84.43.215', 'menu', '2022-05-19 11:14:31');
INSERT INTO `tb_visitlog_page` VALUES (2574, '202.6.227.46', 'wacana', '2022-05-19 11:40:25');
INSERT INTO `tb_visitlog_page` VALUES (2575, '202.6.227.46', 'news', '2022-05-19 11:40:30');
INSERT INTO `tb_visitlog_page` VALUES (2576, '202.6.227.46', 'news', '2022-05-19 11:40:35');
INSERT INTO `tb_visitlog_page` VALUES (2577, '202.6.227.46', 'news', '2022-05-19 12:13:42');
INSERT INTO `tb_visitlog_page` VALUES (2578, '202.6.227.46', 'wacana', '2022-05-19 12:13:54');
INSERT INTO `tb_visitlog_page` VALUES (2579, '202.6.227.46', 'wacana', '2022-05-19 13:29:47');
INSERT INTO `tb_visitlog_page` VALUES (2580, '125.164.52.197', 'news', '2022-05-19 14:01:03');
INSERT INTO `tb_visitlog_page` VALUES (2581, '125.164.52.197', 'news', '2022-05-19 14:01:14');
INSERT INTO `tb_visitlog_page` VALUES (2582, '202.6.227.46', 'home', '2022-05-19 14:09:58');
INSERT INTO `tb_visitlog_page` VALUES (2583, '202.6.227.46', 'wacana', '2022-05-19 14:10:00');
INSERT INTO `tb_visitlog_page` VALUES (2584, '202.6.227.46', 'news', '2022-05-19 14:10:02');
INSERT INTO `tb_visitlog_page` VALUES (2585, '125.164.52.197', 'news', '2022-05-19 14:10:52');
INSERT INTO `tb_visitlog_page` VALUES (2586, '125.164.52.197', 'news', '2022-05-19 14:10:56');
INSERT INTO `tb_visitlog_page` VALUES (2587, '202.6.227.46', 'wacana', '2022-05-19 14:11:15');
INSERT INTO `tb_visitlog_page` VALUES (2588, '125.164.52.197', 'news', '2022-05-19 14:11:15');
INSERT INTO `tb_visitlog_page` VALUES (2589, '202.6.227.46', 'news', '2022-05-19 14:11:19');
INSERT INTO `tb_visitlog_page` VALUES (2590, '202.6.227.46', 'news', '2022-05-19 14:11:52');
INSERT INTO `tb_visitlog_page` VALUES (2591, '202.6.227.46', 'wacana', '2022-05-19 14:11:57');
INSERT INTO `tb_visitlog_page` VALUES (2592, '202.6.227.46', 'news', '2022-05-19 14:12:00');
INSERT INTO `tb_visitlog_page` VALUES (2593, '125.164.52.197', 'order', '2022-05-19 14:12:12');
INSERT INTO `tb_visitlog_page` VALUES (2594, '125.164.52.197', 'open po', '2022-05-19 14:12:13');
INSERT INTO `tb_visitlog_page` VALUES (2595, '125.164.52.197', 'wacana', '2022-05-19 14:12:33');
INSERT INTO `tb_visitlog_page` VALUES (2596, '202.6.227.46', 'news', '2022-05-19 14:12:35');
INSERT INTO `tb_visitlog_page` VALUES (2597, '125.164.52.197', 'news', '2022-05-19 14:12:36');
INSERT INTO `tb_visitlog_page` VALUES (2598, '66.249.66.48', 'home', '2022-05-19 14:41:24');
INSERT INTO `tb_visitlog_page` VALUES (2599, '36.84.43.215', 'home', '2022-05-19 14:57:09');
INSERT INTO `tb_visitlog_page` VALUES (2600, '36.84.43.215', 'news', '2022-05-19 14:57:18');
INSERT INTO `tb_visitlog_page` VALUES (2601, '36.84.43.215', 'news', '2022-05-19 14:57:37');
INSERT INTO `tb_visitlog_page` VALUES (2602, '125.164.52.197', 'wacana', '2022-05-19 14:57:44');
INSERT INTO `tb_visitlog_page` VALUES (2603, '36.84.43.215', 'news', '2022-05-19 14:58:12');
INSERT INTO `tb_visitlog_page` VALUES (2604, '125.164.52.197', 'home', '2022-05-19 14:58:31');
INSERT INTO `tb_visitlog_page` VALUES (2605, '36.84.43.215', 'news', '2022-05-19 14:59:10');
INSERT INTO `tb_visitlog_page` VALUES (2606, '125.164.52.197', 'home', '2022-05-19 14:59:16');
INSERT INTO `tb_visitlog_page` VALUES (2607, '125.164.52.197', 'news', '2022-05-19 14:59:23');
INSERT INTO `tb_visitlog_page` VALUES (2608, '125.164.52.197', 'galeri', '2022-05-19 14:59:26');
INSERT INTO `tb_visitlog_page` VALUES (2609, '125.164.52.197', 'news', '2022-05-19 14:59:29');
INSERT INTO `tb_visitlog_page` VALUES (2610, '125.164.52.197', 'news', '2022-05-19 14:59:33');
INSERT INTO `tb_visitlog_page` VALUES (2611, '36.84.43.215', 'tentang', '2022-05-19 14:59:52');
INSERT INTO `tb_visitlog_page` VALUES (2612, '36.84.43.215', 'news', '2022-05-19 14:59:56');
INSERT INTO `tb_visitlog_page` VALUES (2613, '202.6.227.46', 'wacana', '2022-05-19 15:00:20');
INSERT INTO `tb_visitlog_page` VALUES (2614, '36.84.43.215', 'home', '2022-05-19 15:00:28');
INSERT INTO `tb_visitlog_page` VALUES (2615, '36.84.43.215', 'wacana', '2022-05-19 15:00:59');
INSERT INTO `tb_visitlog_page` VALUES (2616, '36.84.43.215', 'news', '2022-05-19 15:02:01');
INSERT INTO `tb_visitlog_page` VALUES (2617, '36.84.43.215', 'news', '2022-05-19 15:02:03');
INSERT INTO `tb_visitlog_page` VALUES (2618, '36.84.43.215', 'news', '2022-05-19 15:02:06');
INSERT INTO `tb_visitlog_page` VALUES (2619, '36.84.43.215', 'galeri', '2022-05-19 15:02:22');
INSERT INTO `tb_visitlog_page` VALUES (2620, '36.84.43.215', 'order', '2022-05-19 15:02:29');
INSERT INTO `tb_visitlog_page` VALUES (2621, '36.84.43.215', 'keranjang', '2022-05-19 15:02:33');
INSERT INTO `tb_visitlog_page` VALUES (2622, '36.84.43.215', 'kontak', '2022-05-19 15:02:51');
INSERT INTO `tb_visitlog_page` VALUES (2623, '202.6.227.46', 'home', '2022-05-19 15:03:32');
INSERT INTO `tb_visitlog_page` VALUES (2624, '182.1.64.20', 'wacana', '2022-05-19 15:04:41');
INSERT INTO `tb_visitlog_page` VALUES (2625, '202.6.227.46', 'home', '2022-05-19 15:04:46');
INSERT INTO `tb_visitlog_page` VALUES (2626, '202.6.227.46', 'wacana', '2022-05-19 15:04:50');
INSERT INTO `tb_visitlog_page` VALUES (2627, '125.164.52.197', 'home', '2022-05-19 15:05:10');
INSERT INTO `tb_visitlog_page` VALUES (2628, '125.164.52.197', 'wacana', '2022-05-19 15:05:14');
INSERT INTO `tb_visitlog_page` VALUES (2629, '36.84.43.215', 'news', '2022-05-19 15:27:21');
INSERT INTO `tb_visitlog_page` VALUES (2630, '202.6.227.46', 'home', '2022-05-19 15:27:55');
INSERT INTO `tb_visitlog_page` VALUES (2631, '202.6.227.46', 'wacana', '2022-05-19 15:27:58');
INSERT INTO `tb_visitlog_page` VALUES (2632, '202.6.227.46', 'wacana', '2022-05-19 15:28:13');
INSERT INTO `tb_visitlog_page` VALUES (2633, '202.6.227.46', 'wacana', '2022-05-19 15:28:23');
INSERT INTO `tb_visitlog_page` VALUES (2634, '202.6.227.46', 'wacana', '2022-05-19 15:28:52');
INSERT INTO `tb_visitlog_page` VALUES (2635, '36.84.43.215', 'news', '2022-05-19 15:29:08');
INSERT INTO `tb_visitlog_page` VALUES (2636, '36.84.43.215', 'wacana', '2022-05-19 15:29:25');
INSERT INTO `tb_visitlog_page` VALUES (2637, '36.84.43.215', 'wacana', '2022-05-19 15:29:28');
INSERT INTO `tb_visitlog_page` VALUES (2638, '125.164.52.197', 'open po', '2022-05-19 15:31:44');
INSERT INTO `tb_visitlog_page` VALUES (2639, '140.213.56.27', 'wacana', '2022-05-19 15:34:40');
INSERT INTO `tb_visitlog_page` VALUES (2640, '140.213.56.27', 'news', '2022-05-19 15:34:54');
INSERT INTO `tb_visitlog_page` VALUES (2641, '140.213.56.27', 'open po', '2022-05-19 15:35:05');
INSERT INTO `tb_visitlog_page` VALUES (2642, '140.213.56.27', 'wacana', '2022-05-19 15:36:13');
INSERT INTO `tb_visitlog_page` VALUES (2643, '140.213.56.27', 'news', '2022-05-19 15:36:39');
INSERT INTO `tb_visitlog_page` VALUES (2644, '140.213.56.27', 'open po', '2022-05-19 15:36:48');
INSERT INTO `tb_visitlog_page` VALUES (2645, '125.164.52.197', 'wacana', '2022-05-19 16:27:05');
INSERT INTO `tb_visitlog_page` VALUES (2646, '125.164.52.197', 'home', '2022-05-19 16:31:44');
INSERT INTO `tb_visitlog_page` VALUES (2647, '125.164.52.197', 'wacana', '2022-05-19 16:31:46');
INSERT INTO `tb_visitlog_page` VALUES (2648, '112.215.173.243', 'wacana', '2022-05-19 16:56:53');
INSERT INTO `tb_visitlog_page` VALUES (2649, '202.6.227.46', 'home', '2022-05-19 17:21:55');
INSERT INTO `tb_visitlog_page` VALUES (2650, '202.6.227.46', 'wacana', '2022-05-19 17:21:56');
INSERT INTO `tb_visitlog_page` VALUES (2651, '202.6.227.46', 'news', '2022-05-19 17:21:59');
INSERT INTO `tb_visitlog_page` VALUES (2652, '66.249.66.58', 'home', '2022-05-19 17:33:14');
INSERT INTO `tb_visitlog_page` VALUES (2653, '66.249.66.48', 'kebijakan privasi', '2022-05-20 05:16:36');
INSERT INTO `tb_visitlog_page` VALUES (2654, '2001:448a:5020:e766:', 'home', '2022-05-20 08:08:37');
INSERT INTO `tb_visitlog_page` VALUES (2655, '2001:448a:5020:e766:', 'wacana', '2022-05-20 10:24:23');
INSERT INTO `tb_visitlog_page` VALUES (2656, '66.249.66.56', 'home', '2022-05-20 11:33:26');
INSERT INTO `tb_visitlog_page` VALUES (2657, '66.249.74.24', 'kebijakan privasi', '2022-05-20 12:28:38');
INSERT INTO `tb_visitlog_page` VALUES (2658, '66.249.66.52', 'kebijakan privasi', '2022-05-20 12:31:14');
INSERT INTO `tb_visitlog_page` VALUES (2659, '2001:448a:5020:e766:', 'news', '2022-05-20 12:44:36');
INSERT INTO `tb_visitlog_page` VALUES (2660, '2001:448a:5020:e766:', 'wacana', '2022-05-20 12:44:46');
INSERT INTO `tb_visitlog_page` VALUES (2661, '2001:448a:5020:e766:', 'news', '2022-05-20 12:44:50');
INSERT INTO `tb_visitlog_page` VALUES (2662, '2001:448a:5020:e766:', 'home', '2022-05-20 12:54:58');
INSERT INTO `tb_visitlog_page` VALUES (2663, '2001:448a:5020:e766:', 'order', '2022-05-20 12:55:01');
INSERT INTO `tb_visitlog_page` VALUES (2664, '2001:448a:5020:e766:', 'open po', '2022-05-20 12:55:02');
INSERT INTO `tb_visitlog_page` VALUES (2665, '2001:448a:5020:e766:', 'wacana', '2022-05-20 13:13:21');
INSERT INTO `tb_visitlog_page` VALUES (2666, '2001:448a:5020:e766:', 'news', '2022-05-20 13:13:23');
INSERT INTO `tb_visitlog_page` VALUES (2667, '2001:448a:5020:e766:', 'home', '2022-05-20 13:17:51');
INSERT INTO `tb_visitlog_page` VALUES (2668, '2001:448a:5020:e766:', 'wacana', '2022-05-20 13:17:53');
INSERT INTO `tb_visitlog_page` VALUES (2669, '2001:448a:5020:e766:', 'news', '2022-05-20 13:17:56');
INSERT INTO `tb_visitlog_page` VALUES (2670, '2001:448a:5020:e766:', 'news', '2022-05-20 13:18:34');
INSERT INTO `tb_visitlog_page` VALUES (2671, '2001:448a:5020:e766:', 'menu', '2022-05-20 13:24:49');
INSERT INTO `tb_visitlog_page` VALUES (2672, '2001:448a:5020:e766:', 'home', '2022-05-20 14:59:30');
INSERT INTO `tb_visitlog_page` VALUES (2673, '2001:448a:5020:e766:', 'wacana', '2022-05-20 14:59:30');
INSERT INTO `tb_visitlog_page` VALUES (2674, '2001:448a:5020:e766:', 'news', '2022-05-20 14:59:51');
INSERT INTO `tb_visitlog_page` VALUES (2675, '2001:448a:5020:e766:', 'news', '2022-05-20 15:03:44');
INSERT INTO `tb_visitlog_page` VALUES (2676, '2001:448a:5020:e766:', 'news', '2022-05-20 15:11:44');
INSERT INTO `tb_visitlog_page` VALUES (2677, '125.164.7.246', 'home', '2022-05-20 15:43:30');
INSERT INTO `tb_visitlog_page` VALUES (2678, '125.164.7.246', 'wacana', '2022-05-20 15:43:36');
INSERT INTO `tb_visitlog_page` VALUES (2679, '2001:448a:5020:e766:', 'news', '2022-05-20 15:50:47');
INSERT INTO `tb_visitlog_page` VALUES (2680, '2001:448a:5020:e766:', 'news', '2022-05-20 16:02:39');
INSERT INTO `tb_visitlog_page` VALUES (2681, '2001:448a:5020:e766:', 'menu', '2022-05-20 16:02:40');
INSERT INTO `tb_visitlog_page` VALUES (2682, '140.213.48.205', 'news', '2022-05-20 16:08:49');
INSERT INTO `tb_visitlog_page` VALUES (2683, '2001:448a:5020:e766:', 'news', '2022-05-20 16:39:15');
INSERT INTO `tb_visitlog_page` VALUES (2684, '66.249.66.33', 'news', '2022-05-20 21:25:30');
INSERT INTO `tb_visitlog_page` VALUES (2685, '66.249.66.56', 'kontak', '2022-05-21 00:37:38');
INSERT INTO `tb_visitlog_page` VALUES (2686, '17.121.114.31', 'order', '2022-05-21 01:50:03');
INSERT INTO `tb_visitlog_page` VALUES (2687, '66.249.66.56', 'keranjang', '2022-05-21 02:13:00');
INSERT INTO `tb_visitlog_page` VALUES (2688, '17.121.112.6', 'galeri', '2022-05-21 02:19:42');
INSERT INTO `tb_visitlog_page` VALUES (2689, '66.249.66.52', 'wacana', '2022-05-21 07:47:37');
INSERT INTO `tb_visitlog_page` VALUES (2690, '66.249.66.60', 'wacana', '2022-05-21 08:24:12');
INSERT INTO `tb_visitlog_page` VALUES (2691, '45.121.219.5', 'news', '2022-05-21 17:03:06');
INSERT INTO `tb_visitlog_page` VALUES (2692, '114.125.78.232', 'news', '2022-05-21 17:24:12');
INSERT INTO `tb_visitlog_page` VALUES (2693, '66.249.66.60', 'menu', '2022-05-22 00:18:47');
INSERT INTO `tb_visitlog_page` VALUES (2694, '66.249.66.33', 'kontak', '2022-05-22 07:09:00');
INSERT INTO `tb_visitlog_page` VALUES (2695, '65.154.226.171', 'home', '2022-05-22 07:26:15');
INSERT INTO `tb_visitlog_page` VALUES (2696, '66.249.66.52', 'menu', '2022-05-22 09:24:27');
INSERT INTO `tb_visitlog_page` VALUES (2697, '125.160.185.119', 'home', '2022-05-22 17:26:39');
INSERT INTO `tb_visitlog_page` VALUES (2698, '66.249.66.52', 'home', '2022-05-22 20:14:33');
INSERT INTO `tb_visitlog_page` VALUES (2699, '66.249.66.56', 'menu', '2022-05-22 23:56:33');
INSERT INTO `tb_visitlog_page` VALUES (2700, '66.249.66.60', 'syarat & ketentuan', '2022-05-23 00:00:11');
INSERT INTO `tb_visitlog_page` VALUES (2701, '66.249.66.33', 'home', '2022-05-23 03:55:57');
INSERT INTO `tb_visitlog_page` VALUES (2702, '182.253.79.178', 'home', '2022-05-23 08:12:49');
INSERT INTO `tb_visitlog_page` VALUES (2703, '182.253.79.178', 'menu', '2022-05-23 08:13:05');
INSERT INTO `tb_visitlog_page` VALUES (2704, '182.253.79.178', 'kontak', '2022-05-23 08:14:05');
INSERT INTO `tb_visitlog_page` VALUES (2705, '202.6.227.46', 'open po', '2022-05-23 09:02:39');
INSERT INTO `tb_visitlog_page` VALUES (2706, '202.6.227.46', 'open po', '2022-05-23 09:44:10');
INSERT INTO `tb_visitlog_page` VALUES (2707, '180.253.167.79', 'home', '2022-05-23 10:05:05');
INSERT INTO `tb_visitlog_page` VALUES (2708, '180.253.167.79', 'open po', '2022-05-23 10:05:09');
INSERT INTO `tb_visitlog_page` VALUES (2709, '180.253.54.211', 'open po', '2022-05-23 11:12:15');
INSERT INTO `tb_visitlog_page` VALUES (2710, '180.253.54.211', 'keranjang', '2022-05-23 11:12:28');
INSERT INTO `tb_visitlog_page` VALUES (2711, '180.253.54.211', 'login', '2022-05-23 11:12:52');
INSERT INTO `tb_visitlog_page` VALUES (2712, '180.253.54.211', 'register', '2022-05-23 11:13:16');
INSERT INTO `tb_visitlog_page` VALUES (2713, '180.253.54.211', 'login', '2022-05-23 11:14:22');
INSERT INTO `tb_visitlog_page` VALUES (2714, '180.253.54.211', 'keranjang', '2022-05-23 11:14:48');
INSERT INTO `tb_visitlog_page` VALUES (2715, '2001:448a:5020:5bbf:', 'home', '2022-05-23 11:29:25');
INSERT INTO `tb_visitlog_page` VALUES (2716, '2001:448a:5020:5bbf:', 'keranjang', '2022-05-23 11:29:40');
INSERT INTO `tb_visitlog_page` VALUES (2717, '2001:448a:5020:5bbf:', 'menu', '2022-05-23 11:29:43');
INSERT INTO `tb_visitlog_page` VALUES (2718, '2001:448a:5020:5bbf:', 'order', '2022-05-23 11:30:02');
INSERT INTO `tb_visitlog_page` VALUES (2719, '2001:448a:5020:5bbf:', 'order', '2022-05-23 11:30:12');
INSERT INTO `tb_visitlog_page` VALUES (2720, '2001:448a:5020:5bbf:', 'open po', '2022-05-23 11:30:17');
INSERT INTO `tb_visitlog_page` VALUES (2721, '2001:448a:5020:5bbf:', 'keranjang', '2022-05-23 11:30:21');
INSERT INTO `tb_visitlog_page` VALUES (2722, '2001:448a:5020:5bbf:', 'login', '2022-05-23 11:30:30');
INSERT INTO `tb_visitlog_page` VALUES (2723, '2001:448a:5020:5bbf:', 'register', '2022-05-23 11:30:40');
INSERT INTO `tb_visitlog_page` VALUES (2724, '2001:448a:5020:5bbf:', 'login', '2022-05-23 11:31:41');
INSERT INTO `tb_visitlog_page` VALUES (2725, '2001:448a:5020:5bbf:', 'home', '2022-05-23 11:31:49');
INSERT INTO `tb_visitlog_page` VALUES (2726, '2001:448a:5020:5bbf:', 'wacana', '2022-05-23 11:31:54');
INSERT INTO `tb_visitlog_page` VALUES (2727, '2001:448a:5020:5bbf:', 'order', '2022-05-23 11:31:58');
INSERT INTO `tb_visitlog_page` VALUES (2728, '2001:448a:5020:5bbf:', 'open po', '2022-05-23 11:32:00');
INSERT INTO `tb_visitlog_page` VALUES (2729, '2001:448a:5020:5bbf:', 'keranjang', '2022-05-23 11:32:03');
INSERT INTO `tb_visitlog_page` VALUES (2730, '180.253.49.124', 'open po', '2022-05-23 13:34:37');
INSERT INTO `tb_visitlog_page` VALUES (2731, '180.253.49.124', 'keranjang', '2022-05-23 13:34:41');
INSERT INTO `tb_visitlog_page` VALUES (2732, '180.253.49.124', 'login', '2022-05-23 13:34:47');
INSERT INTO `tb_visitlog_page` VALUES (2733, '180.253.49.124', 'keranjang', '2022-05-23 13:35:02');
INSERT INTO `tb_visitlog_page` VALUES (2734, '180.253.49.124', 'open po', '2022-05-23 14:00:32');
INSERT INTO `tb_visitlog_page` VALUES (2735, '180.253.49.124', 'keranjang', '2022-05-23 14:00:36');
INSERT INTO `tb_visitlog_page` VALUES (2736, '2001:448a:5020:85b2:', 'open po', '2022-05-23 14:04:25');
INSERT INTO `tb_visitlog_page` VALUES (2737, '2001:448a:5020:85b2:', 'keranjang', '2022-05-23 14:04:32');
INSERT INTO `tb_visitlog_page` VALUES (2738, '2001:448a:5020:85b2:', 'login', '2022-05-23 14:04:45');
INSERT INTO `tb_visitlog_page` VALUES (2739, '2001:448a:5020:85b2:', 'keranjang', '2022-05-23 14:08:53');
INSERT INTO `tb_visitlog_page` VALUES (2740, '2001:448a:5020:85b2:', 'home', '2022-05-23 14:09:53');
INSERT INTO `tb_visitlog_page` VALUES (2741, '125.164.12.192', 'open po', '2022-05-23 14:36:43');
INSERT INTO `tb_visitlog_page` VALUES (2742, '125.164.12.192', 'keranjang', '2022-05-23 14:36:47');
INSERT INTO `tb_visitlog_page` VALUES (2743, '125.164.12.192', 'login', '2022-05-23 14:36:52');
INSERT INTO `tb_visitlog_page` VALUES (2744, '125.164.12.192', 'keranjang', '2022-05-23 14:37:09');
INSERT INTO `tb_visitlog_page` VALUES (2745, '202.6.227.46', 'home', '2022-05-23 14:47:20');
INSERT INTO `tb_visitlog_page` VALUES (2746, '125.164.6.108', 'open po', '2022-05-23 14:47:48');
INSERT INTO `tb_visitlog_page` VALUES (2747, '125.164.6.108', 'keranjang', '2022-05-23 14:47:53');
INSERT INTO `tb_visitlog_page` VALUES (2748, '125.164.6.108', 'login', '2022-05-23 14:47:56');
INSERT INTO `tb_visitlog_page` VALUES (2749, '125.164.6.108', 'keranjang', '2022-05-23 14:48:09');
INSERT INTO `tb_visitlog_page` VALUES (2750, '66.249.66.50', 'syarat & ketentuan', '2022-05-24 01:51:09');
INSERT INTO `tb_visitlog_page` VALUES (2751, '66.249.66.54', 'menu', '2022-05-24 07:29:50');
INSERT INTO `tb_visitlog_page` VALUES (2752, '125.164.12.192', 'home', '2022-05-24 09:00:01');
INSERT INTO `tb_visitlog_page` VALUES (2753, '125.164.12.192', 'wacana', '2022-05-24 09:00:03');
INSERT INTO `tb_visitlog_page` VALUES (2754, '66.249.66.58', 'open po', '2022-05-24 12:10:20');
INSERT INTO `tb_visitlog_page` VALUES (2755, '125.164.12.192', 'home', '2022-05-24 14:59:29');
INSERT INTO `tb_visitlog_page` VALUES (2756, '66.249.66.54', 'syarat & ketentuan', '2022-05-25 10:20:50');
INSERT INTO `tb_visitlog_page` VALUES (2757, '2001:448a:5021:9542:', 'home', '2022-05-25 15:44:05');
INSERT INTO `tb_visitlog_page` VALUES (2758, '2001:448a:5021:9542:', 'open po', '2022-05-25 15:44:12');
INSERT INTO `tb_visitlog_page` VALUES (2759, '2001:448a:5021:9542:', 'home', '2022-05-25 15:44:20');
INSERT INTO `tb_visitlog_page` VALUES (2760, '2001:448a:5021:9542:', 'galeri', '2022-05-25 15:44:42');
INSERT INTO `tb_visitlog_page` VALUES (2761, '2001:448a:5021:9542:', 'order', '2022-05-25 15:47:52');
INSERT INTO `tb_visitlog_page` VALUES (2762, '66.249.75.148', 'home', '2022-05-25 17:57:37');
INSERT INTO `tb_visitlog_page` VALUES (2763, '66.249.66.50', 'home', '2022-05-25 19:27:19');
INSERT INTO `tb_visitlog_page` VALUES (2764, '66.249.66.58', 'home', '2022-05-25 19:37:42');
INSERT INTO `tb_visitlog_page` VALUES (2765, '66.249.74.24', 'home', '2022-05-25 19:48:57');
INSERT INTO `tb_visitlog_page` VALUES (2766, '66.249.74.24', 'home', '2022-05-25 19:48:58');
INSERT INTO `tb_visitlog_page` VALUES (2767, '66.249.66.54', 'home', '2022-05-25 20:12:17');
INSERT INTO `tb_visitlog_page` VALUES (2768, '66.249.66.54', 'news', '2022-05-26 05:41:31');
INSERT INTO `tb_visitlog_page` VALUES (2769, '66.249.66.58', 'news', '2022-05-26 05:52:34');
INSERT INTO `tb_visitlog_page` VALUES (2770, '157.55.39.173', 'home', '2022-05-26 07:22:41');
INSERT INTO `tb_visitlog_page` VALUES (2771, '114.125.94.170', 'home', '2022-05-26 12:46:05');
INSERT INTO `tb_visitlog_page` VALUES (2772, '114.125.94.170', 'menu', '2022-05-26 12:46:09');
INSERT INTO `tb_visitlog_page` VALUES (2773, '2a02:26f7:dfcd:4000:', 'menu', '2022-05-26 12:47:23');
INSERT INTO `tb_visitlog_page` VALUES (2774, '111.65.56.181', 'menu', '2022-05-26 12:49:30');
INSERT INTO `tb_visitlog_page` VALUES (2775, '2a02:26f7:dfc8:4000:', 'menu', '2022-05-26 12:50:20');
INSERT INTO `tb_visitlog_page` VALUES (2776, '111.65.56.181', 'menu', '2022-05-26 12:50:38');
INSERT INTO `tb_visitlog_page` VALUES (2777, '111.65.56.181', 'menu', '2022-05-26 13:21:00');
INSERT INTO `tb_visitlog_page` VALUES (2778, '182.1.100.173', 'wacana', '2022-05-26 13:31:16');
INSERT INTO `tb_visitlog_page` VALUES (2779, '66.249.66.58', 'menu', '2022-05-26 13:36:50');
INSERT INTO `tb_visitlog_page` VALUES (2780, '66.249.75.148', 'menu', '2022-05-26 16:00:27');
INSERT INTO `tb_visitlog_page` VALUES (2781, '66.249.75.148', 'kontak', '2022-05-26 21:45:45');
INSERT INTO `tb_visitlog_page` VALUES (2782, '66.249.66.50', 'news', '2022-05-26 21:51:32');
INSERT INTO `tb_visitlog_page` VALUES (2783, '120.188.39.217', 'home', '2022-05-26 23:06:58');
INSERT INTO `tb_visitlog_page` VALUES (2784, '66.249.66.58', 'kontak', '2022-05-26 23:35:49');
INSERT INTO `tb_visitlog_page` VALUES (2785, '69.160.160.55', 'home', '2022-05-27 03:53:38');
INSERT INTO `tb_visitlog_page` VALUES (2786, '202.6.227.46', 'home', '2022-05-27 08:37:46');
INSERT INTO `tb_visitlog_page` VALUES (2787, '202.6.227.46', 'wacana', '2022-05-27 08:37:46');
INSERT INTO `tb_visitlog_page` VALUES (2788, '202.6.227.46', 'news', '2022-05-27 08:37:55');
INSERT INTO `tb_visitlog_page` VALUES (2789, '202.6.227.46', 'wacana', '2022-05-27 08:38:08');
INSERT INTO `tb_visitlog_page` VALUES (2790, '2001:448a:5020:12b0:', 'home', '2022-05-27 10:27:48');
INSERT INTO `tb_visitlog_page` VALUES (2791, '2001:448a:5020:12b0:', 'wacana', '2022-05-27 10:27:49');
INSERT INTO `tb_visitlog_page` VALUES (2792, '2001:448a:5020:12b0:', 'news', '2022-05-27 10:27:52');
INSERT INTO `tb_visitlog_page` VALUES (2793, '180.253.165.40', 'news', '2022-05-27 11:18:17');
INSERT INTO `tb_visitlog_page` VALUES (2794, '66.249.75.148', 'news', '2022-05-27 13:37:58');
INSERT INTO `tb_visitlog_page` VALUES (2795, '2001:448a:5020:12b0:', 'home', '2022-05-27 17:32:14');
INSERT INTO `tb_visitlog_page` VALUES (2796, '2001:448a:5020:12b0:', 'wacana', '2022-05-27 17:32:16');
INSERT INTO `tb_visitlog_page` VALUES (2797, '2001:448a:5020:12b0:', 'wacana', '2022-05-27 17:32:21');
INSERT INTO `tb_visitlog_page` VALUES (2798, '202.6.227.46', 'galeri', '2022-05-27 17:32:23');
INSERT INTO `tb_visitlog_page` VALUES (2799, '202.6.227.46', 'wacana', '2022-05-27 17:32:24');
INSERT INTO `tb_visitlog_page` VALUES (2800, '202.6.227.46', 'wacana', '2022-05-27 17:32:27');
INSERT INTO `tb_visitlog_page` VALUES (2801, '202.6.227.46', 'news', '2022-05-27 17:32:30');
INSERT INTO `tb_visitlog_page` VALUES (2802, '66.249.66.148', 'news', '2022-05-27 23:44:58');
INSERT INTO `tb_visitlog_page` VALUES (2803, '66.249.75.148', 'syarat & ketentuan', '2022-05-28 05:06:04');
INSERT INTO `tb_visitlog_page` VALUES (2804, '17.121.113.97', 'galeri', '2022-05-28 15:34:40');
INSERT INTO `tb_visitlog_page` VALUES (2805, '116.206.40.107', 'news', '2022-05-28 16:40:54');
INSERT INTO `tb_visitlog_page` VALUES (2806, '150.129.59.4', 'news', '2022-05-28 17:08:59');
INSERT INTO `tb_visitlog_page` VALUES (2807, '66.249.66.90', 'news', '2022-05-30 00:09:21');
INSERT INTO `tb_visitlog_page` VALUES (2808, '157.55.39.66', 'news', '2022-05-30 02:29:12');
INSERT INTO `tb_visitlog_page` VALUES (2809, '124.246.83.193', 'home', '2022-05-30 08:49:25');
INSERT INTO `tb_visitlog_page` VALUES (2810, '36.82.18.189', 'open po', '2022-05-30 09:56:43');
INSERT INTO `tb_visitlog_page` VALUES (2811, '66.249.66.12', 'open po', '2022-05-31 04:00:33');
INSERT INTO `tb_visitlog_page` VALUES (2812, '66.249.66.198', 'wacana', '2022-05-31 05:08:53');
INSERT INTO `tb_visitlog_page` VALUES (2813, '66.249.66.198', 'home', '2022-05-31 05:09:38');
INSERT INTO `tb_visitlog_page` VALUES (2814, '66.249.66.60', 'open po', '2022-05-31 05:19:11');
INSERT INTO `tb_visitlog_page` VALUES (2815, '66.249.66.90', 'wacana', '2022-05-31 05:45:05');
INSERT INTO `tb_visitlog_page` VALUES (2816, '40.77.139.84', 'open po', '2022-05-31 07:50:49');
INSERT INTO `tb_visitlog_page` VALUES (2817, '182.1.80.56', 'home', '2022-05-31 11:48:27');
INSERT INTO `tb_visitlog_page` VALUES (2818, '182.1.80.56', 'menu', '2022-05-31 11:49:09');
INSERT INTO `tb_visitlog_page` VALUES (2819, '79.173.88.92', 'home', '2022-05-31 13:45:53');
INSERT INTO `tb_visitlog_page` VALUES (2820, '66.249.66.33', 'home', '2022-05-31 14:54:57');
INSERT INTO `tb_visitlog_page` VALUES (2821, '66.249.66.33', 'open po', '2022-05-31 14:55:25');
INSERT INTO `tb_visitlog_page` VALUES (2822, '66.249.66.90', 'home', '2022-05-31 14:57:06');
INSERT INTO `tb_visitlog_page` VALUES (2823, '66.249.66.33', 'wacana', '2022-05-31 14:57:23');
INSERT INTO `tb_visitlog_page` VALUES (2824, '66.249.66.60', 'home', '2022-05-31 16:09:53');
INSERT INTO `tb_visitlog_page` VALUES (2825, '66.249.66.48', 'home', '2022-05-31 16:10:23');
INSERT INTO `tb_visitlog_page` VALUES (2826, '66.249.66.198', 'open po', '2022-05-31 23:25:35');
INSERT INTO `tb_visitlog_page` VALUES (2827, '66.249.66.42', 'open po', '2022-06-01 07:11:50');
INSERT INTO `tb_visitlog_page` VALUES (2828, '66.249.66.90', 'galeri', '2022-06-02 00:06:02');
INSERT INTO `tb_visitlog_page` VALUES (2829, '66.249.66.92', 'galeri', '2022-06-02 00:46:22');
INSERT INTO `tb_visitlog_page` VALUES (2830, '66.249.66.33', 'galeri', '2022-06-02 01:40:47');
INSERT INTO `tb_visitlog_page` VALUES (2831, '66.249.66.198', 'menu', '2022-06-02 01:41:30');
INSERT INTO `tb_visitlog_page` VALUES (2832, '66.249.66.42', 'galeri', '2022-06-02 01:43:08');
INSERT INTO `tb_visitlog_page` VALUES (2833, '125.164.2.180', 'home', '2022-06-02 10:29:01');
INSERT INTO `tb_visitlog_page` VALUES (2834, '125.164.2.180', 'order', '2022-06-02 10:29:19');
INSERT INTO `tb_visitlog_page` VALUES (2835, '125.164.2.180', 'open po', '2022-06-02 10:29:21');
INSERT INTO `tb_visitlog_page` VALUES (2836, '2001:448a:5021:ebc5:', 'home', '2022-06-02 10:42:30');
INSERT INTO `tb_visitlog_page` VALUES (2837, '2001:448a:5021:ebc5:', 'order', '2022-06-02 10:42:38');
INSERT INTO `tb_visitlog_page` VALUES (2838, '2001:448a:5021:ebc5:', 'open po', '2022-06-02 10:42:42');
INSERT INTO `tb_visitlog_page` VALUES (2839, '2001:448a:5021:ebc5:', 'menu', '2022-06-02 10:44:13');
INSERT INTO `tb_visitlog_page` VALUES (2840, '2001:448a:5021:ebc5:', 'galeri', '2022-06-02 10:44:51');
INSERT INTO `tb_visitlog_page` VALUES (2841, '2001:448a:5021:ebc5:', 'menu', '2022-06-02 10:45:16');
INSERT INTO `tb_visitlog_page` VALUES (2842, '2001:448a:5021:ebc5:', 'tentang', '2022-06-02 10:45:19');
INSERT INTO `tb_visitlog_page` VALUES (2843, '2001:448a:5021:ebc5:', 'home', '2022-06-02 13:37:42');
INSERT INTO `tb_visitlog_page` VALUES (2844, '125.164.59.70', 'wacana', '2022-06-02 15:41:28');
INSERT INTO `tb_visitlog_page` VALUES (2845, '125.164.59.70', 'news', '2022-06-02 15:41:49');
INSERT INTO `tb_visitlog_page` VALUES (2846, '125.164.59.70', 'wacana', '2022-06-02 15:41:52');
INSERT INTO `tb_visitlog_page` VALUES (2847, '125.164.59.70', 'news', '2022-06-02 15:41:55');
INSERT INTO `tb_visitlog_page` VALUES (2848, '125.164.59.70', 'wacana', '2022-06-02 15:41:57');
INSERT INTO `tb_visitlog_page` VALUES (2849, '2001:448a:5021:ebc5:', 'wacana', '2022-06-02 15:42:14');
INSERT INTO `tb_visitlog_page` VALUES (2850, '2001:448a:5021:ebc5:', 'news', '2022-06-02 15:42:17');
INSERT INTO `tb_visitlog_page` VALUES (2851, '2001:448a:5021:ebc5:', 'wacana', '2022-06-02 15:45:09');
INSERT INTO `tb_visitlog_page` VALUES (2852, '2001:448a:5021:ebc5:', 'news', '2022-06-02 15:45:11');
INSERT INTO `tb_visitlog_page` VALUES (2853, '125.164.59.70', 'news', '2022-06-02 16:07:00');
INSERT INTO `tb_visitlog_page` VALUES (2854, '66.249.66.42', 'news', '2022-06-03 03:26:33');
INSERT INTO `tb_visitlog_page` VALUES (2855, '66.249.66.33', 'news', '2022-06-03 03:31:47');
INSERT INTO `tb_visitlog_page` VALUES (2856, '114.125.85.248', 'news', '2022-06-03 09:46:32');
INSERT INTO `tb_visitlog_page` VALUES (2857, '114.125.85.248', 'news', '2022-06-03 09:47:09');
INSERT INTO `tb_visitlog_page` VALUES (2858, '114.125.85.248', 'news', '2022-06-03 09:47:28');
INSERT INTO `tb_visitlog_page` VALUES (2859, '2001:448a:5020:10eb:', 'news', '2022-06-03 09:47:32');
INSERT INTO `tb_visitlog_page` VALUES (2860, '2001:448a:5020:10eb:', 'home', '2022-06-03 09:50:06');
INSERT INTO `tb_visitlog_page` VALUES (2861, '2001:448a:5020:10eb:', 'home', '2022-06-03 09:50:07');
INSERT INTO `tb_visitlog_page` VALUES (2862, '2001:448a:5020:10eb:', 'wacana', '2022-06-03 09:50:08');
INSERT INTO `tb_visitlog_page` VALUES (2863, '2001:448a:5020:10eb:', 'wacana', '2022-06-03 09:50:08');
INSERT INTO `tb_visitlog_page` VALUES (2864, '2001:448a:5020:10eb:', 'news', '2022-06-03 09:50:23');
INSERT INTO `tb_visitlog_page` VALUES (2865, '2001:448a:5020:10eb:', 'news', '2022-06-03 09:50:43');
INSERT INTO `tb_visitlog_page` VALUES (2866, '2001:448a:5020:10eb:', 'news', '2022-06-03 09:54:45');
INSERT INTO `tb_visitlog_page` VALUES (2867, '2001:448a:5020:10eb:', 'news', '2022-06-03 09:55:49');
INSERT INTO `tb_visitlog_page` VALUES (2868, '219.74.248.206', 'news', '2022-06-03 10:21:50');
INSERT INTO `tb_visitlog_page` VALUES (2869, '125.164.6.34', 'home', '2022-06-03 10:29:43');
INSERT INTO `tb_visitlog_page` VALUES (2870, '125.164.6.34', 'wacana', '2022-06-03 10:29:45');
INSERT INTO `tb_visitlog_page` VALUES (2871, '219.74.248.206', 'news', '2022-06-03 10:36:19');
INSERT INTO `tb_visitlog_page` VALUES (2872, '219.74.248.206', 'news', '2022-06-03 10:36:44');
INSERT INTO `tb_visitlog_page` VALUES (2873, '219.74.248.206', 'news', '2022-06-03 10:37:04');
INSERT INTO `tb_visitlog_page` VALUES (2874, '180.253.160.63', 'home', '2022-06-03 10:46:55');
INSERT INTO `tb_visitlog_page` VALUES (2875, '180.253.160.63', 'wacana', '2022-06-03 10:46:59');
INSERT INTO `tb_visitlog_page` VALUES (2876, '180.253.160.63', 'home', '2022-06-03 10:47:06');
INSERT INTO `tb_visitlog_page` VALUES (2877, '180.253.160.63', 'wacana', '2022-06-03 10:47:50');
INSERT INTO `tb_visitlog_page` VALUES (2878, '180.253.160.63', 'news', '2022-06-03 10:48:07');
INSERT INTO `tb_visitlog_page` VALUES (2879, '180.253.160.63', 'wacana', '2022-06-03 10:48:50');
INSERT INTO `tb_visitlog_page` VALUES (2880, '180.247.180.183', 'home', '2022-06-03 10:50:34');
INSERT INTO `tb_visitlog_page` VALUES (2881, '180.247.180.183', 'menu', '2022-06-03 10:50:35');
INSERT INTO `tb_visitlog_page` VALUES (2882, '180.247.180.183', 'order', '2022-06-03 10:56:23');
INSERT INTO `tb_visitlog_page` VALUES (2883, '180.247.180.183', 'order', '2022-06-03 10:56:34');
INSERT INTO `tb_visitlog_page` VALUES (2884, '180.247.180.183', 'order', '2022-06-03 10:56:37');
INSERT INTO `tb_visitlog_page` VALUES (2885, '180.247.180.183', 'open po', '2022-06-03 11:00:11');
INSERT INTO `tb_visitlog_page` VALUES (2886, '180.253.160.63', 'news', '2022-06-03 13:27:03');
INSERT INTO `tb_visitlog_page` VALUES (2887, '2001:448a:5020:10eb:', 'news', '2022-06-03 13:27:07');
INSERT INTO `tb_visitlog_page` VALUES (2888, '2001:448a:5020:10eb:', 'wacana', '2022-06-03 13:27:08');
INSERT INTO `tb_visitlog_page` VALUES (2889, '219.74.248.206', 'news', '2022-06-03 13:33:44');
INSERT INTO `tb_visitlog_page` VALUES (2890, '219.74.248.206', 'news', '2022-06-03 13:33:50');
INSERT INTO `tb_visitlog_page` VALUES (2891, '2001:448a:5020:10eb:', 'news', '2022-06-03 13:38:58');
INSERT INTO `tb_visitlog_page` VALUES (2892, '66.249.73.122', 'home', '2022-06-03 16:18:01');
INSERT INTO `tb_visitlog_page` VALUES (2893, '2001:448a:5020:10eb:', 'news', '2022-06-03 16:21:58');
INSERT INTO `tb_visitlog_page` VALUES (2894, '66.249.73.110', 'order', '2022-06-03 16:51:58');
INSERT INTO `tb_visitlog_page` VALUES (2895, '40.77.139.79', 'open po', '2022-06-03 17:15:34');
INSERT INTO `tb_visitlog_page` VALUES (2896, '180.253.160.63', 'home', '2022-06-03 19:27:07');
INSERT INTO `tb_visitlog_page` VALUES (2897, '180.253.160.63', 'menu', '2022-06-03 19:27:09');
INSERT INTO `tb_visitlog_page` VALUES (2898, '150.129.59.5', 'news', '2022-06-04 00:13:17');
INSERT INTO `tb_visitlog_page` VALUES (2899, '54.190.93.17', 'home', '2022-06-04 06:43:11');
INSERT INTO `tb_visitlog_page` VALUES (2900, '66.249.64.135', 'syarat & ketentuan', '2022-06-04 13:02:25');
INSERT INTO `tb_visitlog_page` VALUES (2901, '66.249.64.152', 'syarat & ketentuan', '2022-06-04 13:28:19');
INSERT INTO `tb_visitlog_page` VALUES (2902, '66.249.66.92', 'kontak', '2022-06-04 13:28:58');
INSERT INTO `tb_visitlog_page` VALUES (2903, '66.249.73.122', 'syarat & ketentuan', '2022-06-04 13:29:06');
INSERT INTO `tb_visitlog_page` VALUES (2904, '66.249.64.152', 'home', '2022-06-04 13:31:51');
INSERT INTO `tb_visitlog_page` VALUES (2905, '79.173.83.25', 'home', '2022-06-05 08:32:07');
INSERT INTO `tb_visitlog_page` VALUES (2906, '114.125.100.13', 'open po', '2022-06-05 11:56:12');
INSERT INTO `tb_visitlog_page` VALUES (2907, '2001:448a:5020:e70f:', 'wacana', '2022-06-06 08:09:54');
INSERT INTO `tb_visitlog_page` VALUES (2908, '2001:448a:5020:e70f:', 'home', '2022-06-06 08:48:11');
INSERT INTO `tb_visitlog_page` VALUES (2909, '2001:448a:5020:e70f:', 'order', '2022-06-06 08:48:31');
INSERT INTO `tb_visitlog_page` VALUES (2910, '2001:448a:5020:e70f:', 'open po', '2022-06-06 08:48:33');
INSERT INTO `tb_visitlog_page` VALUES (2911, '2001:448a:5020:e70f:', 'open po', '2022-06-06 10:03:33');
INSERT INTO `tb_visitlog_page` VALUES (2912, '114.125.69.228', 'open po', '2022-06-06 11:26:46');
INSERT INTO `tb_visitlog_page` VALUES (2913, '66.249.64.152', 'kontak', '2022-06-06 12:00:42');
INSERT INTO `tb_visitlog_page` VALUES (2914, '36.74.97.1', 'home', '2022-06-06 14:51:33');
INSERT INTO `tb_visitlog_page` VALUES (2915, '36.74.97.1', 'wacana', '2022-06-06 14:51:35');
INSERT INTO `tb_visitlog_page` VALUES (2916, '36.74.97.1', 'menu', '2022-06-06 14:52:05');
INSERT INTO `tb_visitlog_page` VALUES (2917, '125.164.224.11', 'wacana', '2022-06-07 10:19:31');
INSERT INTO `tb_visitlog_page` VALUES (2918, '125.164.224.11', 'wacana', '2022-06-07 10:19:33');
INSERT INTO `tb_visitlog_page` VALUES (2919, '125.164.224.11', 'wacana', '2022-06-07 10:49:54');
INSERT INTO `tb_visitlog_page` VALUES (2920, '125.164.224.11', 'wacana', '2022-06-07 15:14:03');
INSERT INTO `tb_visitlog_page` VALUES (2921, '125.164.224.11', 'wacana', '2022-06-07 15:15:22');
INSERT INTO `tb_visitlog_page` VALUES (2922, '125.164.224.11', 'wacana', '2022-06-07 15:15:29');
INSERT INTO `tb_visitlog_page` VALUES (2923, '125.164.224.11', 'menu', '2022-06-07 15:15:34');
INSERT INTO `tb_visitlog_page` VALUES (2924, '125.164.224.11', 'wacana', '2022-06-07 15:15:50');
INSERT INTO `tb_visitlog_page` VALUES (2925, '125.164.224.11', 'news', '2022-06-07 15:18:26');
INSERT INTO `tb_visitlog_page` VALUES (2926, '125.164.224.11', 'wacana', '2022-06-07 15:38:25');
INSERT INTO `tb_visitlog_page` VALUES (2927, '125.164.224.11', 'news', '2022-06-07 15:38:36');
INSERT INTO `tb_visitlog_page` VALUES (2928, '125.164.224.11', 'wacana', '2022-06-07 15:38:37');
INSERT INTO `tb_visitlog_page` VALUES (2929, '180.253.160.144', 'wacana', '2022-06-07 15:47:09');
INSERT INTO `tb_visitlog_page` VALUES (2930, '180.253.160.144', 'menu', '2022-06-07 15:47:09');
INSERT INTO `tb_visitlog_page` VALUES (2931, '125.164.3.40', 'menu', '2022-06-08 08:24:24');
INSERT INTO `tb_visitlog_page` VALUES (2932, '66.249.74.24', 'home', '2022-06-08 13:14:24');
INSERT INTO `tb_visitlog_page` VALUES (2933, '114.4.218.174', 'wacana', '2022-06-08 21:01:56');
INSERT INTO `tb_visitlog_page` VALUES (2934, '121.7.70.28', 'home', '2022-06-08 23:52:01');
INSERT INTO `tb_visitlog_page` VALUES (2935, '2606:54c0:6540:8::17', 'menu', '2022-06-08 23:56:28');
INSERT INTO `tb_visitlog_page` VALUES (2936, '110.139.14.7', 'menu', '2022-06-09 07:44:04');
INSERT INTO `tb_visitlog_page` VALUES (2937, '2001:448a:5020:ce0b:', 'home', '2022-06-09 10:58:02');
INSERT INTO `tb_visitlog_page` VALUES (2938, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 10:58:05');
INSERT INTO `tb_visitlog_page` VALUES (2939, '2001:448a:5020:ce0b:', 'news', '2022-06-09 10:58:09');
INSERT INTO `tb_visitlog_page` VALUES (2940, '2001:448a:5020:dac4:', 'news', '2022-06-09 10:58:59');
INSERT INTO `tb_visitlog_page` VALUES (2941, '2001:448a:5020:dac4:', 'open po', '2022-06-09 11:01:43');
INSERT INTO `tb_visitlog_page` VALUES (2942, '2001:448a:5020:dac4:', 'keranjang', '2022-06-09 11:01:57');
INSERT INTO `tb_visitlog_page` VALUES (2943, '2001:448a:5020:dac4:', 'kontak', '2022-06-09 11:01:59');
INSERT INTO `tb_visitlog_page` VALUES (2944, '2001:448a:5020:dac4:', 'tentang', '2022-06-09 11:02:08');
INSERT INTO `tb_visitlog_page` VALUES (2945, '125.164.9.79', 'home', '2022-06-09 11:03:44');
INSERT INTO `tb_visitlog_page` VALUES (2946, '125.164.9.79', 'order', '2022-06-09 11:03:54');
INSERT INTO `tb_visitlog_page` VALUES (2947, '125.164.9.79', 'open po', '2022-06-09 11:03:58');
INSERT INTO `tb_visitlog_page` VALUES (2948, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:13:07');
INSERT INTO `tb_visitlog_page` VALUES (2949, '2001:448a:5020:ce0b:', 'home', '2022-06-09 11:21:20');
INSERT INTO `tb_visitlog_page` VALUES (2950, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:21:22');
INSERT INTO `tb_visitlog_page` VALUES (2951, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:21:28');
INSERT INTO `tb_visitlog_page` VALUES (2952, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:22:30');
INSERT INTO `tb_visitlog_page` VALUES (2953, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:22:42');
INSERT INTO `tb_visitlog_page` VALUES (2954, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:23:26');
INSERT INTO `tb_visitlog_page` VALUES (2955, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:23:30');
INSERT INTO `tb_visitlog_page` VALUES (2956, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:23:37');
INSERT INTO `tb_visitlog_page` VALUES (2957, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:24:18');
INSERT INTO `tb_visitlog_page` VALUES (2958, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:24:49');
INSERT INTO `tb_visitlog_page` VALUES (2959, '2001:448a:5020:dac4:', 'home', '2022-06-09 11:25:05');
INSERT INTO `tb_visitlog_page` VALUES (2960, '2001:448a:5020:ce0b:', 'home', '2022-06-09 11:29:37');
INSERT INTO `tb_visitlog_page` VALUES (2961, '2001:448a:5020:ce0b:', 'open po', '2022-06-09 11:31:21');
INSERT INTO `tb_visitlog_page` VALUES (2962, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:31:30');
INSERT INTO `tb_visitlog_page` VALUES (2963, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:32:32');
INSERT INTO `tb_visitlog_page` VALUES (2964, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:32:51');
INSERT INTO `tb_visitlog_page` VALUES (2965, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:32:55');
INSERT INTO `tb_visitlog_page` VALUES (2966, '2001:448a:5020:ce0b:', 'home', '2022-06-09 11:34:06');
INSERT INTO `tb_visitlog_page` VALUES (2967, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:34:18');
INSERT INTO `tb_visitlog_page` VALUES (2968, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:34:27');
INSERT INTO `tb_visitlog_page` VALUES (2969, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:34:34');
INSERT INTO `tb_visitlog_page` VALUES (2970, '2001:448a:5020:ce0b:', 'home', '2022-06-09 11:35:13');
INSERT INTO `tb_visitlog_page` VALUES (2971, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:35:16');
INSERT INTO `tb_visitlog_page` VALUES (2972, '2001:448a:5020:ce0b:', 'home', '2022-06-09 11:35:53');
INSERT INTO `tb_visitlog_page` VALUES (2973, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:35:55');
INSERT INTO `tb_visitlog_page` VALUES (2974, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:36:10');
INSERT INTO `tb_visitlog_page` VALUES (2975, '182.1.99.168', 'news', '2022-06-09 11:36:47');
INSERT INTO `tb_visitlog_page` VALUES (2976, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:36:55');
INSERT INTO `tb_visitlog_page` VALUES (2977, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:37:43');
INSERT INTO `tb_visitlog_page` VALUES (2978, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:37:53');
INSERT INTO `tb_visitlog_page` VALUES (2979, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:39:17');
INSERT INTO `tb_visitlog_page` VALUES (2980, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:39:26');
INSERT INTO `tb_visitlog_page` VALUES (2981, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:39:41');
INSERT INTO `tb_visitlog_page` VALUES (2982, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:39:42');
INSERT INTO `tb_visitlog_page` VALUES (2983, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:44:44');
INSERT INTO `tb_visitlog_page` VALUES (2984, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:44:57');
INSERT INTO `tb_visitlog_page` VALUES (2985, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:45:35');
INSERT INTO `tb_visitlog_page` VALUES (2986, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:45:40');
INSERT INTO `tb_visitlog_page` VALUES (2987, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:46:42');
INSERT INTO `tb_visitlog_page` VALUES (2988, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:47:28');
INSERT INTO `tb_visitlog_page` VALUES (2989, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:47:58');
INSERT INTO `tb_visitlog_page` VALUES (2990, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:48:04');
INSERT INTO `tb_visitlog_page` VALUES (2991, '2001:448a:5020:ce0b:', 'open po', '2022-06-09 11:49:03');
INSERT INTO `tb_visitlog_page` VALUES (2992, '2001:448a:5020:ce0b:', 'order', '2022-06-09 11:49:23');
INSERT INTO `tb_visitlog_page` VALUES (2993, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:49:36');
INSERT INTO `tb_visitlog_page` VALUES (2994, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:49:50');
INSERT INTO `tb_visitlog_page` VALUES (2995, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:51:17');
INSERT INTO `tb_visitlog_page` VALUES (2996, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:54:24');
INSERT INTO `tb_visitlog_page` VALUES (2997, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:54:30');
INSERT INTO `tb_visitlog_page` VALUES (2998, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:54:41');
INSERT INTO `tb_visitlog_page` VALUES (2999, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:54:50');
INSERT INTO `tb_visitlog_page` VALUES (3000, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:59:03');
INSERT INTO `tb_visitlog_page` VALUES (3001, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 11:59:22');
INSERT INTO `tb_visitlog_page` VALUES (3002, '2001:448a:5020:ce0b:', 'news', '2022-06-09 11:59:26');
INSERT INTO `tb_visitlog_page` VALUES (3003, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:01:05');
INSERT INTO `tb_visitlog_page` VALUES (3004, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:02:53');
INSERT INTO `tb_visitlog_page` VALUES (3005, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:03:06');
INSERT INTO `tb_visitlog_page` VALUES (3006, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:06:26');
INSERT INTO `tb_visitlog_page` VALUES (3007, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:06:35');
INSERT INTO `tb_visitlog_page` VALUES (3008, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:06:57');
INSERT INTO `tb_visitlog_page` VALUES (3009, '2001:448a:5020:ce0b:', 'order', '2022-06-09 12:06:59');
INSERT INTO `tb_visitlog_page` VALUES (3010, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:07:03');
INSERT INTO `tb_visitlog_page` VALUES (3011, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:07:33');
INSERT INTO `tb_visitlog_page` VALUES (3012, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:07:40');
INSERT INTO `tb_visitlog_page` VALUES (3013, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:07:45');
INSERT INTO `tb_visitlog_page` VALUES (3014, '2001:448a:5020:ce0b:', 'home', '2022-06-09 12:07:55');
INSERT INTO `tb_visitlog_page` VALUES (3015, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:07:56');
INSERT INTO `tb_visitlog_page` VALUES (3016, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:08:00');
INSERT INTO `tb_visitlog_page` VALUES (3017, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:08:03');
INSERT INTO `tb_visitlog_page` VALUES (3018, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:08:05');
INSERT INTO `tb_visitlog_page` VALUES (3019, '2001:448a:5020:ce0b:', 'order', '2022-06-09 12:08:08');
INSERT INTO `tb_visitlog_page` VALUES (3020, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:10:07');
INSERT INTO `tb_visitlog_page` VALUES (3021, '2001:448a:5020:ce0b:', 'home', '2022-06-09 12:14:46');
INSERT INTO `tb_visitlog_page` VALUES (3022, '2001:448a:5020:ce0b:', 'wacana', '2022-06-09 12:14:47');
INSERT INTO `tb_visitlog_page` VALUES (3023, '2001:448a:5020:ce0b:', 'news', '2022-06-09 12:14:50');
INSERT INTO `tb_visitlog_page` VALUES (3024, '182.1.96.61', 'news', '2022-06-09 13:49:29');
INSERT INTO `tb_visitlog_page` VALUES (3025, '2001:448a:50e1:c19a:', 'home', '2022-06-09 15:42:11');
INSERT INTO `tb_visitlog_page` VALUES (3026, '139.0.123.189', 'open po', '2022-06-09 19:03:36');
INSERT INTO `tb_visitlog_page` VALUES (3027, '125.164.61.234', 'menu', '2022-06-10 08:03:23');
INSERT INTO `tb_visitlog_page` VALUES (3028, '202.6.227.46', 'news', '2022-06-10 09:06:17');
INSERT INTO `tb_visitlog_page` VALUES (3029, '125.164.0.174', 'wacana', '2022-06-10 09:09:16');
INSERT INTO `tb_visitlog_page` VALUES (3030, '125.164.0.174', 'news', '2022-06-10 09:09:21');
INSERT INTO `tb_visitlog_page` VALUES (3031, '125.164.61.234', 'news', '2022-06-10 09:10:18');
INSERT INTO `tb_visitlog_page` VALUES (3032, '125.164.0.174', 'wacana', '2022-06-10 09:10:21');
INSERT INTO `tb_visitlog_page` VALUES (3033, '125.164.0.174', 'home', '2022-06-10 09:19:32');
INSERT INTO `tb_visitlog_page` VALUES (3034, '125.164.0.174', 'login', '2022-06-10 09:19:39');
INSERT INTO `tb_visitlog_page` VALUES (3035, '125.164.0.174', 'home', '2022-06-10 09:32:58');
INSERT INTO `tb_visitlog_page` VALUES (3036, '125.164.0.174', 'wacana', '2022-06-10 09:33:00');
INSERT INTO `tb_visitlog_page` VALUES (3037, '125.164.0.174', 'home', '2022-06-10 10:09:23');
INSERT INTO `tb_visitlog_page` VALUES (3038, '125.164.0.174', 'wacana', '2022-06-10 10:10:27');
INSERT INTO `tb_visitlog_page` VALUES (3039, '125.164.0.174', 'tentang', '2022-06-10 10:10:29');
INSERT INTO `tb_visitlog_page` VALUES (3040, '125.164.0.174', 'home', '2022-06-10 10:10:34');
INSERT INTO `tb_visitlog_page` VALUES (3041, '125.164.0.174', 'wacana', '2022-06-10 10:10:39');
INSERT INTO `tb_visitlog_page` VALUES (3042, '125.164.61.234', 'news', '2022-06-10 10:32:46');
INSERT INTO `tb_visitlog_page` VALUES (3043, '125.164.61.234', 'wacana', '2022-06-10 10:32:48');
INSERT INTO `tb_visitlog_page` VALUES (3044, '125.164.61.234', 'wacana', '2022-06-10 14:15:01');
INSERT INTO `tb_visitlog_page` VALUES (3045, '125.164.0.174', 'menu', '2022-06-10 14:36:26');
INSERT INTO `tb_visitlog_page` VALUES (3046, '125.164.0.174', 'wacana', '2022-06-10 15:11:00');
INSERT INTO `tb_visitlog_page` VALUES (3047, '125.164.0.174', 'news', '2022-06-10 15:11:05');
INSERT INTO `tb_visitlog_page` VALUES (3048, '125.164.0.174', 'news', '2022-06-10 16:07:49');
INSERT INTO `tb_visitlog_page` VALUES (3049, '110.50.81.196', 'news', '2022-06-10 17:17:01');
INSERT INTO `tb_visitlog_page` VALUES (3050, '202.43.172.5', 'news', '2022-06-10 17:17:04');
INSERT INTO `tb_visitlog_page` VALUES (3051, '66.249.64.139', 'news', '2022-06-11 05:55:03');
INSERT INTO `tb_visitlog_page` VALUES (3052, '66.249.66.88', 'news', '2022-06-11 05:55:07');
INSERT INTO `tb_visitlog_page` VALUES (3053, '17.121.112.235', 'wacana', '2022-06-11 06:53:37');
INSERT INTO `tb_visitlog_page` VALUES (3054, '66.249.64.152', 'home', '2022-06-11 07:06:12');
INSERT INTO `tb_visitlog_page` VALUES (3055, '17.121.112.113', 'order', '2022-06-11 07:48:05');
INSERT INTO `tb_visitlog_page` VALUES (3056, '2a03:2880:10ff:17::f', 'home', '2022-06-12 10:29:44');
INSERT INTO `tb_visitlog_page` VALUES (3057, '2a03:2880:20ff:9::fa', 'home', '2022-06-12 10:29:46');
INSERT INTO `tb_visitlog_page` VALUES (3058, '66.249.66.88', 'open po', '2022-06-12 22:38:36');
INSERT INTO `tb_visitlog_page` VALUES (3059, '66.249.66.18', 'open po', '2022-06-12 22:38:36');
INSERT INTO `tb_visitlog_page` VALUES (3060, '125.164.15.155', 'menu', '2022-06-13 08:08:36');
INSERT INTO `tb_visitlog_page` VALUES (3061, '125.164.3.149', 'open po', '2022-06-13 09:12:01');
INSERT INTO `tb_visitlog_page` VALUES (3062, '125.164.3.149', 'home', '2022-06-13 09:22:05');
INSERT INTO `tb_visitlog_page` VALUES (3063, '125.164.3.149', 'order', '2022-06-13 09:22:06');
INSERT INTO `tb_visitlog_page` VALUES (3064, '125.164.3.149', 'open po', '2022-06-13 09:22:08');
INSERT INTO `tb_visitlog_page` VALUES (3065, '180.247.226.135', 'home', '2022-06-13 20:14:46');
INSERT INTO `tb_visitlog_page` VALUES (3066, '2605:6400:20:2490:7b', 'home', '2022-06-14 06:04:58');
INSERT INTO `tb_visitlog_page` VALUES (3067, '125.164.3.149', 'menu', '2022-06-14 07:43:54');
INSERT INTO `tb_visitlog_page` VALUES (3068, '61.5.53.89', 'home', '2022-06-14 13:13:38');
INSERT INTO `tb_visitlog_page` VALUES (3069, '61.5.53.89', 'menu', '2022-06-14 13:13:40');
INSERT INTO `tb_visitlog_page` VALUES (3070, '202.6.227.46', 'home', '2022-06-14 13:47:42');
INSERT INTO `tb_visitlog_page` VALUES (3071, '202.6.227.46', 'order', '2022-06-14 13:47:45');
INSERT INTO `tb_visitlog_page` VALUES (3072, '202.6.227.46', 'open po', '2022-06-14 13:47:48');
INSERT INTO `tb_visitlog_page` VALUES (3073, '202.6.227.46', 'open po', '2022-06-14 13:48:26');
INSERT INTO `tb_visitlog_page` VALUES (3074, '66.249.66.196', 'wacana', '2022-06-14 15:07:01');
INSERT INTO `tb_visitlog_page` VALUES (3075, '66.249.66.18', 'home', '2022-06-14 15:29:31');
INSERT INTO `tb_visitlog_page` VALUES (3076, '66.249.66.48', 'home', '2022-06-14 15:59:43');
INSERT INTO `tb_visitlog_page` VALUES (3077, '66.249.66.48', 'wacana', '2022-06-14 17:54:37');
INSERT INTO `tb_visitlog_page` VALUES (3078, '202.6.227.46', 'home', '2022-06-15 10:30:00');
INSERT INTO `tb_visitlog_page` VALUES (3079, '202.6.227.46', 'wacana', '2022-06-15 10:30:01');
INSERT INTO `tb_visitlog_page` VALUES (3080, '202.6.227.46', 'news', '2022-06-15 10:30:06');
INSERT INTO `tb_visitlog_page` VALUES (3081, '202.6.227.46', 'wacana', '2022-06-15 10:30:37');
INSERT INTO `tb_visitlog_page` VALUES (3082, '202.6.227.46', 'news', '2022-06-15 10:30:39');
INSERT INTO `tb_visitlog_page` VALUES (3083, '202.6.227.46', 'wacana', '2022-06-15 10:35:27');
INSERT INTO `tb_visitlog_page` VALUES (3084, '125.164.14.111', 'news', '2022-06-15 10:40:32');
INSERT INTO `tb_visitlog_page` VALUES (3085, '202.6.227.46', 'wacana', '2022-06-15 10:44:05');
INSERT INTO `tb_visitlog_page` VALUES (3086, '202.6.227.46', 'wacana', '2022-06-15 10:44:36');
INSERT INTO `tb_visitlog_page` VALUES (3087, '202.6.227.46', 'wacana', '2022-06-15 11:12:30');
INSERT INTO `tb_visitlog_page` VALUES (3088, '202.6.227.46', 'wacana', '2022-06-15 11:14:32');
INSERT INTO `tb_visitlog_page` VALUES (3089, '202.6.227.46', 'news', '2022-06-15 11:14:34');
INSERT INTO `tb_visitlog_page` VALUES (3090, '202.6.227.46', 'news', '2022-06-15 11:17:42');
INSERT INTO `tb_visitlog_page` VALUES (3091, '202.6.227.46', 'news', '2022-06-15 11:17:48');
INSERT INTO `tb_visitlog_page` VALUES (3092, '125.164.14.111', 'news', '2022-06-15 13:27:55');
INSERT INTO `tb_visitlog_page` VALUES (3093, '125.164.14.111', 'order', '2022-06-15 13:28:31');
INSERT INTO `tb_visitlog_page` VALUES (3094, '125.164.14.111', 'wacana', '2022-06-15 13:28:36');
INSERT INTO `tb_visitlog_page` VALUES (3095, '125.164.14.111', 'news', '2022-06-15 13:28:45');
INSERT INTO `tb_visitlog_page` VALUES (3096, '125.164.9.75', 'home', '2022-06-15 13:32:33');
INSERT INTO `tb_visitlog_page` VALUES (3097, '125.164.14.111', 'open po', '2022-06-15 13:32:44');
INSERT INTO `tb_visitlog_page` VALUES (3098, '207.46.13.197', 'open po', '2022-06-15 15:35:44');
INSERT INTO `tb_visitlog_page` VALUES (3099, '139.0.122.122', 'home', '2022-06-16 04:59:16');
INSERT INTO `tb_visitlog_page` VALUES (3100, '139.0.122.122', 'menu', '2022-06-16 04:59:39');
INSERT INTO `tb_visitlog_page` VALUES (3101, '139.0.122.122', 'menu', '2022-06-16 05:01:12');
INSERT INTO `tb_visitlog_page` VALUES (3102, '139.0.122.122', 'home', '2022-06-16 05:01:13');
INSERT INTO `tb_visitlog_page` VALUES (3103, '180.253.165.1', 'home', '2022-06-16 08:18:45');
INSERT INTO `tb_visitlog_page` VALUES (3104, '180.253.165.1', 'wacana', '2022-06-16 08:18:48');
INSERT INTO `tb_visitlog_page` VALUES (3105, '2001:448a:5021:edf7:', 'home', '2022-06-16 09:34:13');
INSERT INTO `tb_visitlog_page` VALUES (3106, '2001:448a:5021:edf7:', 'order', '2022-06-16 09:34:32');
INSERT INTO `tb_visitlog_page` VALUES (3107, '2001:448a:5021:edf7:', 'open po', '2022-06-16 09:34:39');
INSERT INTO `tb_visitlog_page` VALUES (3108, '2001:448a:5021:edf7:', 'order', '2022-06-16 09:34:55');
INSERT INTO `tb_visitlog_page` VALUES (3109, '2001:448a:5021:edf7:', 'home', '2022-06-16 09:34:55');
INSERT INTO `tb_visitlog_page` VALUES (3110, '2001:448a:5021:edf7:', 'menu', '2022-06-16 09:35:02');
INSERT INTO `tb_visitlog_page` VALUES (3111, '180.253.165.1', 'menu', '2022-06-16 09:42:18');
INSERT INTO `tb_visitlog_page` VALUES (3112, '41.140.65.205', 'home', '2022-06-16 11:21:21');
INSERT INTO `tb_visitlog_page` VALUES (3113, '41.140.65.205', 'tentang', '2022-06-16 11:21:31');
INSERT INTO `tb_visitlog_page` VALUES (3114, '41.140.65.205', 'login', '2022-06-16 11:21:39');
INSERT INTO `tb_visitlog_page` VALUES (3115, '2001:448a:5021:edf7:', 'news', '2022-06-16 11:32:49');
INSERT INTO `tb_visitlog_page` VALUES (3116, '2001:448a:5021:edf7:', 'news', '2022-06-16 11:33:04');
INSERT INTO `tb_visitlog_page` VALUES (3117, '41.140.65.205', 'home', '2022-06-16 11:41:59');
INSERT INTO `tb_visitlog_page` VALUES (3118, '180.253.165.1', 'wacana', '2022-06-16 11:44:10');
INSERT INTO `tb_visitlog_page` VALUES (3119, '41.140.65.205', 'galeri', '2022-06-16 11:57:08');
INSERT INTO `tb_visitlog_page` VALUES (3120, '41.140.65.205', 'keranjang', '2022-06-16 11:57:23');
INSERT INTO `tb_visitlog_page` VALUES (3121, '41.140.65.205', 'wacana', '2022-06-16 11:59:47');
INSERT INTO `tb_visitlog_page` VALUES (3122, '41.140.65.205', 'home', '2022-06-16 12:03:53');
INSERT INTO `tb_visitlog_page` VALUES (3123, '41.140.65.205', 'login', '2022-06-16 12:05:36');
INSERT INTO `tb_visitlog_page` VALUES (3124, '41.140.65.205', 'register', '2022-06-16 12:05:57');
INSERT INTO `tb_visitlog_page` VALUES (3125, '41.140.65.205', 'login', '2022-06-16 12:09:57');
INSERT INTO `tb_visitlog_page` VALUES (3126, '41.140.65.205', 'home', '2022-06-16 12:10:03');
INSERT INTO `tb_visitlog_page` VALUES (3127, '41.140.65.205', 'galeri', '2022-06-16 12:10:05');
INSERT INTO `tb_visitlog_page` VALUES (3128, '41.140.65.205', 'user', '2022-06-16 12:10:09');
INSERT INTO `tb_visitlog_page` VALUES (3129, '41.140.65.205', 'home', '2022-06-16 12:10:55');
INSERT INTO `tb_visitlog_page` VALUES (3130, '41.140.65.205', 'user', '2022-06-16 12:10:57');
INSERT INTO `tb_visitlog_page` VALUES (3131, '41.140.65.205', 'galeri', '2022-06-16 12:11:09');
INSERT INTO `tb_visitlog_page` VALUES (3132, '41.140.65.205', 'user', '2022-06-16 12:11:14');
INSERT INTO `tb_visitlog_page` VALUES (3133, '41.140.65.205', 'home', '2022-06-16 14:32:00');
INSERT INTO `tb_visitlog_page` VALUES (3134, '2001:448a:5021:edf7:', 'home', '2022-06-16 17:17:37');
INSERT INTO `tb_visitlog_page` VALUES (3135, '2001:448a:5021:edf7:', 'wacana', '2022-06-16 17:17:37');
INSERT INTO `tb_visitlog_page` VALUES (3136, '2001:448a:5021:edf7:', 'news', '2022-06-16 17:18:05');
INSERT INTO `tb_visitlog_page` VALUES (3137, '120.188.73.77', 'news', '2022-06-16 18:02:03');
INSERT INTO `tb_visitlog_page` VALUES (3138, '149.56.150.239', 'home', '2022-06-17 02:41:57');
INSERT INTO `tb_visitlog_page` VALUES (3139, '66.249.66.223', 'news', '2022-06-17 03:05:37');
INSERT INTO `tb_visitlog_page` VALUES (3140, '66.249.66.132', 'home', '2022-06-17 04:12:07');
INSERT INTO `tb_visitlog_page` VALUES (3141, '66.249.66.41', 'home', '2022-06-17 04:12:08');
INSERT INTO `tb_visitlog_page` VALUES (3142, '44.204.108.209', 'home', '2022-06-17 04:14:11');
INSERT INTO `tb_visitlog_page` VALUES (3143, '66.249.66.86', 'home', '2022-06-17 04:54:27');
INSERT INTO `tb_visitlog_page` VALUES (3144, '66.249.66.223', 'home', '2022-06-17 04:54:37');
INSERT INTO `tb_visitlog_page` VALUES (3145, '2a03:2880:31ff:16::f', 'home', '2022-06-17 07:31:06');
INSERT INTO `tb_visitlog_page` VALUES (3146, '2001:448a:5020:2040:', 'wacana', '2022-06-17 09:47:14');
INSERT INTO `tb_visitlog_page` VALUES (3147, '2001:448a:5020:2040:', 'news', '2022-06-17 11:02:34');
INSERT INTO `tb_visitlog_page` VALUES (3148, '2001:448a:5020:2040:', 'wacana', '2022-06-17 11:10:54');
INSERT INTO `tb_visitlog_page` VALUES (3149, '2001:448a:5020:2040:', 'home', '2022-06-17 15:29:08');
INSERT INTO `tb_visitlog_page` VALUES (3150, '2001:448a:5020:2040:', 'wacana', '2022-06-17 15:29:10');
INSERT INTO `tb_visitlog_page` VALUES (3151, '2001:448a:5020:2040:', 'news', '2022-06-17 15:29:12');
INSERT INTO `tb_visitlog_page` VALUES (3152, '2a03:2880:ff:14::fac', 'home', '2022-06-17 16:49:14');
INSERT INTO `tb_visitlog_page` VALUES (3153, '2a03:2880:31ff::face', 'home', '2022-06-17 16:49:16');
INSERT INTO `tb_visitlog_page` VALUES (3154, '114.4.4.201', 'news', '2022-06-17 17:02:31');
INSERT INTO `tb_visitlog_page` VALUES (3155, '114.4.4.197', 'news', '2022-06-17 17:11:20');
INSERT INTO `tb_visitlog_page` VALUES (3156, '66.249.73.108', 'news', '2022-06-19 15:17:55');
INSERT INTO `tb_visitlog_page` VALUES (3157, '2a02:26f7:dfcd:4000:', 'menu', '2022-06-19 18:31:47');
INSERT INTO `tb_visitlog_page` VALUES (3158, '2a02:26f7:dfcd:46c0:', 'menu', '2022-06-19 23:18:49');
INSERT INTO `tb_visitlog_page` VALUES (3159, '2001:448a:5021:3697:', 'home', '2022-06-20 10:38:34');
INSERT INTO `tb_visitlog_page` VALUES (3160, '2001:448a:5021:3697:', 'wacana', '2022-06-20 10:39:32');
INSERT INTO `tb_visitlog_page` VALUES (3161, '2001:448a:5021:3697:', 'order', '2022-06-20 10:39:34');
INSERT INTO `tb_visitlog_page` VALUES (3162, '2001:448a:5021:3697:', 'open po', '2022-06-20 10:39:35');
INSERT INTO `tb_visitlog_page` VALUES (3163, '2001:448a:5021:3697:', 'home', '2022-06-20 10:53:03');
INSERT INTO `tb_visitlog_page` VALUES (3164, '2001:448a:5021:3697:', 'home', '2022-06-20 10:53:58');
INSERT INTO `tb_visitlog_page` VALUES (3165, '2001:448a:5021:3697:', 'open po', '2022-06-20 11:02:24');
INSERT INTO `tb_visitlog_page` VALUES (3166, '2001:448a:5021:3697:', 'home', '2022-06-20 11:02:27');
INSERT INTO `tb_visitlog_page` VALUES (3167, '202.6.227.46', 'home', '2022-06-20 11:05:47');
INSERT INTO `tb_visitlog_page` VALUES (3168, '2001:448a:5021:3697:', 'home', '2022-06-20 11:13:57');
INSERT INTO `tb_visitlog_page` VALUES (3169, '2001:448a:5021:3697:', 'home', '2022-06-20 11:14:22');
INSERT INTO `tb_visitlog_page` VALUES (3170, '2001:448a:5021:3697:', 'open po', '2022-06-20 11:14:43');
INSERT INTO `tb_visitlog_page` VALUES (3171, '2001:448a:5021:3697:', 'home', '2022-06-20 11:23:29');
INSERT INTO `tb_visitlog_page` VALUES (3172, '2001:448a:5021:3697:', 'home', '2022-06-20 11:57:39');
INSERT INTO `tb_visitlog_page` VALUES (3173, '2001:448a:5021:3697:', 'home', '2022-06-20 11:59:09');
INSERT INTO `tb_visitlog_page` VALUES (3174, '2001:448a:5021:3697:', 'wacana', '2022-06-20 11:59:11');
INSERT INTO `tb_visitlog_page` VALUES (3175, '2001:448a:5021:3697:', 'wacana', '2022-06-20 11:59:42');
INSERT INTO `tb_visitlog_page` VALUES (3176, '180.253.162.216', 'login', '2022-06-20 13:24:43');
INSERT INTO `tb_visitlog_page` VALUES (3177, '180.253.162.216', 'register', '2022-06-20 13:24:47');
INSERT INTO `tb_visitlog_page` VALUES (3178, '180.253.162.216', 'login', '2022-06-20 13:25:38');
INSERT INTO `tb_visitlog_page` VALUES (3179, '180.253.162.216', 'home', '2022-06-20 13:25:53');
INSERT INTO `tb_visitlog_page` VALUES (3180, '180.253.162.216', 'order', '2022-06-20 13:26:10');
INSERT INTO `tb_visitlog_page` VALUES (3181, '180.253.162.216', 'menu', '2022-06-20 13:26:20');
INSERT INTO `tb_visitlog_page` VALUES (3182, '180.253.162.216', 'keranjang', '2022-06-20 13:26:42');
INSERT INTO `tb_visitlog_page` VALUES (3183, '180.253.162.216', 'menu', '2022-06-20 13:26:52');
INSERT INTO `tb_visitlog_page` VALUES (3184, '180.253.162.216', 'order', '2022-06-20 13:27:36');
INSERT INTO `tb_visitlog_page` VALUES (3185, '180.253.162.216', 'open po', '2022-06-20 13:27:41');
INSERT INTO `tb_visitlog_page` VALUES (3186, '180.253.162.216', 'keranjang', '2022-06-20 13:27:58');
INSERT INTO `tb_visitlog_page` VALUES (3187, '118.99.81.70', 'home', '2022-06-20 13:41:14');
INSERT INTO `tb_visitlog_page` VALUES (3188, '2606:54c0:3480:18::1', 'menu', '2022-06-20 14:05:50');
INSERT INTO `tb_visitlog_page` VALUES (3189, '180.253.162.216', 'home', '2022-06-20 14:41:08');
INSERT INTO `tb_visitlog_page` VALUES (3190, '180.253.162.216', 'syarat & ketentuan', '2022-06-20 14:41:21');
INSERT INTO `tb_visitlog_page` VALUES (3191, '180.253.162.216', 'order', '2022-06-20 14:41:33');
INSERT INTO `tb_visitlog_page` VALUES (3192, '180.253.162.216', 'keranjang', '2022-06-20 14:41:40');
INSERT INTO `tb_visitlog_page` VALUES (3193, '180.253.162.216', 'galeri', '2022-06-20 14:41:43');
INSERT INTO `tb_visitlog_page` VALUES (3194, '180.253.162.216', 'keranjang', '2022-06-20 14:42:04');
INSERT INTO `tb_visitlog_page` VALUES (3195, '180.253.162.216', 'tentang', '2022-06-20 14:42:06');
INSERT INTO `tb_visitlog_page` VALUES (3196, '180.253.162.216', 'galeri', '2022-06-20 14:42:09');
INSERT INTO `tb_visitlog_page` VALUES (3197, '180.253.162.216', 'wacana', '2022-06-20 14:42:11');
INSERT INTO `tb_visitlog_page` VALUES (3198, '180.253.162.216', 'news', '2022-06-20 14:42:46');
INSERT INTO `tb_visitlog_page` VALUES (3199, '180.253.162.216', 'wacana', '2022-06-20 14:43:20');
INSERT INTO `tb_visitlog_page` VALUES (3200, '180.253.162.216', 'galeri', '2022-06-20 14:43:28');
INSERT INTO `tb_visitlog_page` VALUES (3201, '118.99.81.70', 'home', '2022-06-20 15:01:38');
INSERT INTO `tb_visitlog_page` VALUES (3202, '118.99.81.70', 'menu', '2022-06-20 15:01:44');
INSERT INTO `tb_visitlog_page` VALUES (3203, '118.99.81.70', 'galeri', '2022-06-20 15:01:57');
INSERT INTO `tb_visitlog_page` VALUES (3204, '118.99.81.70', 'wacana', '2022-06-20 15:02:01');
INSERT INTO `tb_visitlog_page` VALUES (3205, '118.99.81.70', 'news', '2022-06-20 15:02:05');
INSERT INTO `tb_visitlog_page` VALUES (3206, '118.99.81.70', 'news', '2022-06-20 15:02:08');
INSERT INTO `tb_visitlog_page` VALUES (3207, '118.99.81.70', 'news', '2022-06-20 15:02:11');
INSERT INTO `tb_visitlog_page` VALUES (3208, '118.99.81.70', 'news', '2022-06-20 15:02:13');
INSERT INTO `tb_visitlog_page` VALUES (3209, '118.99.81.70', 'news', '2022-06-20 15:25:46');
INSERT INTO `tb_visitlog_page` VALUES (3210, '118.99.81.70', 'news', '2022-06-20 15:25:51');
INSERT INTO `tb_visitlog_page` VALUES (3211, '118.99.81.70', 'news', '2022-06-20 15:26:02');
INSERT INTO `tb_visitlog_page` VALUES (3212, '2606:54c0:3480:18::1', 'menu', '2022-06-20 19:23:39');
INSERT INTO `tb_visitlog_page` VALUES (3213, '2606:54c0:34a0:18::1', 'menu', '2022-06-20 19:27:44');
INSERT INTO `tb_visitlog_page` VALUES (3214, '66.249.70.68', 'order', '2022-06-21 00:26:03');
INSERT INTO `tb_visitlog_page` VALUES (3215, '205.169.39.113', 'home', '2022-06-21 07:54:11');
INSERT INTO `tb_visitlog_page` VALUES (3216, '2001:448a:5020:817d:', 'home', '2022-06-21 13:44:37');
INSERT INTO `tb_visitlog_page` VALUES (3217, '2001:448a:5020:13c3:', 'home', '2022-06-22 08:37:10');
INSERT INTO `tb_visitlog_page` VALUES (3218, '2001:448a:5020:13c3:', 'wacana', '2022-06-22 08:37:14');
INSERT INTO `tb_visitlog_page` VALUES (3219, '2001:448a:5020:13c3:', 'home', '2022-06-22 08:51:38');
INSERT INTO `tb_visitlog_page` VALUES (3220, '2001:448a:5020:13c3:', 'wacana', '2022-06-22 11:57:56');
INSERT INTO `tb_visitlog_page` VALUES (3221, '66.249.68.21', 'home', '2022-06-22 22:53:31');
INSERT INTO `tb_visitlog_page` VALUES (3222, '66.249.68.1', 'home', '2022-06-23 03:14:59');
INSERT INTO `tb_visitlog_page` VALUES (3223, '66.249.68.21', 'home', '2022-06-23 07:57:44');
INSERT INTO `tb_visitlog_page` VALUES (3224, '2001:448a:5020:c39b:', 'home', '2022-06-23 08:34:56');
INSERT INTO `tb_visitlog_page` VALUES (3225, '2001:448a:5020:c39b:', 'wacana', '2022-06-23 08:34:58');
INSERT INTO `tb_visitlog_page` VALUES (3226, '180.253.164.108', 'home', '2022-06-23 08:44:45');
INSERT INTO `tb_visitlog_page` VALUES (3227, '180.253.164.108', 'order', '2022-06-23 08:44:52');
INSERT INTO `tb_visitlog_page` VALUES (3228, '180.253.164.108', 'open po', '2022-06-23 08:45:01');
INSERT INTO `tb_visitlog_page` VALUES (3229, '2001:448a:5020:c39b:', 'wacana', '2022-06-23 10:52:22');
INSERT INTO `tb_visitlog_page` VALUES (3230, '2001:448a:5020:c39b:', 'wacana', '2022-06-23 12:16:08');
INSERT INTO `tb_visitlog_page` VALUES (3231, '2001:448a:5020:c39b:', 'home', '2022-06-23 13:39:34');
INSERT INTO `tb_visitlog_page` VALUES (3232, '2001:448a:5020:c39b:', 'menu', '2022-06-23 13:39:48');
INSERT INTO `tb_visitlog_page` VALUES (3233, '2001:448a:5020:c39b:', 'home', '2022-06-23 13:57:31');
INSERT INTO `tb_visitlog_page` VALUES (3234, '207.46.13.42', 'order', '2022-06-23 14:43:05');
INSERT INTO `tb_visitlog_page` VALUES (3235, '2001:448a:5020:c39b:', 'open po', '2022-06-23 15:19:38');
INSERT INTO `tb_visitlog_page` VALUES (3236, '202.6.227.46', 'wacana', '2022-06-23 17:10:59');
INSERT INTO `tb_visitlog_page` VALUES (3237, '2001:448a:5021:942d:', 'menu', '2022-06-24 07:56:33');
INSERT INTO `tb_visitlog_page` VALUES (3238, '125.164.4.106', 'menu', '2022-06-24 10:30:54');
INSERT INTO `tb_visitlog_page` VALUES (3239, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:12:03');
INSERT INTO `tb_visitlog_page` VALUES (3240, '2001:448a:5021:942d:', 'home', '2022-06-24 13:13:39');
INSERT INTO `tb_visitlog_page` VALUES (3241, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:13:41');
INSERT INTO `tb_visitlog_page` VALUES (3242, '2001:448a:5021:942d:', 'news', '2022-06-24 13:13:44');
INSERT INTO `tb_visitlog_page` VALUES (3243, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:13:57');
INSERT INTO `tb_visitlog_page` VALUES (3244, '2001:448a:5021:942d:', 'news', '2022-06-24 13:14:06');
INSERT INTO `tb_visitlog_page` VALUES (3245, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:14:09');
INSERT INTO `tb_visitlog_page` VALUES (3246, '2001:448a:5021:942d:', 'news', '2022-06-24 13:14:13');
INSERT INTO `tb_visitlog_page` VALUES (3247, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:14:45');
INSERT INTO `tb_visitlog_page` VALUES (3248, '2001:448a:5021:942d:', 'home', '2022-06-24 13:15:24');
INSERT INTO `tb_visitlog_page` VALUES (3249, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:15:25');
INSERT INTO `tb_visitlog_page` VALUES (3250, '2001:448a:5021:942d:', 'news', '2022-06-24 13:15:28');
INSERT INTO `tb_visitlog_page` VALUES (3251, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:16:36');
INSERT INTO `tb_visitlog_page` VALUES (3252, '2001:448a:5021:942d:', 'home', '2022-06-24 13:16:40');
INSERT INTO `tb_visitlog_page` VALUES (3253, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:17:31');
INSERT INTO `tb_visitlog_page` VALUES (3254, '2001:448a:5021:942d:', 'news', '2022-06-24 13:17:32');
INSERT INTO `tb_visitlog_page` VALUES (3255, '2001:448a:5021:942d:', 'news', '2022-06-24 13:23:08');
INSERT INTO `tb_visitlog_page` VALUES (3256, '2001:448a:5021:942d:', 'news', '2022-06-24 13:23:51');
INSERT INTO `tb_visitlog_page` VALUES (3257, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:25:33');
INSERT INTO `tb_visitlog_page` VALUES (3258, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:25:42');
INSERT INTO `tb_visitlog_page` VALUES (3259, '2001:448a:5021:942d:', 'wacana', '2022-06-24 13:26:11');
INSERT INTO `tb_visitlog_page` VALUES (3260, '2001:448a:5021:942d:', 'news', '2022-06-24 13:26:21');
INSERT INTO `tb_visitlog_page` VALUES (3261, '2001:448a:5021:942d:', 'news', '2022-06-24 13:54:21');
INSERT INTO `tb_visitlog_page` VALUES (3262, '118.98.26.6', 'news', '2022-06-24 17:12:24');
INSERT INTO `tb_visitlog_page` VALUES (3263, '2606:54c0:34a0:18::1', 'news', '2022-06-24 17:16:11');
INSERT INTO `tb_visitlog_page` VALUES (3264, '2001:448a:5021:942d:', 'wacana', '2022-06-24 18:48:13');
INSERT INTO `tb_visitlog_page` VALUES (3265, '2001:448a:5021:942d:', 'news', '2022-06-24 18:48:16');
INSERT INTO `tb_visitlog_page` VALUES (3266, '66.249.68.1', 'news', '2022-06-25 05:36:45');
INSERT INTO `tb_visitlog_page` VALUES (3267, '66.249.70.72', 'wacana', '2022-06-25 06:41:54');
INSERT INTO `tb_visitlog_page` VALUES (3268, '66.249.68.1', 'wacana', '2022-06-25 06:59:18');
INSERT INTO `tb_visitlog_page` VALUES (3269, '66.249.70.86', 'home', '2022-06-26 00:40:38');
INSERT INTO `tb_visitlog_page` VALUES (3270, '66.249.64.122', 'home', '2022-06-26 13:11:31');
INSERT INTO `tb_visitlog_page` VALUES (3271, '2606:54c0:34a0:50::1', 'home', '2022-06-26 16:29:20');
INSERT INTO `tb_visitlog_page` VALUES (3272, '2606:54c0:34a0:50::1', 'menu', '2022-06-26 16:29:35');
INSERT INTO `tb_visitlog_page` VALUES (3273, '66.249.70.80', 'home', '2022-06-26 22:53:08');
INSERT INTO `tb_visitlog_page` VALUES (3274, '66.249.70.72', 'home', '2022-06-27 07:00:16');
INSERT INTO `tb_visitlog_page` VALUES (3275, '2001:448a:5020:552a:', 'home', '2022-06-27 08:22:22');
INSERT INTO `tb_visitlog_page` VALUES (3276, '2001:448a:5020:552a:', 'home', '2022-06-27 09:08:40');
INSERT INTO `tb_visitlog_page` VALUES (3277, '2001:448a:5020:552a:', 'wacana', '2022-06-27 09:08:41');
INSERT INTO `tb_visitlog_page` VALUES (3278, '2001:448a:5020:552a:', 'home', '2022-06-27 10:11:57');
INSERT INTO `tb_visitlog_page` VALUES (3279, '2001:448a:5020:552a:', 'order', '2022-06-27 10:11:58');
INSERT INTO `tb_visitlog_page` VALUES (3280, '2001:448a:5020:552a:', 'open po', '2022-06-27 10:12:00');
INSERT INTO `tb_visitlog_page` VALUES (3281, '69.131.77.193', 'menu', '2022-06-27 10:52:50');
INSERT INTO `tb_visitlog_page` VALUES (3282, '125.164.15.189', 'menu', '2022-06-27 11:24:37');
INSERT INTO `tb_visitlog_page` VALUES (3283, '125.164.15.189', 'kontak', '2022-06-27 11:24:41');
INSERT INTO `tb_visitlog_page` VALUES (3284, '125.164.15.189', 'open po', '2022-06-27 11:39:10');
INSERT INTO `tb_visitlog_page` VALUES (3285, '123.253.235.25', 'home', '2022-06-27 18:25:36');
INSERT INTO `tb_visitlog_page` VALUES (3286, '123.253.235.25', 'menu', '2022-06-27 18:26:08');
INSERT INTO `tb_visitlog_page` VALUES (3287, '123.253.235.25', 'home', '2022-06-27 18:26:26');
INSERT INTO `tb_visitlog_page` VALUES (3288, '123.253.235.25', 'galeri', '2022-06-27 18:26:37');
INSERT INTO `tb_visitlog_page` VALUES (3289, '123.253.235.25', 'home', '2022-06-27 18:27:06');
INSERT INTO `tb_visitlog_page` VALUES (3290, '125.164.9.120', 'home', '2022-06-28 08:30:17');
INSERT INTO `tb_visitlog_page` VALUES (3291, '125.164.9.120', 'order', '2022-06-28 08:30:22');
INSERT INTO `tb_visitlog_page` VALUES (3292, '125.164.9.120', 'open po', '2022-06-28 08:30:23');
INSERT INTO `tb_visitlog_page` VALUES (3293, '125.164.9.120', 'menu', '2022-06-28 16:36:42');
INSERT INTO `tb_visitlog_page` VALUES (3294, '125.164.9.120', 'login', '2022-06-28 16:38:06');
INSERT INTO `tb_visitlog_page` VALUES (3295, '125.164.9.120', 'wacana', '2022-06-28 16:38:12');
INSERT INTO `tb_visitlog_page` VALUES (3296, '125.164.9.120', 'order', '2022-06-28 16:38:15');
INSERT INTO `tb_visitlog_page` VALUES (3297, '125.164.9.120', 'menu', '2022-06-28 16:38:17');
INSERT INTO `tb_visitlog_page` VALUES (3298, '66.249.70.80', 'wacana', '2022-06-29 01:28:43');
INSERT INTO `tb_visitlog_page` VALUES (3299, '202.6.227.46', 'home', '2022-06-29 11:25:13');
INSERT INTO `tb_visitlog_page` VALUES (3300, '66.249.70.66', 'wacana', '2022-06-29 14:26:49');
INSERT INTO `tb_visitlog_page` VALUES (3301, '66.249.70.80', 'open po', '2022-06-29 16:46:02');
INSERT INTO `tb_visitlog_page` VALUES (3302, '66.249.74.28', 'keranjang', '2022-06-29 19:35:04');
INSERT INTO `tb_visitlog_page` VALUES (3303, '140.0.142.6', 'home', '2022-06-29 22:31:20');
INSERT INTO `tb_visitlog_page` VALUES (3304, '140.0.142.6', 'menu', '2022-06-29 22:31:32');
INSERT INTO `tb_visitlog_page` VALUES (3305, '2001:448a:5021:7177:', 'home', '2022-06-30 10:42:43');
INSERT INTO `tb_visitlog_page` VALUES (3306, '2001:448a:5021:7177:', 'wacana', '2022-06-30 10:42:44');
INSERT INTO `tb_visitlog_page` VALUES (3307, '202.6.227.46', 'wacana', '2022-06-30 10:42:58');
INSERT INTO `tb_visitlog_page` VALUES (3308, '202.6.227.46', 'wacana', '2022-06-30 10:43:34');
INSERT INTO `tb_visitlog_page` VALUES (3309, '202.6.227.46', 'news', '2022-06-30 10:43:38');
INSERT INTO `tb_visitlog_page` VALUES (3310, '2001:448a:5021:7177:', 'news', '2022-06-30 10:45:34');
INSERT INTO `tb_visitlog_page` VALUES (3311, '2001:448a:5021:7177:', 'wacana', '2022-06-30 10:45:47');
INSERT INTO `tb_visitlog_page` VALUES (3312, '2001:448a:5021:7177:', 'news', '2022-06-30 10:45:52');
INSERT INTO `tb_visitlog_page` VALUES (3313, '2001:448a:5021:7177:', 'order', '2022-06-30 10:48:06');
INSERT INTO `tb_visitlog_page` VALUES (3314, '36.82.17.16', 'home', '2022-06-30 10:48:26');
INSERT INTO `tb_visitlog_page` VALUES (3315, '36.82.17.16', 'wacana', '2022-06-30 10:48:29');
INSERT INTO `tb_visitlog_page` VALUES (3316, '36.82.17.16', 'news', '2022-06-30 10:48:33');
INSERT INTO `tb_visitlog_page` VALUES (3317, '36.82.17.16', 'wacana', '2022-06-30 10:50:21');
INSERT INTO `tb_visitlog_page` VALUES (3318, '2001:448a:5021:7177:', 'news', '2022-06-30 10:50:34');
INSERT INTO `tb_visitlog_page` VALUES (3319, '2001:448a:5021:7177:', 'news', '2022-06-30 11:02:50');
INSERT INTO `tb_visitlog_page` VALUES (3320, '2001:448a:5021:7177:', 'wacana', '2022-06-30 11:26:17');
INSERT INTO `tb_visitlog_page` VALUES (3321, '2001:448a:5021:7177:', 'home', '2022-06-30 11:26:28');
INSERT INTO `tb_visitlog_page` VALUES (3322, '2001:448a:5021:7177:', 'menu', '2022-06-30 11:26:32');
INSERT INTO `tb_visitlog_page` VALUES (3323, '36.82.17.16', 'kontak', '2022-06-30 11:50:02');
INSERT INTO `tb_visitlog_page` VALUES (3324, '36.82.17.16', 'menu', '2022-06-30 11:50:06');
INSERT INTO `tb_visitlog_page` VALUES (3325, '125.164.1.220', 'news', '2022-06-30 12:41:02');
INSERT INTO `tb_visitlog_page` VALUES (3326, '66.249.74.10', 'open po', '2022-06-30 12:47:05');
INSERT INTO `tb_visitlog_page` VALUES (3327, '66.249.77.8', 'open po', '2022-06-30 13:17:16');
INSERT INTO `tb_visitlog_page` VALUES (3328, '180.253.150.101', 'news', '2022-06-30 13:55:23');
INSERT INTO `tb_visitlog_page` VALUES (3329, '202.6.227.46', 'home', '2022-06-30 13:57:42');
INSERT INTO `tb_visitlog_page` VALUES (3330, '202.6.227.46', 'wacana', '2022-06-30 13:57:43');
INSERT INTO `tb_visitlog_page` VALUES (3331, '202.6.227.46', 'news', '2022-06-30 13:57:50');
INSERT INTO `tb_visitlog_page` VALUES (3332, '180.253.150.101', 'home', '2022-06-30 13:58:30');
INSERT INTO `tb_visitlog_page` VALUES (3333, '180.253.150.101', 'wacana', '2022-06-30 13:58:33');
INSERT INTO `tb_visitlog_page` VALUES (3334, '180.253.150.101', 'news', '2022-06-30 13:58:36');
INSERT INTO `tb_visitlog_page` VALUES (3335, '180.253.150.101', 'wacana', '2022-06-30 13:58:43');
INSERT INTO `tb_visitlog_page` VALUES (3336, '180.253.150.101', 'news', '2022-06-30 13:58:46');
INSERT INTO `tb_visitlog_page` VALUES (3337, '202.6.227.46', 'news', '2022-06-30 14:01:51');
INSERT INTO `tb_visitlog_page` VALUES (3338, '180.253.150.101', 'news', '2022-06-30 14:02:04');
INSERT INTO `tb_visitlog_page` VALUES (3339, '202.6.227.46', 'news', '2022-06-30 14:02:30');
INSERT INTO `tb_visitlog_page` VALUES (3340, '202.6.227.46', 'wacana', '2022-06-30 14:02:37');
INSERT INTO `tb_visitlog_page` VALUES (3341, '202.6.227.46', 'news', '2022-06-30 14:02:42');
INSERT INTO `tb_visitlog_page` VALUES (3342, '180.253.150.101', 'wacana', '2022-06-30 14:03:04');
INSERT INTO `tb_visitlog_page` VALUES (3343, '180.253.150.101', 'news', '2022-06-30 14:03:22');
INSERT INTO `tb_visitlog_page` VALUES (3344, '202.6.227.46', 'wacana', '2022-06-30 14:03:31');
INSERT INTO `tb_visitlog_page` VALUES (3345, '180.253.150.101', 'wacana', '2022-06-30 14:04:14');
INSERT INTO `tb_visitlog_page` VALUES (3346, '180.253.150.101', 'news', '2022-06-30 14:04:17');
INSERT INTO `tb_visitlog_page` VALUES (3347, '180.253.150.101', 'wacana', '2022-06-30 14:04:31');
INSERT INTO `tb_visitlog_page` VALUES (3348, '180.253.150.101', 'news', '2022-06-30 14:04:34');
INSERT INTO `tb_visitlog_page` VALUES (3349, '180.253.150.101', 'wacana', '2022-06-30 14:04:50');
INSERT INTO `tb_visitlog_page` VALUES (3350, '180.253.150.101', 'news', '2022-06-30 14:04:55');
INSERT INTO `tb_visitlog_page` VALUES (3351, '180.253.150.101', 'wacana', '2022-06-30 14:05:02');
INSERT INTO `tb_visitlog_page` VALUES (3352, '180.253.150.101', 'news', '2022-06-30 14:05:15');
INSERT INTO `tb_visitlog_page` VALUES (3353, '125.164.1.220', 'news', '2022-06-30 14:36:44');
INSERT INTO `tb_visitlog_page` VALUES (3354, '125.164.1.220', 'wacana', '2022-06-30 14:37:01');
INSERT INTO `tb_visitlog_page` VALUES (3355, '66.249.74.28', 'menu', '2022-06-30 19:45:16');
INSERT INTO `tb_visitlog_page` VALUES (3356, '66.249.70.66', 'home', '2022-07-01 05:24:01');
INSERT INTO `tb_visitlog_page` VALUES (3357, '66.249.77.5', 'open po', '2022-07-01 05:51:46');
INSERT INTO `tb_visitlog_page` VALUES (3358, '66.249.77.26', 'open po', '2022-07-01 06:21:30');
INSERT INTO `tb_visitlog_page` VALUES (3359, '125.164.220.67', 'menu', '2022-07-01 08:39:04');
INSERT INTO `tb_visitlog_page` VALUES (3360, '2001:448a:5020:3849:', 'news', '2022-07-01 09:06:11');
INSERT INTO `tb_visitlog_page` VALUES (3361, '66.249.74.28', 'home', '2022-07-01 14:56:24');
INSERT INTO `tb_visitlog_page` VALUES (3362, '207.46.13.42', 'order', '2022-07-01 15:58:44');
INSERT INTO `tb_visitlog_page` VALUES (3363, '2001:448a:5020:3849:', 'home', '2022-07-01 16:06:41');
INSERT INTO `tb_visitlog_page` VALUES (3364, '2001:448a:5020:3849:', 'wacana', '2022-07-01 16:06:46');
INSERT INTO `tb_visitlog_page` VALUES (3365, '2001:448a:5020:3849:', 'wacana', '2022-07-01 16:06:50');
INSERT INTO `tb_visitlog_page` VALUES (3366, '2001:448a:5020:3849:', 'news', '2022-07-01 16:09:02');
INSERT INTO `tb_visitlog_page` VALUES (3367, '180.253.165.52', 'news', '2022-07-01 16:29:54');
INSERT INTO `tb_visitlog_page` VALUES (3368, '114.4.4.135', 'news', '2022-07-01 17:13:20');
INSERT INTO `tb_visitlog_page` VALUES (3369, '17.121.112.102', 'galeri', '2022-07-02 09:15:43');
INSERT INTO `tb_visitlog_page` VALUES (3370, '66.249.74.28', 'kontak', '2022-07-02 12:10:45');
INSERT INTO `tb_visitlog_page` VALUES (3371, '66.249.77.18', 'home', '2022-07-02 12:54:41');
INSERT INTO `tb_visitlog_page` VALUES (3372, '66.249.72.178', 'order', '2022-07-02 16:56:17');
INSERT INTO `tb_visitlog_page` VALUES (3373, '66.249.77.26', 'menu', '2022-07-02 22:48:12');
INSERT INTO `tb_visitlog_page` VALUES (3374, '35.155.153.10', 'home', '2022-07-03 05:22:19');
INSERT INTO `tb_visitlog_page` VALUES (3375, '66.249.69.251', 'news', '2022-07-03 08:49:45');
INSERT INTO `tb_visitlog_page` VALUES (3376, '66.249.69.253', 'news', '2022-07-03 15:19:11');
INSERT INTO `tb_visitlog_page` VALUES (3377, '66.249.69.253', 'order', '2022-07-03 17:58:12');
INSERT INTO `tb_visitlog_page` VALUES (3378, '180.247.93.45', 'menu', '2022-07-04 08:26:25');

-- ----------------------------
-- Table structure for tb_visitorlog
-- ----------------------------
DROP TABLE IF EXISTS `tb_visitorlog`;
CREATE TABLE `tb_visitorlog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tb_visitorlog_date` date NOT NULL,
  `tb_visitorlog_ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tb_visitorlog_client` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tb_visitorlog_times` int NOT NULL,
  `tb_visitorlog_lastvisit` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_visitorlog_ip`(`tb_visitorlog_ip` ASC) USING BTREE,
  INDEX `tb_visitorlog_client`(`tb_visitorlog_client` ASC) USING BTREE,
  INDEX `tb_visitorlog_date`(`tb_visitorlog_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1675 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_visitorlog
-- ----------------------------
INSERT INTO `tb_visitorlog` VALUES (1, '2021-12-28', '125.164.14.212', 'Chrome [98]', 1, '2021-12-28 16:28:10');
INSERT INTO `tb_visitorlog` VALUES (2, '2021-12-28', '66.249.64.120', 'Chrome [96]', 1, '2021-12-28 19:08:53');
INSERT INTO `tb_visitorlog` VALUES (3, '2021-12-28', '114.119.152.54', ' [0]', 1, '2021-12-28 21:03:57');
INSERT INTO `tb_visitorlog` VALUES (4, '2021-12-29', '182.1.77.10', 'Safari [12.1]', 1, '2021-12-29 07:48:28');
INSERT INTO `tb_visitorlog` VALUES (5, '2021-12-29', '182.1.76.30', 'Safari [12.1]', 1, '2021-12-29 07:54:11');
INSERT INTO `tb_visitorlog` VALUES (6, '2021-12-29', '36.81.255.151', 'Safari [12.1]', 1, '2021-12-29 10:58:00');
INSERT INTO `tb_visitorlog` VALUES (7, '2021-12-29', '125.164.13.173', 'Chrome [96]', 1, '2021-12-29 14:36:00');
INSERT INTO `tb_visitorlog` VALUES (8, '2021-12-29', '202.6.227.46', 'Chrome [96]', 2, '2021-12-29 17:01:02');
INSERT INTO `tb_visitorlog` VALUES (9, '2021-12-29', '114.119.158.234', ' [0]', 1, '2021-12-29 23:09:47');
INSERT INTO `tb_visitorlog` VALUES (10, '2021-12-30', '40.77.167.36', ' [0]', 1, '2021-12-30 00:42:45');
INSERT INTO `tb_visitorlog` VALUES (11, '2021-12-30', '202.6.227.46', 'Chrome [96]', 22, '2021-12-30 18:03:41');
INSERT INTO `tb_visitorlog` VALUES (12, '2021-12-30', '125.164.2.111', 'Chrome [98]', 6, '2021-12-30 17:21:19');
INSERT INTO `tb_visitorlog` VALUES (13, '2021-12-30', '114.119.157.103', 'Safari [537.36]', 1, '2021-12-30 10:31:14');
INSERT INTO `tb_visitorlog` VALUES (14, '2021-12-30', '66.249.70.84', 'Chrome [96]', 1, '2021-12-30 18:46:50');
INSERT INTO `tb_visitorlog` VALUES (15, '2021-12-30', '66.249.70.80', 'Chrome [96]', 1, '2021-12-30 20:26:17');
INSERT INTO `tb_visitorlog` VALUES (16, '2021-12-30', '66.249.70.76', 'Chrome [96]', 1, '2021-12-30 23:28:27');
INSERT INTO `tb_visitorlog` VALUES (17, '2021-12-31', '66.249.70.84', 'Chrome [96]', 1, '2021-12-31 01:36:33');
INSERT INTO `tb_visitorlog` VALUES (18, '2021-12-31', '40.77.167.36', ' [NaN]', 1, '2021-12-31 01:53:49');
INSERT INTO `tb_visitorlog` VALUES (19, '2021-12-31', '66.249.64.120', 'Chrome [96]', 1, '2021-12-31 06:00:22');
INSERT INTO `tb_visitorlog` VALUES (20, '2021-12-31', '202.6.227.46', 'Chrome [96]', 9, '2021-12-31 11:28:34');
INSERT INTO `tb_visitorlog` VALUES (21, '2021-12-31', '66.249.70.82', 'Chrome [96]', 1, '2021-12-31 10:39:58');
INSERT INTO `tb_visitorlog` VALUES (22, '2021-12-31', '180.247.180.10', 'Firefox [96]', 1, '2021-12-31 11:24:23');
INSERT INTO `tb_visitorlog` VALUES (23, '2021-12-31', '220.255.211.112', 'Safari [15.2]', 1, '2021-12-31 11:24:58');
INSERT INTO `tb_visitorlog` VALUES (24, '2021-12-31', '180.247.180.10', 'Chrome [96]', 1, '2021-12-31 12:58:29');
INSERT INTO `tb_visitorlog` VALUES (25, '2021-12-31', '114.4.4.134', 'Chrome [96]', 1, '2021-12-31 17:03:55');
INSERT INTO `tb_visitorlog` VALUES (26, '2021-12-31', '202.67.40.253', 'Chrome [96]', 3, '2021-12-31 18:04:18');
INSERT INTO `tb_visitorlog` VALUES (27, '2021-12-31', '66.249.70.74', 'Chrome [96]', 1, '2021-12-31 19:03:38');
INSERT INTO `tb_visitorlog` VALUES (28, '2022-01-01', '103.108.21.125', 'Chrome [96]', 1, '2022-01-01 16:58:49');
INSERT INTO `tb_visitorlog` VALUES (29, '2022-01-01', '66.249.64.120', 'Chrome [96]', 1, '2022-01-01 22:14:23');
INSERT INTO `tb_visitorlog` VALUES (30, '2022-01-02', '40.77.167.36', ' [0]', 1, '2022-01-02 02:02:22');
INSERT INTO `tb_visitorlog` VALUES (31, '2022-01-02', '66.249.70.68', 'Chrome [96]', 2, '2022-01-02 08:21:20');
INSERT INTO `tb_visitorlog` VALUES (32, '2022-01-02', '202.67.40.207', 'Chrome [96]', 1, '2022-01-02 12:40:04');
INSERT INTO `tb_visitorlog` VALUES (33, '2022-01-02', '69.160.160.59', 'Chrome [92]', 1, '2022-01-02 18:34:58');
INSERT INTO `tb_visitorlog` VALUES (34, '2022-01-03', '114.125.110.208', ' [0]', 1, '2022-01-03 08:19:12');
INSERT INTO `tb_visitorlog` VALUES (35, '2022-01-03', '140.0.3.131', ' [0]', 1, '2022-01-03 08:19:44');
INSERT INTO `tb_visitorlog` VALUES (36, '2022-01-03', '202.6.227.46', 'Chrome [96]', 7, '2022-01-03 17:35:05');
INSERT INTO `tb_visitorlog` VALUES (37, '2022-01-03', '180.247.130.192', 'Chrome [96]', 4, '2022-01-03 08:52:47');
INSERT INTO `tb_visitorlog` VALUES (38, '2022-01-03', '180.247.130.192', 'Chrome [98]', 4, '2022-01-03 09:58:29');
INSERT INTO `tb_visitorlog` VALUES (39, '2022-01-03', '180.253.161.249', 'Chrome [98]', 9, '2022-01-03 09:58:01');
INSERT INTO `tb_visitorlog` VALUES (40, '2022-01-03', '180.253.161.249', 'Chrome [96]', 1, '2022-01-03 12:20:17');
INSERT INTO `tb_visitorlog` VALUES (41, '2022-01-03', '66.249.70.74', 'Chrome [96]', 1, '2022-01-03 12:31:26');
INSERT INTO `tb_visitorlog` VALUES (42, '2022-01-04', '66.249.70.74', 'Chrome [96]', 1, '2022-01-04 05:46:26');
INSERT INTO `tb_visitorlog` VALUES (43, '2022-01-04', '202.6.227.46', 'Chrome [96]', 6, '2022-01-04 17:30:28');
INSERT INTO `tb_visitorlog` VALUES (44, '2022-01-04', '180.247.130.192', 'Chrome [96]', 1, '2022-01-04 14:18:01');
INSERT INTO `tb_visitorlog` VALUES (45, '2022-01-04', '180.253.161.249', 'Chrome [96]', 1, '2022-01-04 16:03:30');
INSERT INTO `tb_visitorlog` VALUES (46, '2022-01-04', '180.247.130.192', 'Chrome [98]', 7, '2022-01-04 17:34:23');
INSERT INTO `tb_visitorlog` VALUES (47, '2022-01-04', '180.253.161.249', 'Chrome [98]', 2, '2022-01-04 17:30:32');
INSERT INTO `tb_visitorlog` VALUES (48, '2022-01-04', '202.6.227.46', 'Safari [13]', 4, '2022-01-04 17:34:18');
INSERT INTO `tb_visitorlog` VALUES (49, '2022-01-05', '66.249.70.84', 'Chrome [96]', 1, '2022-01-05 03:13:37');
INSERT INTO `tb_visitorlog` VALUES (50, '2022-01-05', '38.108.182.5', 'Chrome [90]', 1, '2022-01-05 06:29:34');
INSERT INTO `tb_visitorlog` VALUES (51, '2022-01-05', '180.253.166.134', 'Chrome [96]', 2, '2022-01-05 08:59:20');
INSERT INTO `tb_visitorlog` VALUES (52, '2022-01-05', '202.6.227.230', 'Firefox [95]', 1, '2022-01-05 12:42:23');
INSERT INTO `tb_visitorlog` VALUES (53, '2022-01-05', '125.166.124.131', 'Chrome [96]', 1, '2022-01-05 14:24:12');
INSERT INTO `tb_visitorlog` VALUES (54, '2022-01-05', '36.72.215.227', ' [0]', 1, '2022-01-05 14:57:21');
INSERT INTO `tb_visitorlog` VALUES (55, '2022-01-05', '118.99.76.128', 'Chrome [87]', 1, '2022-01-05 18:40:48');
INSERT INTO `tb_visitorlog` VALUES (56, '2022-01-05', '66.249.70.74', 'Chrome [96]', 2, '2022-01-05 20:04:37');
INSERT INTO `tb_visitorlog` VALUES (57, '2022-01-05', '66.249.70.68', 'Chrome [96]', 2, '2022-01-05 22:00:23');
INSERT INTO `tb_visitorlog` VALUES (58, '2022-01-05', '66.249.64.106', 'Chrome [96]', 1, '2022-01-05 21:05:21');
INSERT INTO `tb_visitorlog` VALUES (59, '2022-01-05', '66.249.70.82', 'Chrome [96]', 1, '2022-01-05 21:20:26');
INSERT INTO `tb_visitorlog` VALUES (60, '2022-01-06', '202.6.227.46', 'Chrome [96]', 31, '2022-01-06 17:21:32');
INSERT INTO `tb_visitorlog` VALUES (61, '2022-01-06', '202.6.227.46', 'Safari [13]', 3, '2022-01-06 10:37:46');
INSERT INTO `tb_visitorlog` VALUES (62, '2022-01-06', '110.139.26.116', 'Firefox [96]', 1, '2022-01-06 08:44:02');
INSERT INTO `tb_visitorlog` VALUES (63, '2022-01-06', '180.253.37.61', 'Chrome [98]', 22, '2022-01-06 16:42:10');
INSERT INTO `tb_visitorlog` VALUES (64, '2022-01-06', '180.253.37.61', 'Chrome [90]', 1, '2022-01-06 08:52:02');
INSERT INTO `tb_visitorlog` VALUES (65, '2022-01-06', '180.253.37.61', 'Firefox [96]', 3, '2022-01-06 10:40:35');
INSERT INTO `tb_visitorlog` VALUES (66, '2022-01-06', '103.142.21.199', 'Chrome [97]', 1, '2022-01-06 09:11:16');
INSERT INTO `tb_visitorlog` VALUES (67, '2022-01-06', '180.253.37.61', 'Chrome [97]', 1, '2022-01-06 09:11:28');
INSERT INTO `tb_visitorlog` VALUES (68, '2022-01-06', '110.139.26.116', 'Chrome [97]', 2, '2022-01-06 17:51:31');
INSERT INTO `tb_visitorlog` VALUES (69, '2022-01-06', '180.253.37.61', 'Chrome [87]', 2, '2022-01-06 10:40:49');
INSERT INTO `tb_visitorlog` VALUES (70, '2022-01-06', '110.139.26.116', 'Chrome [87]', 1, '2022-01-06 09:14:57');
INSERT INTO `tb_visitorlog` VALUES (71, '2022-01-06', '110.139.26.116', 'Chrome [96]', 8, '2022-01-06 15:41:16');
INSERT INTO `tb_visitorlog` VALUES (72, '2022-01-06', '110.139.26.116', 'Chrome [98]', 26, '2022-01-06 17:25:15');
INSERT INTO `tb_visitorlog` VALUES (73, '2022-01-06', '180.253.37.61', 'Safari [13]', 1, '2022-01-06 09:47:48');
INSERT INTO `tb_visitorlog` VALUES (74, '2022-01-06', '180.253.37.61', 'Chrome [96]', 4, '2022-01-06 15:11:29');
INSERT INTO `tb_visitorlog` VALUES (75, '2022-01-06', '111.65.46.242', 'Safari [15.1]', 1, '2022-01-06 10:06:59');
INSERT INTO `tb_visitorlog` VALUES (76, '2022-01-06', '180.253.37.61', 'Safari [10]', 2, '2022-01-06 10:32:17');
INSERT INTO `tb_visitorlog` VALUES (77, '2022-01-06', '66.249.64.106', 'Chrome [96]', 1, '2022-01-06 16:41:49');
INSERT INTO `tb_visitorlog` VALUES (78, '2022-01-06', '66.249.64.108', 'Chrome [96]', 1, '2022-01-06 17:04:36');
INSERT INTO `tb_visitorlog` VALUES (79, '2022-01-07', '40.77.167.36', ' [0]', 1, '2022-01-07 06:43:53');
INSERT INTO `tb_visitorlog` VALUES (80, '2022-01-07', '110.139.26.116', 'Chrome [96]', 3, '2022-01-07 15:53:18');
INSERT INTO `tb_visitorlog` VALUES (81, '2022-01-07', '35.84.28.123', 'Chrome [74]', 1, '2022-01-07 13:17:14');
INSERT INTO `tb_visitorlog` VALUES (82, '2022-01-07', '182.1.67.0', 'Chrome [97]', 1, '2022-01-07 15:41:16');
INSERT INTO `tb_visitorlog` VALUES (83, '2022-01-07', '202.6.227.46', 'Chrome [97]', 4, '2022-01-07 17:47:18');
INSERT INTO `tb_visitorlog` VALUES (84, '2022-01-07', '110.50.81.196', 'Chrome [96]', 1, '2022-01-07 17:03:07');
INSERT INTO `tb_visitorlog` VALUES (85, '2022-01-07', '20.75.33.245', 'Chrome [80]', 5, '2022-01-07 17:04:31');
INSERT INTO `tb_visitorlog` VALUES (86, '2022-01-07', '66.249.70.68', 'Chrome [96]', 2, '2022-01-07 22:52:13');
INSERT INTO `tb_visitorlog` VALUES (87, '2022-01-08', '40.77.167.35', ' [0]', 1, '2022-01-08 01:56:31');
INSERT INTO `tb_visitorlog` VALUES (88, '2022-01-08', '66.249.70.82', 'Chrome [96]', 3, '2022-01-08 22:47:01');
INSERT INTO `tb_visitorlog` VALUES (89, '2022-01-08', '66.249.70.84', 'Chrome [96]', 1, '2022-01-08 23:16:58');
INSERT INTO `tb_visitorlog` VALUES (90, '2022-01-09', '66.249.70.74', 'Chrome [96]', 3, '2022-01-09 20:00:55');
INSERT INTO `tb_visitorlog` VALUES (91, '2022-01-09', '66.249.70.82', 'Chrome [96]', 2, '2022-01-09 09:55:17');
INSERT INTO `tb_visitorlog` VALUES (92, '2022-01-09', '66.249.70.84', 'Chrome [96]', 1, '2022-01-09 08:53:48');
INSERT INTO `tb_visitorlog` VALUES (93, '2022-01-09', '66.249.70.78', 'Chrome [96]', 1, '2022-01-09 10:55:31');
INSERT INTO `tb_visitorlog` VALUES (94, '2022-01-09', '66.249.64.108', 'Chrome [96]', 1, '2022-01-09 10:59:03');
INSERT INTO `tb_visitorlog` VALUES (95, '2022-01-09', '66.249.64.120', 'Chrome [96]', 1, '2022-01-09 14:36:30');
INSERT INTO `tb_visitorlog` VALUES (96, '2022-01-09', '66.249.70.86', 'Chrome [96]', 1, '2022-01-09 23:24:45');
INSERT INTO `tb_visitorlog` VALUES (97, '2022-01-10', '66.249.70.76', 'Chrome [96]', 3, '2022-01-10 08:14:53');
INSERT INTO `tb_visitorlog` VALUES (98, '2022-01-10', '202.6.227.46', 'Chrome [97]', 2, '2022-01-10 10:36:07');
INSERT INTO `tb_visitorlog` VALUES (99, '2022-01-10', '202.6.227.46', 'Chrome [96]', 3, '2022-01-10 08:44:17');
INSERT INTO `tb_visitorlog` VALUES (100, '2022-01-10', '36.79.203.215', 'Chrome [96]', 7, '2022-01-10 11:20:00');
INSERT INTO `tb_visitorlog` VALUES (101, '2022-01-10', '180.246.242.55', 'Chrome [98.1]', 1, '2022-01-10 09:13:11');
INSERT INTO `tb_visitorlog` VALUES (102, '2022-01-10', '36.79.203.215', 'Chrome [98.1]', 1, '2022-01-10 09:13:42');
INSERT INTO `tb_visitorlog` VALUES (103, '2022-01-10', '180.246.242.55', 'Chrome [97]', 3, '2022-01-10 10:55:03');
INSERT INTO `tb_visitorlog` VALUES (104, '2022-01-10', '180.246.242.55', 'Chrome [96]', 1, '2022-01-10 10:32:13');
INSERT INTO `tb_visitorlog` VALUES (105, '2022-01-10', '36.79.203.215', 'Firefox [96]', 1, '2022-01-10 10:32:49');
INSERT INTO `tb_visitorlog` VALUES (106, '2022-01-10', '182.1.88.35', 'Chrome [96]', 1, '2022-01-10 11:32:07');
INSERT INTO `tb_visitorlog` VALUES (107, '2022-01-10', '66.249.70.90', 'Chrome [96]', 1, '2022-01-10 23:10:39');
INSERT INTO `tb_visitorlog` VALUES (108, '2022-01-11', '66.249.70.84', 'Chrome [96]', 1, '2022-01-11 03:26:10');
INSERT INTO `tb_visitorlog` VALUES (109, '2022-01-11', '66.249.70.92', 'Chrome [96]', 1, '2022-01-11 14:56:06');
INSERT INTO `tb_visitorlog` VALUES (110, '2022-01-11', '139.228.64.244', 'Chrome [92]', 1, '2022-01-11 16:24:30');
INSERT INTO `tb_visitorlog` VALUES (111, '2022-01-11', '66.249.70.90', 'Chrome [96]', 1, '2022-01-11 16:55:21');
INSERT INTO `tb_visitorlog` VALUES (112, '2022-01-11', '125.164.0.152', 'Chrome [97]', 2, '2022-01-11 17:08:25');
INSERT INTO `tb_visitorlog` VALUES (113, '2022-01-11', '66.249.70.76', 'Chrome [96]', 1, '2022-01-11 19:14:08');
INSERT INTO `tb_visitorlog` VALUES (114, '2022-01-12', '66.249.70.82', 'Chrome [96]', 2, '2022-01-12 10:00:55');
INSERT INTO `tb_visitorlog` VALUES (115, '2022-01-12', '66.249.65.241', 'Chrome [96]', 3, '2022-01-12 19:18:46');
INSERT INTO `tb_visitorlog` VALUES (116, '2022-01-12', '140.213.219.66', 'Chrome [97]', 4, '2022-01-12 11:46:29');
INSERT INTO `tb_visitorlog` VALUES (117, '2022-01-12', '66.249.70.90', 'Chrome [96]', 1, '2022-01-12 12:57:42');
INSERT INTO `tb_visitorlog` VALUES (118, '2022-01-12', '175.144.18.227', 'Chrome [96]', 2, '2022-01-12 13:30:25');
INSERT INTO `tb_visitorlog` VALUES (119, '2022-01-12', '125.164.5.234', 'Chrome [98.1]', 3, '2022-01-12 16:13:28');
INSERT INTO `tb_visitorlog` VALUES (120, '2022-01-12', '202.67.46.11', 'Chrome [97]', 1, '2022-01-12 17:41:58');
INSERT INTO `tb_visitorlog` VALUES (121, '2022-01-12', '125.164.14.55', 'Chrome [97]', 2, '2022-01-12 19:35:59');
INSERT INTO `tb_visitorlog` VALUES (122, '2022-01-13', '36.74.97.98', 'Chrome [97]', 1, '2022-01-13 01:41:10');
INSERT INTO `tb_visitorlog` VALUES (123, '2022-01-13', '66.249.65.241', 'Chrome [96]', 1, '2022-01-13 02:35:06');
INSERT INTO `tb_visitorlog` VALUES (124, '2022-01-13', '66.249.70.90', 'Chrome [96]', 2, '2022-01-13 02:48:20');
INSERT INTO `tb_visitorlog` VALUES (125, '2022-01-13', '125.164.14.55', 'Chrome [97]', 1, '2022-01-13 05:06:11');
INSERT INTO `tb_visitorlog` VALUES (126, '2022-01-13', '180.247.189.41', 'Chrome [97]', 1, '2022-01-13 14:30:55');
INSERT INTO `tb_visitorlog` VALUES (127, '2022-01-13', '202.6.227.46', 'Chrome [96]', 3, '2022-01-13 16:11:38');
INSERT INTO `tb_visitorlog` VALUES (128, '2022-01-13', '180.247.189.41', 'Chrome [99.1]', 3, '2022-01-13 16:20:04');
INSERT INTO `tb_visitorlog` VALUES (129, '2022-01-13', '202.6.227.46', 'Chrome [97]', 1, '2022-01-13 17:20:05');
INSERT INTO `tb_visitorlog` VALUES (130, '2022-01-14', '202.6.227.46', 'Chrome [96]', 2, '2022-01-14 10:01:49');
INSERT INTO `tb_visitorlog` VALUES (131, '2022-01-14', '125.164.2.179', 'Chrome [97]', 5, '2022-01-14 09:32:03');
INSERT INTO `tb_visitorlog` VALUES (132, '2022-01-14', '180.247.131.237', 'Chrome [99.1]', 12, '2022-01-14 13:38:41');
INSERT INTO `tb_visitorlog` VALUES (133, '2022-01-14', '125.164.2.179', 'Chrome [99.1]', 11, '2022-01-14 13:38:45');
INSERT INTO `tb_visitorlog` VALUES (134, '2022-01-14', '180.247.131.237', 'Chrome [97]', 2, '2022-01-14 17:22:45');
INSERT INTO `tb_visitorlog` VALUES (135, '2022-01-14', '66.249.70.90', 'Chrome [96]', 1, '2022-01-14 20:50:02');
INSERT INTO `tb_visitorlog` VALUES (136, '2022-01-14', '66.249.70.80', 'Chrome [96]', 1, '2022-01-14 21:22:03');
INSERT INTO `tb_visitorlog` VALUES (137, '2022-01-15', '66.249.64.106', 'Chrome [96]', 1, '2022-01-15 08:22:49');
INSERT INTO `tb_visitorlog` VALUES (138, '2022-01-15', '66.249.70.86', 'Chrome [96]', 1, '2022-01-15 18:02:27');
INSERT INTO `tb_visitorlog` VALUES (139, '2022-01-16', '66.249.70.90', 'Chrome [96]', 1, '2022-01-16 05:33:17');
INSERT INTO `tb_visitorlog` VALUES (140, '2022-01-16', '66.249.64.106', 'Chrome [96]', 1, '2022-01-16 19:10:37');
INSERT INTO `tb_visitorlog` VALUES (141, '2022-01-17', '207.46.13.213', ' [0]', 1, '2022-01-17 05:02:57');
INSERT INTO `tb_visitorlog` VALUES (142, '2022-01-17', '66.249.70.86', 'Chrome [96]', 3, '2022-01-17 21:05:45');
INSERT INTO `tb_visitorlog` VALUES (143, '2022-01-17', '125.164.2.179', 'Chrome [97]', 2, '2022-01-17 09:22:20');
INSERT INTO `tb_visitorlog` VALUES (144, '2022-01-17', '180.247.131.237', 'Chrome [97]', 9, '2022-01-17 10:40:14');
INSERT INTO `tb_visitorlog` VALUES (145, '2022-01-17', '202.6.227.46', 'Chrome [97]', 1, '2022-01-17 09:13:38');
INSERT INTO `tb_visitorlog` VALUES (146, '2022-01-17', '180.247.131.237', 'Chrome [99.1]', 3, '2022-01-17 09:42:59');
INSERT INTO `tb_visitorlog` VALUES (147, '2022-01-17', '125.164.2.179', 'Chrome [99.1]', 2, '2022-01-17 09:52:16');
INSERT INTO `tb_visitorlog` VALUES (148, '2022-01-17', '180.247.131.237', 'Chrome [92]', 4, '2022-01-17 10:25:45');
INSERT INTO `tb_visitorlog` VALUES (149, '2022-01-17', '140.0.79.86', 'Chrome [95]', 1, '2022-01-17 21:05:37');
INSERT INTO `tb_visitorlog` VALUES (150, '2022-01-17', '175.158.38.64', ' [0]', 1, '2022-01-17 23:05:10');
INSERT INTO `tb_visitorlog` VALUES (151, '2022-01-18', '125.164.2.179', 'Chrome [97]', 5, '2022-01-18 11:43:41');
INSERT INTO `tb_visitorlog` VALUES (152, '2022-01-18', '180.247.131.237', 'Chrome [99.1]', 3, '2022-01-18 11:43:44');
INSERT INTO `tb_visitorlog` VALUES (153, '2022-01-18', '180.247.131.237', 'Chrome [97]', 1, '2022-01-18 15:34:04');
INSERT INTO `tb_visitorlog` VALUES (154, '2022-01-18', '66.249.64.110', 'Chrome [96]', 1, '2022-01-18 18:54:34');
INSERT INTO `tb_visitorlog` VALUES (155, '2022-01-19', '18.191.206.138', 'Chrome [91]', 1, '2022-01-19 01:53:38');
INSERT INTO `tb_visitorlog` VALUES (156, '2022-01-19', '66.249.70.74', 'Chrome [96]', 2, '2022-01-19 08:36:48');
INSERT INTO `tb_visitorlog` VALUES (157, '2022-01-19', '66.249.64.108', 'Chrome [96]', 1, '2022-01-19 07:55:12');
INSERT INTO `tb_visitorlog` VALUES (158, '2022-01-19', '66.249.70.90', 'Chrome [96]', 1, '2022-01-19 09:47:37');
INSERT INTO `tb_visitorlog` VALUES (159, '2022-01-19', '66.249.70.86', 'Chrome [96]', 1, '2022-01-19 12:46:41');
INSERT INTO `tb_visitorlog` VALUES (160, '2022-01-19', '180.247.131.237', 'Chrome [99.1]', 5, '2022-01-19 13:51:35');
INSERT INTO `tb_visitorlog` VALUES (161, '2022-01-19', '180.247.131.237', 'Chrome [97]', 14, '2022-01-19 13:49:35');
INSERT INTO `tb_visitorlog` VALUES (162, '2022-01-19', '202.6.227.46', 'Chrome [97]', 2, '2022-01-19 17:03:33');
INSERT INTO `tb_visitorlog` VALUES (163, '2022-01-19', '66.249.70.84', 'Chrome [96]', 1, '2022-01-19 18:08:07');
INSERT INTO `tb_visitorlog` VALUES (164, '2022-01-20', '66.249.64.108', 'Chrome [96]', 1, '2022-01-20 08:21:14');
INSERT INTO `tb_visitorlog` VALUES (165, '2022-01-20', '180.247.131.237', 'Chrome [99.1]', 6, '2022-01-20 14:40:00');
INSERT INTO `tb_visitorlog` VALUES (166, '2022-01-20', '66.249.70.88', 'Chrome [96]', 1, '2022-01-20 08:55:53');
INSERT INTO `tb_visitorlog` VALUES (167, '2022-01-20', '125.164.2.179', 'Chrome [99.1]', 1, '2022-01-20 09:45:31');
INSERT INTO `tb_visitorlog` VALUES (168, '2022-01-20', '125.164.2.179', 'Chrome [97]', 11, '2022-01-20 17:13:53');
INSERT INTO `tb_visitorlog` VALUES (169, '2022-01-20', '66.249.64.102', 'Chrome [96]', 2, '2022-01-20 19:29:31');
INSERT INTO `tb_visitorlog` VALUES (170, '2022-01-20', '66.249.70.90', 'Chrome [96]', 2, '2022-01-20 18:49:33');
INSERT INTO `tb_visitorlog` VALUES (171, '2022-01-20', '180.247.131.237', 'Chrome [97]', 2, '2022-01-20 15:47:58');
INSERT INTO `tb_visitorlog` VALUES (172, '2022-01-20', '202.6.227.46', 'Firefox [95]', 2, '2022-01-20 16:27:22');
INSERT INTO `tb_visitorlog` VALUES (173, '2022-01-20', '66.249.64.38', 'Chrome [96]', 1, '2022-01-20 16:59:13');
INSERT INTO `tb_visitorlog` VALUES (174, '2022-01-20', '66.249.64.152', 'Chrome [96]', 1, '2022-01-20 18:47:07');
INSERT INTO `tb_visitorlog` VALUES (175, '2022-01-21', '66.249.70.90', 'Chrome [97]', 3, '2022-01-21 18:23:11');
INSERT INTO `tb_visitorlog` VALUES (176, '2022-01-21', '66.249.64.38', 'Chrome [97]', 1, '2022-01-21 02:40:43');
INSERT INTO `tb_visitorlog` VALUES (177, '2022-01-21', '66.249.64.102', 'Chrome [97]', 1, '2022-01-21 03:55:28');
INSERT INTO `tb_visitorlog` VALUES (178, '2022-01-21', '66.249.70.90', 'Chrome [96]', 1, '2022-01-21 07:16:06');
INSERT INTO `tb_visitorlog` VALUES (179, '2022-01-21', '125.164.1.42', 'Chrome [97]', 23, '2022-01-21 14:45:49');
INSERT INTO `tb_visitorlog` VALUES (180, '2022-01-21', '202.6.227.46', 'Chrome [97]', 16, '2022-01-21 15:08:47');
INSERT INTO `tb_visitorlog` VALUES (181, '2022-01-21', '36.74.53.228', 'Chrome [97]', 24, '2022-01-21 14:39:37');
INSERT INTO `tb_visitorlog` VALUES (182, '2022-01-21', '66.249.72.170', 'Chrome [97]', 1, '2022-01-21 09:22:57');
INSERT INTO `tb_visitorlog` VALUES (183, '2022-01-21', '125.164.1.42', 'Firefox [97]', 49, '2022-01-21 17:25:10');
INSERT INTO `tb_visitorlog` VALUES (184, '2022-01-21', '36.74.53.228', 'Firefox [97]', 44, '2022-01-21 11:28:32');
INSERT INTO `tb_visitorlog` VALUES (185, '2022-01-21', '66.249.64.152', 'Chrome [97]', 2, '2022-01-21 11:31:51');
INSERT INTO `tb_visitorlog` VALUES (186, '2022-01-21', '125.164.1.42', 'Chrome [87]', 2, '2022-01-21 11:08:11');
INSERT INTO `tb_visitorlog` VALUES (187, '2022-01-21', '36.74.53.228', 'Chrome [87]', 3, '2022-01-21 11:17:49');
INSERT INTO `tb_visitorlog` VALUES (188, '2022-01-21', '202.6.227.46', 'Safari [10]', 1, '2022-01-21 11:26:36');
INSERT INTO `tb_visitorlog` VALUES (189, '2022-01-21', '45.121.219.4', 'Chrome [95]', 1, '2022-01-21 17:03:34');
INSERT INTO `tb_visitorlog` VALUES (190, '2022-01-21', '66.249.70.74', 'Chrome [97]', 1, '2022-01-21 18:04:01');
INSERT INTO `tb_visitorlog` VALUES (191, '2022-01-21', '40.77.167.10', ' [0]', 1, '2022-01-21 22:37:07');
INSERT INTO `tb_visitorlog` VALUES (192, '2022-01-22', '66.249.70.82', 'Chrome [97]', 1, '2022-01-22 03:19:23');
INSERT INTO `tb_visitorlog` VALUES (193, '2022-01-22', '66.249.72.170', 'Chrome [97]', 1, '2022-01-22 04:35:34');
INSERT INTO `tb_visitorlog` VALUES (194, '2022-01-22', '36.74.117.213', 'Chrome [97]', 3, '2022-01-22 07:53:50');
INSERT INTO `tb_visitorlog` VALUES (195, '2022-01-22', '66.249.70.68', 'Chrome [97]', 2, '2022-01-22 16:43:27');
INSERT INTO `tb_visitorlog` VALUES (196, '2022-01-22', '66.249.70.80', 'Chrome [97]', 1, '2022-01-22 17:13:01');
INSERT INTO `tb_visitorlog` VALUES (197, '2022-01-23', '66.249.64.152', 'Chrome [97]', 1, '2022-01-23 01:33:59');
INSERT INTO `tb_visitorlog` VALUES (198, '2022-01-23', '66.249.72.170', 'Chrome [97]', 2, '2022-01-23 16:15:46');
INSERT INTO `tb_visitorlog` VALUES (199, '2022-01-23', '66.249.70.68', 'Chrome [97]', 1, '2022-01-23 06:23:03');
INSERT INTO `tb_visitorlog` VALUES (200, '2022-01-23', '202.80.213.248', 'Chrome [96]', 1, '2022-01-23 19:06:02');
INSERT INTO `tb_visitorlog` VALUES (201, '2022-01-24', '66.249.70.80', 'Chrome [97]', 2, '2022-01-24 18:32:02');
INSERT INTO `tb_visitorlog` VALUES (202, '2022-01-24', '180.253.162.179', 'Chrome [97]', 6, '2022-01-24 08:41:27');
INSERT INTO `tb_visitorlog` VALUES (203, '2022-01-24', '66.249.66.54', 'Chrome [97]', 1, '2022-01-24 08:58:38');
INSERT INTO `tb_visitorlog` VALUES (204, '2022-01-24', '202.6.227.46', 'Chrome [97]', 2, '2022-01-24 10:35:09');
INSERT INTO `tb_visitorlog` VALUES (205, '2022-01-24', '202.6.227.46', 'Safari [10]', 1, '2022-01-24 10:35:02');
INSERT INTO `tb_visitorlog` VALUES (206, '2022-01-24', '114.5.104.140', 'Chrome [96]', 1, '2022-01-24 10:48:22');
INSERT INTO `tb_visitorlog` VALUES (207, '2022-01-24', '66.249.66.50', 'Chrome [97]', 1, '2022-01-24 16:09:21');
INSERT INTO `tb_visitorlog` VALUES (208, '2022-01-24', '111.65.57.133', 'Safari [15.1]', 1, '2022-01-24 16:49:26');
INSERT INTO `tb_visitorlog` VALUES (209, '2022-01-25', '182.1.116.106', 'Chrome [87]', 2, '2022-01-25 06:50:26');
INSERT INTO `tb_visitorlog` VALUES (210, '2022-01-25', '66.249.68.5', 'Chrome [97]', 1, '2022-01-25 08:32:41');
INSERT INTO `tb_visitorlog` VALUES (211, '2022-01-25', '66.249.66.50', 'Chrome [97]', 1, '2022-01-25 08:47:30');
INSERT INTO `tb_visitorlog` VALUES (212, '2022-01-25', '182.1.112.78', 'Safari [14]', 1, '2022-01-25 10:35:38');
INSERT INTO `tb_visitorlog` VALUES (213, '2022-01-25', '180.253.145.64', 'Chrome [97]', 2, '2022-01-25 15:32:17');
INSERT INTO `tb_visitorlog` VALUES (214, '2022-01-25', '66.249.70.82', 'Chrome [97]', 1, '2022-01-25 20:33:10');
INSERT INTO `tb_visitorlog` VALUES (215, '2022-01-25', '180.247.47.33', ' [0]', 10, '2022-01-25 22:22:27');
INSERT INTO `tb_visitorlog` VALUES (216, '2022-01-26', '66.249.64.114', 'Chrome [97]', 1, '2022-01-26 02:14:23');
INSERT INTO `tb_visitorlog` VALUES (217, '2022-01-26', '125.164.14.104', 'Chrome [97]', 17, '2022-01-26 09:33:04');
INSERT INTO `tb_visitorlog` VALUES (218, '2022-01-26', '180.253.167.189', 'Chrome [97]', 41, '2022-01-26 10:34:50');
INSERT INTO `tb_visitorlog` VALUES (219, '2022-01-26', '125.164.14.104', 'Firefox [97]', 10, '2022-01-26 09:09:58');
INSERT INTO `tb_visitorlog` VALUES (220, '2022-01-26', '180.253.167.189', 'Firefox [97]', 1, '2022-01-26 09:09:28');
INSERT INTO `tb_visitorlog` VALUES (221, '2022-01-26', '203.78.117.185', ' [0]', 1, '2022-01-26 10:20:13');
INSERT INTO `tb_visitorlog` VALUES (222, '2022-01-26', '180.253.167.189', 'Chrome [90]', 1, '2022-01-26 10:41:42');
INSERT INTO `tb_visitorlog` VALUES (223, '2022-01-26', '202.6.227.46', 'Chrome [97]', 8, '2022-01-26 14:57:24');
INSERT INTO `tb_visitorlog` VALUES (224, '2022-01-26', '66.249.68.5', 'Chrome [97]', 1, '2022-01-26 22:41:41');
INSERT INTO `tb_visitorlog` VALUES (225, '2022-01-27', '66.249.74.76', 'Chrome [97]', 1, '2022-01-27 01:24:39');
INSERT INTO `tb_visitorlog` VALUES (226, '2022-01-27', '116.206.40.72', ' [0]', 1, '2022-01-27 01:32:49');
INSERT INTO `tb_visitorlog` VALUES (227, '2022-01-27', '125.167.128.171', 'Chrome [97]', 6, '2022-01-27 09:46:58');
INSERT INTO `tb_visitorlog` VALUES (228, '2022-01-27', '61.5.55.191', 'Chrome [97]', 3, '2022-01-27 13:41:57');
INSERT INTO `tb_visitorlog` VALUES (229, '2022-01-27', '202.6.227.46', 'Chrome [97]', 6, '2022-01-27 15:39:45');
INSERT INTO `tb_visitorlog` VALUES (230, '2022-01-28', '114.4.223.13', 'Chrome [96]', 1, '2022-01-28 08:04:52');
INSERT INTO `tb_visitorlog` VALUES (231, '2022-01-28', '66.249.70.82', 'Chrome [97]', 2, '2022-01-28 13:55:55');
INSERT INTO `tb_visitorlog` VALUES (232, '2022-01-28', '125.164.7.36', 'Chrome [97]', 1, '2022-01-28 13:38:26');
INSERT INTO `tb_visitorlog` VALUES (233, '2022-01-28', '180.247.213.229', 'Chrome [97]', 3, '2022-01-28 17:04:48');
INSERT INTO `tb_visitorlog` VALUES (234, '2022-01-28', '114.4.4.201', 'Chrome [96]', 1, '2022-01-28 17:08:11');
INSERT INTO `tb_visitorlog` VALUES (235, '2022-01-28', '66.249.64.114', 'Chrome [97]', 1, '2022-01-28 21:27:47');
INSERT INTO `tb_visitorlog` VALUES (236, '2022-01-28', '36.90.164.26', 'Chrome [97]', 4, '2022-01-28 21:55:24');
INSERT INTO `tb_visitorlog` VALUES (237, '2022-01-29', '17.121.115.51', 'Safari [13.1]', 1, '2022-01-29 01:38:34');
INSERT INTO `tb_visitorlog` VALUES (238, '2022-01-29', '66.249.70.78', 'Chrome [97]', 2, '2022-01-29 19:54:53');
INSERT INTO `tb_visitorlog` VALUES (239, '2022-01-29', '180.253.165.104', 'Chrome [97]', 1, '2022-01-29 06:48:05');
INSERT INTO `tb_visitorlog` VALUES (240, '2022-01-29', '66.249.64.102', 'Chrome [97]', 2, '2022-01-29 20:46:27');
INSERT INTO `tb_visitorlog` VALUES (241, '2022-01-30', '66.249.64.102', 'Chrome [97]', 1, '2022-01-30 00:13:35');
INSERT INTO `tb_visitorlog` VALUES (242, '2022-01-30', '66.249.70.86', 'Chrome [97]', 3, '2022-01-30 22:03:25');
INSERT INTO `tb_visitorlog` VALUES (243, '2022-01-30', '66.249.70.80', 'Chrome [97]', 1, '2022-01-30 09:16:47');
INSERT INTO `tb_visitorlog` VALUES (244, '2022-01-30', '66.249.70.74', 'Chrome [97]', 1, '2022-01-30 18:09:13');
INSERT INTO `tb_visitorlog` VALUES (245, '2022-01-31', '66.249.70.86', 'Chrome [97]', 2, '2022-01-31 12:09:00');
INSERT INTO `tb_visitorlog` VALUES (246, '2022-01-31', '125.164.13.192', 'Chrome [97]', 4, '2022-01-31 03:53:47');
INSERT INTO `tb_visitorlog` VALUES (247, '2022-01-31', '125.164.7.36', 'Chrome [97]', 7, '2022-01-31 12:14:50');
INSERT INTO `tb_visitorlog` VALUES (248, '2022-01-31', '180.247.213.229', 'Chrome [97]', 4, '2022-01-31 10:29:07');
INSERT INTO `tb_visitorlog` VALUES (249, '2022-01-31', '20.84.196.6', 'Chrome [72]', 1, '2022-01-31 11:06:46');
INSERT INTO `tb_visitorlog` VALUES (250, '2022-01-31', '202.6.227.46', 'Chrome [97]', 3, '2022-01-31 15:41:50');
INSERT INTO `tb_visitorlog` VALUES (251, '2022-02-01', '66.249.70.78', 'Chrome [97]', 1, '2022-02-01 01:06:40');
INSERT INTO `tb_visitorlog` VALUES (252, '2022-02-01', '66.249.70.86', 'Chrome [97]', 2, '2022-02-01 05:42:57');
INSERT INTO `tb_visitorlog` VALUES (253, '2022-02-01', '66.249.70.76', 'Chrome [97]', 1, '2022-02-01 05:13:05');
INSERT INTO `tb_visitorlog` VALUES (254, '2022-02-01', '66.249.70.80', 'Chrome [97]', 1, '2022-02-01 09:05:57');
INSERT INTO `tb_visitorlog` VALUES (255, '2022-02-02', '66.249.70.86', 'Chrome [97]', 1, '2022-02-02 14:23:00');
INSERT INTO `tb_visitorlog` VALUES (256, '2022-02-02', '66.249.70.74', 'Chrome [97]', 1, '2022-02-02 14:53:00');
INSERT INTO `tb_visitorlog` VALUES (257, '2022-02-02', '66.249.70.80', 'Chrome [97]', 1, '2022-02-02 15:13:54');
INSERT INTO `tb_visitorlog` VALUES (258, '2022-02-02', '66.249.70.68', 'Chrome [97]', 1, '2022-02-02 15:22:55');
INSERT INTO `tb_visitorlog` VALUES (259, '2022-02-02', '66.249.70.76', 'Chrome [97]', 1, '2022-02-02 20:26:36');
INSERT INTO `tb_visitorlog` VALUES (260, '2022-02-03', '125.164.7.52', 'Chrome [97]', 1, '2022-02-03 09:28:28');
INSERT INTO `tb_visitorlog` VALUES (261, '2022-02-03', '202.6.227.46', 'Chrome [97]', 7, '2022-02-03 09:32:33');
INSERT INTO `tb_visitorlog` VALUES (262, '2022-02-03', '66.249.70.76', 'Chrome [97]', 1, '2022-02-03 13:55:34');
INSERT INTO `tb_visitorlog` VALUES (263, '2022-02-04', '66.249.70.68', 'Chrome [97]', 2, '2022-02-04 19:58:25');
INSERT INTO `tb_visitorlog` VALUES (264, '2022-02-04', '125.164.9.14', 'Chrome [97]', 4, '2022-02-04 13:36:59');
INSERT INTO `tb_visitorlog` VALUES (265, '2022-02-04', '180.253.165.22', 'Chrome [97]', 3, '2022-02-04 14:50:18');
INSERT INTO `tb_visitorlog` VALUES (266, '2022-02-04', '66.249.70.76', 'Chrome [97]', 1, '2022-02-04 10:14:04');
INSERT INTO `tb_visitorlog` VALUES (267, '2022-02-04', '66.249.64.102', 'Chrome [97]', 1, '2022-02-04 10:33:21');
INSERT INTO `tb_visitorlog` VALUES (268, '2022-02-04', '202.6.227.46', 'Chrome [97]', 2, '2022-02-04 13:11:12');
INSERT INTO `tb_visitorlog` VALUES (269, '2022-02-04', '125.164.9.14', 'Firefox [97]', 1, '2022-02-04 13:12:35');
INSERT INTO `tb_visitorlog` VALUES (270, '2022-02-04', '202.43.172.4', 'Chrome [96]', 1, '2022-02-04 17:08:34');
INSERT INTO `tb_visitorlog` VALUES (271, '2022-02-04', '40.94.36.54', 'Chrome [72]', 1, '2022-02-04 17:12:56');
INSERT INTO `tb_visitorlog` VALUES (272, '2022-02-04', '40.94.36.34', 'Chrome [72]', 1, '2022-02-04 17:12:56');
INSERT INTO `tb_visitorlog` VALUES (273, '2022-02-04', '118.98.26.6', 'Chrome [83]', 1, '2022-02-04 17:35:03');
INSERT INTO `tb_visitorlog` VALUES (274, '2022-02-04', '125.164.9.14', 'Chrome [98]', 2, '2022-02-04 17:54:54');
INSERT INTO `tb_visitorlog` VALUES (275, '2022-02-04', '180.253.161.248', 'Chrome [98]', 1, '2022-02-04 22:09:34');
INSERT INTO `tb_visitorlog` VALUES (276, '2022-02-05', '35.87.85.70', 'Chrome [74]', 1, '2022-02-05 01:26:10');
INSERT INTO `tb_visitorlog` VALUES (277, '2022-02-05', '66.249.70.84', 'Chrome [97]', 1, '2022-02-05 05:13:28');
INSERT INTO `tb_visitorlog` VALUES (278, '2022-02-05', '66.249.70.80', 'Chrome [97]', 3, '2022-02-05 15:45:39');
INSERT INTO `tb_visitorlog` VALUES (279, '2022-02-05', '66.249.70.78', 'Chrome [97]', 1, '2022-02-05 15:25:43');
INSERT INTO `tb_visitorlog` VALUES (280, '2022-02-06', '66.249.70.78', 'Chrome [97]', 1, '2022-02-06 00:36:41');
INSERT INTO `tb_visitorlog` VALUES (281, '2022-02-06', '66.249.70.80', 'Chrome [97]', 2, '2022-02-06 17:06:42');
INSERT INTO `tb_visitorlog` VALUES (282, '2022-02-06', '66.249.70.82', 'Chrome [97]', 2, '2022-02-06 23:23:54');
INSERT INTO `tb_visitorlog` VALUES (283, '2022-02-06', '17.121.113.87', 'Safari [13.1]', 1, '2022-02-06 18:34:12');
INSERT INTO `tb_visitorlog` VALUES (284, '2022-02-07', '66.249.64.102', 'Chrome [97]', 1, '2022-02-07 04:43:17');
INSERT INTO `tb_visitorlog` VALUES (285, '2022-02-07', '66.249.70.84', 'Chrome [97]', 2, '2022-02-07 16:00:09');
INSERT INTO `tb_visitorlog` VALUES (286, '2022-02-07', '180.253.165.22', 'Chrome [97]', 6, '2022-02-07 13:06:19');
INSERT INTO `tb_visitorlog` VALUES (287, '2022-02-07', '180.253.165.22', 'Chrome [98]', 7, '2022-02-07 16:19:36');
INSERT INTO `tb_visitorlog` VALUES (288, '2022-02-07', '202.6.227.46', 'Chrome [97]', 5, '2022-02-07 09:40:36');
INSERT INTO `tb_visitorlog` VALUES (289, '2022-02-07', '66.249.70.82', 'Chrome [97]', 1, '2022-02-07 09:29:52');
INSERT INTO `tb_visitorlog` VALUES (290, '2022-02-07', '125.164.9.14', 'Chrome [98]', 2, '2022-02-07 15:26:48');
INSERT INTO `tb_visitorlog` VALUES (291, '2022-02-07', '40.94.29.72', 'Chrome [72]', 1, '2022-02-07 11:10:11');
INSERT INTO `tb_visitorlog` VALUES (292, '2022-02-08', '66.249.64.102', 'Chrome [97]', 2, '2022-02-08 21:41:55');
INSERT INTO `tb_visitorlog` VALUES (293, '2022-02-08', '66.249.70.92', 'Chrome [97]', 1, '2022-02-08 21:06:02');
INSERT INTO `tb_visitorlog` VALUES (294, '2022-02-09', '66.249.64.102', 'Chrome [97]', 1, '2022-02-09 05:56:00');
INSERT INTO `tb_visitorlog` VALUES (295, '2022-02-09', '66.249.70.90', 'Chrome [97]', 1, '2022-02-09 09:53:47');
INSERT INTO `tb_visitorlog` VALUES (296, '2022-02-09', '66.249.70.82', 'Chrome [97]', 1, '2022-02-09 13:04:21');
INSERT INTO `tb_visitorlog` VALUES (297, '2022-02-09', '51.81.210.175', 'Chrome [98]', 4, '2022-02-09 14:48:19');
INSERT INTO `tb_visitorlog` VALUES (298, '2022-02-09', '51.15.130.182', 'Chrome [96]', 1, '2022-02-09 14:52:56');
INSERT INTO `tb_visitorlog` VALUES (299, '2022-02-09', '66.249.70.92', 'Chrome [97]', 1, '2022-02-09 15:12:22');
INSERT INTO `tb_visitorlog` VALUES (300, '2022-02-09', '66.249.70.78', 'Chrome [97]', 1, '2022-02-09 15:42:26');
INSERT INTO `tb_visitorlog` VALUES (301, '2022-02-09', '103.108.20.65', 'Chrome [98]', 1, '2022-02-09 16:05:25');
INSERT INTO `tb_visitorlog` VALUES (302, '2022-02-10', '34.121.26.164', 'Chrome [72]', 1, '2022-02-10 00:24:29');
INSERT INTO `tb_visitorlog` VALUES (303, '2022-02-10', '66.249.70.92', 'Chrome [97]', 1, '2022-02-10 03:26:46');
INSERT INTO `tb_visitorlog` VALUES (304, '2022-02-10', '66.249.70.78', 'Chrome [97]', 5, '2022-02-10 20:22:27');
INSERT INTO `tb_visitorlog` VALUES (305, '2022-02-10', '180.245.125.9', 'Chrome [61]', 1, '2022-02-10 08:54:36');
INSERT INTO `tb_visitorlog` VALUES (306, '2022-02-10', '103.108.20.85', 'Chrome [98]', 3, '2022-02-10 15:14:20');
INSERT INTO `tb_visitorlog` VALUES (307, '2022-02-10', '202.6.227.46', 'Chrome [98]', 4, '2022-02-10 17:06:39');
INSERT INTO `tb_visitorlog` VALUES (308, '2022-02-10', '114.125.68.137', 'Chrome [97]', 1, '2022-02-10 17:28:25');
INSERT INTO `tb_visitorlog` VALUES (309, '2022-02-10', '182.1.84.227', 'Chrome [97]', 1, '2022-02-10 20:03:38');
INSERT INTO `tb_visitorlog` VALUES (310, '2022-02-10', '182.253.116.208', 'Chrome [97]', 1, '2022-02-10 22:07:20');
INSERT INTO `tb_visitorlog` VALUES (311, '2022-02-11', '180.253.167.141', 'Chrome [98]', 2, '2022-02-11 16:42:31');
INSERT INTO `tb_visitorlog` VALUES (312, '2022-02-11', '66.249.70.78', 'Chrome [97]', 1, '2022-02-11 12:44:50');
INSERT INTO `tb_visitorlog` VALUES (313, '2022-02-11', '125.164.62.111', 'Chrome [98]', 2, '2022-02-11 16:55:10');
INSERT INTO `tb_visitorlog` VALUES (314, '2022-02-11', '110.50.81.202', 'Chrome [96]', 1, '2022-02-11 17:06:45');
INSERT INTO `tb_visitorlog` VALUES (315, '2022-02-11', '114.4.4.134', 'Chrome [96]', 1, '2022-02-11 17:06:52');
INSERT INTO `tb_visitorlog` VALUES (316, '2022-02-11', '40.94.25.67', 'Chrome [64]', 2, '2022-02-11 17:16:16');
INSERT INTO `tb_visitorlog` VALUES (317, '2022-02-11', '103.108.20.119', 'Chrome [98]', 4, '2022-02-11 17:30:44');
INSERT INTO `tb_visitorlog` VALUES (318, '2022-02-11', '66.249.70.86', 'Chrome [97]', 1, '2022-02-11 23:15:26');
INSERT INTO `tb_visitorlog` VALUES (319, '2022-02-12', '66.249.64.102', 'Chrome [97]', 1, '2022-02-12 05:40:29');
INSERT INTO `tb_visitorlog` VALUES (320, '2022-02-12', '66.249.70.86', 'Chrome [97]', 1, '2022-02-12 05:51:51');
INSERT INTO `tb_visitorlog` VALUES (321, '2022-02-12', '17.121.112.230', 'Safari [13.1]', 1, '2022-02-12 16:55:14');
INSERT INTO `tb_visitorlog` VALUES (322, '2022-02-12', '17.121.112.216', 'Safari [13.1]', 1, '2022-02-12 18:23:20');
INSERT INTO `tb_visitorlog` VALUES (323, '2022-02-12', '66.249.70.68', 'Chrome [97]', 1, '2022-02-12 21:59:44');
INSERT INTO `tb_visitorlog` VALUES (324, '2022-02-13', '66.249.70.80', 'Chrome [97]', 2, '2022-02-13 14:38:58');
INSERT INTO `tb_visitorlog` VALUES (325, '2022-02-13', '140.213.56.158', 'Chrome [97]', 1, '2022-02-13 21:26:20');
INSERT INTO `tb_visitorlog` VALUES (326, '2022-02-13', '110.136.84.86', 'Chrome [88]', 5, '2022-02-13 22:38:31');
INSERT INTO `tb_visitorlog` VALUES (327, '2022-02-13', '182.1.73.22', 'Chrome [98]', 1, '2022-02-13 22:57:18');
INSERT INTO `tb_visitorlog` VALUES (328, '2022-02-13', '66.249.70.86', 'Chrome [97]', 1, '2022-02-13 23:16:25');
INSERT INTO `tb_visitorlog` VALUES (329, '2022-02-14', '202.6.227.46', 'Chrome [98]', 1, '2022-02-14 10:06:07');
INSERT INTO `tb_visitorlog` VALUES (330, '2022-02-14', '36.74.123.198', 'Chrome [97]', 1, '2022-02-14 11:41:07');
INSERT INTO `tb_visitorlog` VALUES (331, '2022-02-14', '66.249.70.86', 'Chrome [97]', 1, '2022-02-14 14:49:42');
INSERT INTO `tb_visitorlog` VALUES (332, '2022-02-14', '66.249.70.68', 'Chrome [97]', 1, '2022-02-14 18:47:33');
INSERT INTO `tb_visitorlog` VALUES (333, '2022-02-14', '118.99.76.171', 'Chrome [98]', 2, '2022-02-14 22:33:35');
INSERT INTO `tb_visitorlog` VALUES (334, '2022-02-15', '66.249.70.68', 'Chrome [98]', 2, '2022-02-15 15:52:50');
INSERT INTO `tb_visitorlog` VALUES (335, '2022-02-15', '66.249.70.88', 'Chrome [98]', 1, '2022-02-15 07:39:14');
INSERT INTO `tb_visitorlog` VALUES (336, '2022-02-15', '36.73.218.92', 'Chrome [97]', 7, '2022-02-15 09:03:08');
INSERT INTO `tb_visitorlog` VALUES (337, '2022-02-15', '36.74.123.198', 'Chrome [97]', 5, '2022-02-15 09:02:59');
INSERT INTO `tb_visitorlog` VALUES (338, '2022-02-15', '36.73.218.92', 'Safari [604.1]', 1, '2022-02-15 08:40:46');
INSERT INTO `tb_visitorlog` VALUES (339, '2022-02-15', '36.74.123.198', 'Safari [604.1]', 6, '2022-02-15 09:05:01');
INSERT INTO `tb_visitorlog` VALUES (340, '2022-02-15', '36.74.123.198', 'Firefox [98]', 1, '2022-02-15 08:45:54');
INSERT INTO `tb_visitorlog` VALUES (341, '2022-02-15', '66.249.70.80', 'Chrome [98]', 1, '2022-02-15 14:23:05');
INSERT INTO `tb_visitorlog` VALUES (342, '2022-02-15', '66.249.70.86', 'Chrome [98]', 1, '2022-02-15 20:08:38');
INSERT INTO `tb_visitorlog` VALUES (343, '2022-02-16', '66.249.64.102', 'Chrome [98]', 1, '2022-02-16 09:43:02');
INSERT INTO `tb_visitorlog` VALUES (344, '2022-02-16', '66.249.70.78', 'Chrome [98]', 1, '2022-02-16 09:51:38');
INSERT INTO `tb_visitorlog` VALUES (345, '2022-02-16', '36.73.218.92', 'Chrome [97]', 2, '2022-02-16 16:56:15');
INSERT INTO `tb_visitorlog` VALUES (346, '2022-02-16', '36.74.123.198', 'Chrome [97]', 1, '2022-02-16 16:56:40');
INSERT INTO `tb_visitorlog` VALUES (347, '2022-02-16', '182.1.115.178', 'Chrome [98]', 3, '2022-02-16 16:59:34');
INSERT INTO `tb_visitorlog` VALUES (348, '2022-02-16', '66.249.70.86', 'Chrome [98]', 1, '2022-02-16 19:34:12');
INSERT INTO `tb_visitorlog` VALUES (349, '2022-02-16', '66.249.79.69', 'Chrome [98]', 1, '2022-02-16 23:17:35');
INSERT INTO `tb_visitorlog` VALUES (350, '2022-02-16', '66.249.70.88', 'Chrome [98]', 1, '2022-02-16 23:58:09');
INSERT INTO `tb_visitorlog` VALUES (351, '2022-02-17', '66.249.70.80', 'Chrome [98]', 1, '2022-02-17 05:47:25');
INSERT INTO `tb_visitorlog` VALUES (352, '2022-02-17', '157.55.39.200', ' [0]', 1, '2022-02-17 09:19:57');
INSERT INTO `tb_visitorlog` VALUES (353, '2022-02-17', '180.253.163.227', 'Chrome [98]', 1, '2022-02-17 09:44:11');
INSERT INTO `tb_visitorlog` VALUES (354, '2022-02-17', '125.164.15.164', 'Chrome [98]', 2, '2022-02-17 13:47:27');
INSERT INTO `tb_visitorlog` VALUES (355, '2022-02-18', '113.197.108.36', 'Chrome [96]', 1, '2022-02-18 17:06:40');
INSERT INTO `tb_visitorlog` VALUES (356, '2022-02-18', '20.81.14.128', 'Chrome [72]', 2, '2022-02-18 17:18:24');
INSERT INTO `tb_visitorlog` VALUES (357, '2022-02-18', '182.1.110.14', 'Chrome [98]', 3, '2022-02-18 19:07:21');
INSERT INTO `tb_visitorlog` VALUES (358, '2022-02-18', '66.249.70.88', 'Chrome [98]', 1, '2022-02-18 20:41:57');
INSERT INTO `tb_visitorlog` VALUES (359, '2022-02-19', '180.253.166.207', 'Chrome [98]', 1, '2022-02-19 07:09:01');
INSERT INTO `tb_visitorlog` VALUES (360, '2022-02-19', '66.249.70.94', 'Chrome [98]', 1, '2022-02-19 07:22:43');
INSERT INTO `tb_visitorlog` VALUES (361, '2022-02-19', '140.213.218.178', 'Chrome [98]', 1, '2022-02-19 10:14:20');
INSERT INTO `tb_visitorlog` VALUES (362, '2022-02-19', '51.15.253.190', 'Chrome [96]', 2, '2022-02-19 13:16:24');
INSERT INTO `tb_visitorlog` VALUES (363, '2022-02-19', '202.6.224.50', 'Chrome [97]', 1, '2022-02-19 20:04:53');
INSERT INTO `tb_visitorlog` VALUES (364, '2022-02-20', '17.121.112.14', 'Safari [13.1]', 1, '2022-02-20 08:00:11');
INSERT INTO `tb_visitorlog` VALUES (365, '2022-02-20', '180.253.166.207', 'Chrome [98]', 4, '2022-02-20 08:27:12');
INSERT INTO `tb_visitorlog` VALUES (366, '2022-02-20', '17.121.115.135', 'Safari [13.1]', 2, '2022-02-20 10:26:19');
INSERT INTO `tb_visitorlog` VALUES (367, '2022-02-20', '66.249.70.94', 'Chrome [98]', 1, '2022-02-20 17:45:24');
INSERT INTO `tb_visitorlog` VALUES (368, '2022-02-20', '66.249.64.114', 'Chrome [98]', 1, '2022-02-20 19:31:52');
INSERT INTO `tb_visitorlog` VALUES (369, '2022-02-20', '66.249.64.102', 'Chrome [98]', 1, '2022-02-20 23:39:01');
INSERT INTO `tb_visitorlog` VALUES (370, '2022-02-21', '66.249.64.114', 'Chrome [98]', 1, '2022-02-21 03:53:11');
INSERT INTO `tb_visitorlog` VALUES (371, '2022-02-21', '66.249.70.88', 'Chrome [98]', 1, '2022-02-21 08:40:37');
INSERT INTO `tb_visitorlog` VALUES (372, '2022-02-21', '140.0.8.249', 'Chrome [97]', 1, '2022-02-21 08:51:08');
INSERT INTO `tb_visitorlog` VALUES (373, '2022-02-21', '110.136.84.5', 'Firefox [98]', 2, '2022-02-21 13:50:56');
INSERT INTO `tb_visitorlog` VALUES (374, '2022-02-22', '66.249.64.102', 'Chrome [98]', 1, '2022-02-22 07:33:12');
INSERT INTO `tb_visitorlog` VALUES (375, '2022-02-22', '66.249.66.44', 'Chrome [98]', 1, '2022-02-22 09:49:07');
INSERT INTO `tb_visitorlog` VALUES (376, '2022-02-22', '110.136.84.19', 'Firefox [98]', 3, '2022-02-22 13:32:25');
INSERT INTO `tb_visitorlog` VALUES (377, '2022-02-22', '66.249.64.114', 'Chrome [98]', 1, '2022-02-22 14:04:11');
INSERT INTO `tb_visitorlog` VALUES (378, '2022-02-23', '110.136.84.22', 'Safari [15.2]', 1, '2022-02-23 08:41:54');
INSERT INTO `tb_visitorlog` VALUES (379, '2022-02-23', '66.249.66.48', 'Chrome [98]', 1, '2022-02-23 17:56:30');
INSERT INTO `tb_visitorlog` VALUES (380, '2022-02-23', '66.249.66.50', 'Chrome [98]', 1, '2022-02-23 18:36:30');
INSERT INTO `tb_visitorlog` VALUES (381, '2022-02-24', '66.249.64.102', 'Chrome [98]', 1, '2022-02-24 07:49:14');
INSERT INTO `tb_visitorlog` VALUES (382, '2022-02-24', '66.249.66.50', 'Chrome [98]', 2, '2022-02-24 21:36:43');
INSERT INTO `tb_visitorlog` VALUES (383, '2022-02-24', '110.136.84.105', 'Chrome [98]', 7, '2022-02-24 15:23:18');
INSERT INTO `tb_visitorlog` VALUES (384, '2022-02-24', '110.136.84.111', 'Firefox [97]', 2, '2022-02-24 10:41:16');
INSERT INTO `tb_visitorlog` VALUES (385, '2022-02-24', '66.249.66.48', 'Chrome [98]', 1, '2022-02-24 20:04:10');
INSERT INTO `tb_visitorlog` VALUES (386, '2022-02-24', '66.249.66.52', 'Chrome [98]', 1, '2022-02-24 21:48:29');
INSERT INTO `tb_visitorlog` VALUES (387, '2022-02-25', '66.249.66.50', 'Chrome [98]', 2, '2022-02-25 21:20:03');
INSERT INTO `tb_visitorlog` VALUES (388, '2022-02-25', '77.111.245.13', 'Chrome [97]', 1, '2022-02-25 10:16:41');
INSERT INTO `tb_visitorlog` VALUES (389, '2022-02-25', '77.111.245.14', 'Chrome [97]', 1, '2022-02-25 13:33:32');
INSERT INTO `tb_visitorlog` VALUES (390, '2022-02-25', '180.253.161.234', 'Chrome [98]', 3, '2022-02-25 17:15:10');
INSERT INTO `tb_visitorlog` VALUES (391, '2022-02-25', '66.96.224.196', 'Chrome [97]', 1, '2022-02-25 17:32:41');
INSERT INTO `tb_visitorlog` VALUES (392, '2022-02-25', '114.4.4.133', 'Chrome [96]', 1, '2022-02-25 17:32:47');
INSERT INTO `tb_visitorlog` VALUES (393, '2022-02-25', '52.141.211.216', 'Chrome [72]', 2, '2022-02-25 17:39:37');
INSERT INTO `tb_visitorlog` VALUES (394, '2022-02-26', '17.121.112.250', 'Safari [13.1]', 2, '2022-02-26 01:17:54');
INSERT INTO `tb_visitorlog` VALUES (395, '2022-02-26', '112.215.244.55', 'Chrome [98]', 1, '2022-02-26 01:20:31');
INSERT INTO `tb_visitorlog` VALUES (396, '2022-02-26', '118.99.76.152', 'Chrome [98]', 1, '2022-02-26 10:38:20');
INSERT INTO `tb_visitorlog` VALUES (397, '2022-02-26', '40.77.139.39', ' [0]', 1, '2022-02-26 14:49:41');
INSERT INTO `tb_visitorlog` VALUES (398, '2022-02-27', '66.249.66.50', 'Chrome [98]', 1, '2022-02-27 02:41:31');
INSERT INTO `tb_visitorlog` VALUES (399, '2022-02-27', '66.249.66.60', 'Chrome [98]', 2, '2022-02-27 12:08:19');
INSERT INTO `tb_visitorlog` VALUES (400, '2022-02-27', '66.249.73.241', 'Chrome [98]', 1, '2022-02-27 10:08:07');
INSERT INTO `tb_visitorlog` VALUES (401, '2022-02-28', '182.1.108.49', 'Chrome [92]', 6, '2022-02-28 09:21:00');
INSERT INTO `tb_visitorlog` VALUES (402, '2022-02-28', '114.5.111.143', 'Chrome [98]', 7, '2022-02-28 10:34:52');
INSERT INTO `tb_visitorlog` VALUES (403, '2022-02-28', '202.67.40.233', 'Chrome [98]', 1, '2022-02-28 08:54:56');
INSERT INTO `tb_visitorlog` VALUES (404, '2022-02-28', '202.67.40.233', 'Chrome [89]', 2, '2022-02-28 08:55:41');
INSERT INTO `tb_visitorlog` VALUES (405, '2022-02-28', '202.67.40.239', 'Chrome [98]', 3, '2022-02-28 09:50:15');
INSERT INTO `tb_visitorlog` VALUES (406, '2022-02-28', '118.99.76.154', 'Safari [604.1]', 1, '2022-02-28 09:56:36');
INSERT INTO `tb_visitorlog` VALUES (407, '2022-02-28', '202.67.40.246', 'Chrome [98]', 1, '2022-02-28 10:09:47');
INSERT INTO `tb_visitorlog` VALUES (408, '2022-02-28', '66.249.66.52', 'Chrome [98]', 1, '2022-02-28 10:24:32');
INSERT INTO `tb_visitorlog` VALUES (409, '2022-02-28', '202.67.40.214', 'Chrome [78]', 1, '2022-02-28 10:57:56');
INSERT INTO `tb_visitorlog` VALUES (410, '2022-02-28', '182.1.124.67', 'Chrome [98]', 3, '2022-02-28 11:03:48');
INSERT INTO `tb_visitorlog` VALUES (411, '2022-02-28', '140.0.8.249', 'Chrome [98]', 4, '2022-02-28 14:49:04');
INSERT INTO `tb_visitorlog` VALUES (412, '2022-02-28', '52.45.71.77', 'Chrome [92]', 2, '2022-02-28 11:10:32');
INSERT INTO `tb_visitorlog` VALUES (413, '2022-02-28', '100.24.88.194', 'Chrome [92]', 1, '2022-02-28 11:10:29');
INSERT INTO `tb_visitorlog` VALUES (414, '2022-02-28', '40.94.26.176', 'Chrome [80]', 1, '2022-02-28 11:10:58');
INSERT INTO `tb_visitorlog` VALUES (415, '2022-02-28', '36.74.122.160', 'Chrome [92]', 1, '2022-02-28 18:18:27');
INSERT INTO `tb_visitorlog` VALUES (416, '2022-03-01', '66.249.73.241', 'Chrome [98]', 1, '2022-03-01 08:49:56');
INSERT INTO `tb_visitorlog` VALUES (417, '2022-03-01', '66.249.66.60', 'Chrome [98]', 1, '2022-03-01 11:38:50');
INSERT INTO `tb_visitorlog` VALUES (418, '2022-03-02', '115.178.244.163', 'Chrome [64]', 1, '2022-03-02 08:10:04');
INSERT INTO `tb_visitorlog` VALUES (419, '2022-03-02', '66.249.66.62', 'Chrome [98]', 1, '2022-03-02 08:28:49');
INSERT INTO `tb_visitorlog` VALUES (420, '2022-03-02', '66.249.66.210', 'Chrome [98]', 1, '2022-03-02 16:13:28');
INSERT INTO `tb_visitorlog` VALUES (421, '2022-03-02', '110.136.84.33', 'Chrome [98]', 5, '2022-03-02 16:41:37');
INSERT INTO `tb_visitorlog` VALUES (422, '2022-03-02', '118.99.76.154', 'Safari [604.1]', 2, '2022-03-02 23:33:50');
INSERT INTO `tb_visitorlog` VALUES (423, '2022-03-03', '110.137.102.91', 'Chrome [98]', 2, '2022-03-03 16:47:23');
INSERT INTO `tb_visitorlog` VALUES (424, '2022-03-03', '66.249.66.210', 'Chrome [98]', 1, '2022-03-03 19:05:36');
INSERT INTO `tb_visitorlog` VALUES (425, '2022-03-03', '66.249.66.48', 'Chrome [98]', 2, '2022-03-03 20:41:36');
INSERT INTO `tb_visitorlog` VALUES (426, '2022-03-04', '110.136.84.105', 'Chrome [98]', 5, '2022-03-04 14:18:53');
INSERT INTO `tb_visitorlog` VALUES (427, '2022-03-04', '114.5.246.194', 'Chrome [98]', 2, '2022-03-04 08:36:09');
INSERT INTO `tb_visitorlog` VALUES (428, '2022-03-04', '110.136.84.53', 'Chrome [98]', 1, '2022-03-04 09:24:27');
INSERT INTO `tb_visitorlog` VALUES (429, '2022-03-04', '36.79.204.164', 'Chrome [98]', 1, '2022-03-04 13:05:01');
INSERT INTO `tb_visitorlog` VALUES (430, '2022-03-04', '66.249.66.52', 'Chrome [98]', 1, '2022-03-04 16:01:10');
INSERT INTO `tb_visitorlog` VALUES (431, '2022-03-04', '110.50.81.200', 'Chrome [97]', 1, '2022-03-04 17:06:07');
INSERT INTO `tb_visitorlog` VALUES (432, '2022-03-04', '40.94.25.227', 'Chrome [64]', 2, '2022-03-04 17:17:29');
INSERT INTO `tb_visitorlog` VALUES (433, '2022-03-04', '110.136.84.34', 'Chrome [98]', 1, '2022-03-04 17:31:14');
INSERT INTO `tb_visitorlog` VALUES (434, '2022-03-05', '66.249.66.58', 'Chrome [98]', 1, '2022-03-05 00:48:00');
INSERT INTO `tb_visitorlog` VALUES (435, '2022-03-05', '66.249.66.198', 'Chrome [98]', 1, '2022-03-05 10:04:25');
INSERT INTO `tb_visitorlog` VALUES (436, '2022-03-06', '175.158.38.75', 'Chrome [98]', 3, '2022-03-06 05:44:50');
INSERT INTO `tb_visitorlog` VALUES (437, '2022-03-06', '180.251.120.210', ' [0]', 2, '2022-03-06 18:42:28');
INSERT INTO `tb_visitorlog` VALUES (438, '2022-03-06', '17.121.113.166', 'Safari [13.1]', 2, '2022-03-06 19:24:18');
INSERT INTO `tb_visitorlog` VALUES (439, '2022-03-07', '65.154.226.168', 'Chrome [76]', 1, '2022-03-07 01:42:25');
INSERT INTO `tb_visitorlog` VALUES (440, '2022-03-07', '66.249.66.58', 'Chrome [98]', 1, '2022-03-07 04:12:09');
INSERT INTO `tb_visitorlog` VALUES (441, '2022-03-07', '52.24.158.143', 'Chrome [74]', 1, '2022-03-07 05:38:17');
INSERT INTO `tb_visitorlog` VALUES (442, '2022-03-07', '40.77.139.124', ' [NaN]', 1, '2022-03-07 07:09:50');
INSERT INTO `tb_visitorlog` VALUES (443, '2022-03-07', '65.154.226.167', 'Chrome [76]', 1, '2022-03-07 10:01:45');
INSERT INTO `tb_visitorlog` VALUES (444, '2022-03-07', '110.136.84.86', 'Chrome [98]', 1, '2022-03-07 10:05:04');
INSERT INTO `tb_visitorlog` VALUES (445, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-07 10:19:06');
INSERT INTO `tb_visitorlog` VALUES (446, '2022-03-07', '36.79.204.164', 'Chrome [98]', 12, '2022-03-07 14:49:03');
INSERT INTO `tb_visitorlog` VALUES (447, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:27:58');
INSERT INTO `tb_visitorlog` VALUES (448, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:27:59');
INSERT INTO `tb_visitorlog` VALUES (449, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:33:26');
INSERT INTO `tb_visitorlog` VALUES (450, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:33:53');
INSERT INTO `tb_visitorlog` VALUES (451, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:39:00');
INSERT INTO `tb_visitorlog` VALUES (452, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:39:35');
INSERT INTO `tb_visitorlog` VALUES (453, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:42:26');
INSERT INTO `tb_visitorlog` VALUES (454, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:43:34');
INSERT INTO `tb_visitorlog` VALUES (455, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:44:24');
INSERT INTO `tb_visitorlog` VALUES (456, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:45:16');
INSERT INTO `tb_visitorlog` VALUES (457, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:47:29');
INSERT INTO `tb_visitorlog` VALUES (458, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:48:06');
INSERT INTO `tb_visitorlog` VALUES (459, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:49:21');
INSERT INTO `tb_visitorlog` VALUES (460, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:50:34');
INSERT INTO `tb_visitorlog` VALUES (461, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:52:37');
INSERT INTO `tb_visitorlog` VALUES (462, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:53:48');
INSERT INTO `tb_visitorlog` VALUES (463, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:56:11');
INSERT INTO `tb_visitorlog` VALUES (464, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:57:45');
INSERT INTO `tb_visitorlog` VALUES (465, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 11:58:39');
INSERT INTO `tb_visitorlog` VALUES (466, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 11:59:12');
INSERT INTO `tb_visitorlog` VALUES (467, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:07:38');
INSERT INTO `tb_visitorlog` VALUES (468, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 12:08:28');
INSERT INTO `tb_visitorlog` VALUES (469, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:09:13');
INSERT INTO `tb_visitorlog` VALUES (470, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:09:15');
INSERT INTO `tb_visitorlog` VALUES (471, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-07 12:10:08');
INSERT INTO `tb_visitorlog` VALUES (472, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:11:00');
INSERT INTO `tb_visitorlog` VALUES (473, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:11:48');
INSERT INTO `tb_visitorlog` VALUES (474, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:11:58');
INSERT INTO `tb_visitorlog` VALUES (475, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-07 12:12:00');
INSERT INTO `tb_visitorlog` VALUES (476, '2022-03-07', '66.249.66.54', 'Chrome [98]', 1, '2022-03-07 12:24:30');
INSERT INTO `tb_visitorlog` VALUES (477, '2022-03-07', '110.136.84.86', 'Chrome [99]', 2, '2022-03-07 14:38:34');
INSERT INTO `tb_visitorlog` VALUES (478, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-07 14:39:03');
INSERT INTO `tb_visitorlog` VALUES (479, '2022-03-07', '202.67.46.30', 'Chrome [98]', 1, '2022-03-07 14:39:22');
INSERT INTO `tb_visitorlog` VALUES (480, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-07 15:12:27');
INSERT INTO `tb_visitorlog` VALUES (481, '2022-03-07', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-07 15:12:30');
INSERT INTO `tb_visitorlog` VALUES (482, '2022-03-07', '180.253.61.35', 'Chrome [98]', 5, '2022-03-07 16:18:58');
INSERT INTO `tb_visitorlog` VALUES (483, '2022-03-07', '202.67.40.220', 'Chrome [98]', 3, '2022-03-07 17:31:31');
INSERT INTO `tb_visitorlog` VALUES (484, '2022-03-08', '202.67.40.198', 'Chrome [98]', 1, '2022-03-08 05:44:19');
INSERT INTO `tb_visitorlog` VALUES (485, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 08:49:22');
INSERT INTO `tb_visitorlog` VALUES (486, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 08:49:33');
INSERT INTO `tb_visitorlog` VALUES (487, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:51:52');
INSERT INTO `tb_visitorlog` VALUES (488, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:51:59');
INSERT INTO `tb_visitorlog` VALUES (489, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:52:10');
INSERT INTO `tb_visitorlog` VALUES (490, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:52:20');
INSERT INTO `tb_visitorlog` VALUES (491, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:52:21');
INSERT INTO `tb_visitorlog` VALUES (492, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:53:18');
INSERT INTO `tb_visitorlog` VALUES (493, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:53:22');
INSERT INTO `tb_visitorlog` VALUES (494, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:53:29');
INSERT INTO `tb_visitorlog` VALUES (495, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 08:53:30');
INSERT INTO `tb_visitorlog` VALUES (496, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:03:38');
INSERT INTO `tb_visitorlog` VALUES (497, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:24:27');
INSERT INTO `tb_visitorlog` VALUES (498, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:26:32');
INSERT INTO `tb_visitorlog` VALUES (499, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:26:38');
INSERT INTO `tb_visitorlog` VALUES (500, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:27:58');
INSERT INTO `tb_visitorlog` VALUES (501, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 09:30:43');
INSERT INTO `tb_visitorlog` VALUES (502, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:30:45');
INSERT INTO `tb_visitorlog` VALUES (503, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:38:30');
INSERT INTO `tb_visitorlog` VALUES (504, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:38:31');
INSERT INTO `tb_visitorlog` VALUES (505, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:38:32');
INSERT INTO `tb_visitorlog` VALUES (506, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:42:46');
INSERT INTO `tb_visitorlog` VALUES (507, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 09:42:48');
INSERT INTO `tb_visitorlog` VALUES (508, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [90]', 1, '2022-03-08 09:45:23');
INSERT INTO `tb_visitorlog` VALUES (509, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 10:04:42');
INSERT INTO `tb_visitorlog` VALUES (510, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 10:05:13');
INSERT INTO `tb_visitorlog` VALUES (511, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-08 10:05:34');
INSERT INTO `tb_visitorlog` VALUES (512, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:17:16');
INSERT INTO `tb_visitorlog` VALUES (513, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:20:29');
INSERT INTO `tb_visitorlog` VALUES (514, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:31:00');
INSERT INTO `tb_visitorlog` VALUES (515, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:31:02');
INSERT INTO `tb_visitorlog` VALUES (516, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:46:59');
INSERT INTO `tb_visitorlog` VALUES (517, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:50:18');
INSERT INTO `tb_visitorlog` VALUES (518, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 10:50:23');
INSERT INTO `tb_visitorlog` VALUES (519, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 10:55:13');
INSERT INTO `tb_visitorlog` VALUES (520, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 11:17:20');
INSERT INTO `tb_visitorlog` VALUES (521, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 11:17:35');
INSERT INTO `tb_visitorlog` VALUES (522, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:21:45');
INSERT INTO `tb_visitorlog` VALUES (523, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:21:55');
INSERT INTO `tb_visitorlog` VALUES (524, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:21:56');
INSERT INTO `tb_visitorlog` VALUES (525, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:21:58');
INSERT INTO `tb_visitorlog` VALUES (526, '2022-03-08', '36.95.193.161', 'Chrome [98]', 8, '2022-03-08 11:34:54');
INSERT INTO `tb_visitorlog` VALUES (527, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:33:24');
INSERT INTO `tb_visitorlog` VALUES (528, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:54:56');
INSERT INTO `tb_visitorlog` VALUES (529, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:54:59');
INSERT INTO `tb_visitorlog` VALUES (530, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:55:00');
INSERT INTO `tb_visitorlog` VALUES (531, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 11:55:04');
INSERT INTO `tb_visitorlog` VALUES (532, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 12:15:03');
INSERT INTO `tb_visitorlog` VALUES (533, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-08 13:49:45');
INSERT INTO `tb_visitorlog` VALUES (534, '2022-03-08', '36.79.204.164', 'Chrome [98]', 7, '2022-03-08 14:53:27');
INSERT INTO `tb_visitorlog` VALUES (535, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 14:04:58');
INSERT INTO `tb_visitorlog` VALUES (536, '2022-03-08', '2001:448a:5020:e11c:', 'Chrome [98]', 1, '2022-03-08 14:05:04');
INSERT INTO `tb_visitorlog` VALUES (537, '2022-03-09', '66.249.66.48', 'Chrome [98]', 1, '2022-03-09 00:02:17');
INSERT INTO `tb_visitorlog` VALUES (538, '2022-03-09', '66.249.66.33', 'Chrome [98]', 1, '2022-03-09 00:31:49');
INSERT INTO `tb_visitorlog` VALUES (539, '2022-03-09', '66.249.66.60', 'Chrome [98]', 1, '2022-03-09 01:54:59');
INSERT INTO `tb_visitorlog` VALUES (540, '2022-03-09', '114.125.92.197', 'Chrome [87]', 1, '2022-03-09 08:45:25');
INSERT INTO `tb_visitorlog` VALUES (541, '2022-03-09', '3.144.18.168', 'Safari [13]', 1, '2022-03-09 12:13:51');
INSERT INTO `tb_visitorlog` VALUES (542, '2022-03-09', '180.246.241.253', 'Chrome [99]', 7, '2022-03-09 16:57:03');
INSERT INTO `tb_visitorlog` VALUES (543, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:03:42');
INSERT INTO `tb_visitorlog` VALUES (544, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:03:43');
INSERT INTO `tb_visitorlog` VALUES (545, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:05:51');
INSERT INTO `tb_visitorlog` VALUES (546, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:05:56');
INSERT INTO `tb_visitorlog` VALUES (547, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:08:07');
INSERT INTO `tb_visitorlog` VALUES (548, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:08:09');
INSERT INTO `tb_visitorlog` VALUES (549, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:08:11');
INSERT INTO `tb_visitorlog` VALUES (550, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:08:12');
INSERT INTO `tb_visitorlog` VALUES (551, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:31:04');
INSERT INTO `tb_visitorlog` VALUES (552, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:40:49');
INSERT INTO `tb_visitorlog` VALUES (553, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 15:41:00');
INSERT INTO `tb_visitorlog` VALUES (554, '2022-03-09', '36.79.204.164', 'Chrome [99]', 1, '2022-03-09 16:13:46');
INSERT INTO `tb_visitorlog` VALUES (555, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 17:02:02');
INSERT INTO `tb_visitorlog` VALUES (556, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 17:13:58');
INSERT INTO `tb_visitorlog` VALUES (557, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 17:20:53');
INSERT INTO `tb_visitorlog` VALUES (558, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 17:22:00');
INSERT INTO `tb_visitorlog` VALUES (559, '2022-03-09', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-09 17:22:02');
INSERT INTO `tb_visitorlog` VALUES (560, '2022-03-10', '205.169.39.220', 'Chrome [79]', 1, '2022-03-10 00:36:39');
INSERT INTO `tb_visitorlog` VALUES (561, '2022-03-10', '66.249.66.60', 'Chrome [98]', 1, '2022-03-10 04:16:28');
INSERT INTO `tb_visitorlog` VALUES (562, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 08:08:26');
INSERT INTO `tb_visitorlog` VALUES (563, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 08:10:26');
INSERT INTO `tb_visitorlog` VALUES (564, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 08:10:31');
INSERT INTO `tb_visitorlog` VALUES (565, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:20:15');
INSERT INTO `tb_visitorlog` VALUES (566, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:20:38');
INSERT INTO `tb_visitorlog` VALUES (567, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:23:16');
INSERT INTO `tb_visitorlog` VALUES (568, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:23:20');
INSERT INTO `tb_visitorlog` VALUES (569, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:54:04');
INSERT INTO `tb_visitorlog` VALUES (570, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:54:09');
INSERT INTO `tb_visitorlog` VALUES (571, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 11:54:22');
INSERT INTO `tb_visitorlog` VALUES (572, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 16:15:16');
INSERT INTO `tb_visitorlog` VALUES (573, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [99]', 1, '2022-03-10 16:17:01');
INSERT INTO `tb_visitorlog` VALUES (574, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-10 17:12:37');
INSERT INTO `tb_visitorlog` VALUES (575, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-10 17:12:39');
INSERT INTO `tb_visitorlog` VALUES (576, '2022-03-10', '2001:448a:5020:e11c:', 'Chrome [97]', 1, '2022-03-10 17:12:47');
INSERT INTO `tb_visitorlog` VALUES (577, '2022-03-10', '110.136.84.23', 'Chrome [99]', 3, '2022-03-10 17:22:40');
INSERT INTO `tb_visitorlog` VALUES (578, '2022-03-10', '114.125.119.101', 'Chrome [99]', 6, '2022-03-10 18:02:35');
INSERT INTO `tb_visitorlog` VALUES (579, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 08:07:21');
INSERT INTO `tb_visitorlog` VALUES (580, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 08:15:12');
INSERT INTO `tb_visitorlog` VALUES (581, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 08:15:15');
INSERT INTO `tb_visitorlog` VALUES (582, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 08:54:13');
INSERT INTO `tb_visitorlog` VALUES (583, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 08:54:14');
INSERT INTO `tb_visitorlog` VALUES (584, '2022-03-11', '180.246.241.253', 'Chrome [99]', 3, '2022-03-11 08:55:27');
INSERT INTO `tb_visitorlog` VALUES (585, '2022-03-11', '125.164.6.62', 'Chrome [98]', 2, '2022-03-11 09:00:55');
INSERT INTO `tb_visitorlog` VALUES (586, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 09:01:06');
INSERT INTO `tb_visitorlog` VALUES (587, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 09:23:19');
INSERT INTO `tb_visitorlog` VALUES (588, '2022-03-11', '110.136.84.40', 'Chrome [99]', 4, '2022-03-11 10:46:03');
INSERT INTO `tb_visitorlog` VALUES (589, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 09:41:28');
INSERT INTO `tb_visitorlog` VALUES (590, '2022-03-11', '125.164.6.62', 'Chrome [99]', 2, '2022-03-11 10:23:11');
INSERT INTO `tb_visitorlog` VALUES (591, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 11:21:20');
INSERT INTO `tb_visitorlog` VALUES (592, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 14:11:36');
INSERT INTO `tb_visitorlog` VALUES (593, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 14:18:47');
INSERT INTO `tb_visitorlog` VALUES (594, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 14:58:27');
INSERT INTO `tb_visitorlog` VALUES (595, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 14:58:42');
INSERT INTO `tb_visitorlog` VALUES (596, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 14:58:46');
INSERT INTO `tb_visitorlog` VALUES (597, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 15:18:16');
INSERT INTO `tb_visitorlog` VALUES (598, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:05:21');
INSERT INTO `tb_visitorlog` VALUES (599, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:05:22');
INSERT INTO `tb_visitorlog` VALUES (600, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:05:30');
INSERT INTO `tb_visitorlog` VALUES (601, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:06:59');
INSERT INTO `tb_visitorlog` VALUES (602, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:08:25');
INSERT INTO `tb_visitorlog` VALUES (603, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [97]', 1, '2022-03-11 16:08:32');
INSERT INTO `tb_visitorlog` VALUES (604, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 16:56:32');
INSERT INTO `tb_visitorlog` VALUES (605, '2022-03-11', '66.96.224.197', 'Chrome [97]', 1, '2022-03-11 17:02:42');
INSERT INTO `tb_visitorlog` VALUES (606, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 17:04:12');
INSERT INTO `tb_visitorlog` VALUES (607, '2022-03-11', '110.138.168.144', 'Chrome [96]', 1, '2022-03-11 17:05:46');
INSERT INTO `tb_visitorlog` VALUES (608, '2022-03-11', '2001:448a:5020:8bfa:', 'Chrome [99]', 1, '2022-03-11 18:47:07');
INSERT INTO `tb_visitorlog` VALUES (609, '2022-03-11', '182.1.112.11', 'Chrome [98]', 3, '2022-03-11 20:38:46');
INSERT INTO `tb_visitorlog` VALUES (610, '2022-03-11', '112.215.153.40', 'Chrome [99]', 2, '2022-03-11 23:18:24');
INSERT INTO `tb_visitorlog` VALUES (611, '2022-03-12', '17.121.115.167', 'Safari [13.1]', 1, '2022-03-12 01:42:46');
INSERT INTO `tb_visitorlog` VALUES (612, '2022-03-12', '66.249.64.152', 'Chrome [98]', 1, '2022-03-12 06:53:34');
INSERT INTO `tb_visitorlog` VALUES (613, '2022-03-12', '125.164.3.203', 'Chrome [98]', 1, '2022-03-12 07:49:09');
INSERT INTO `tb_visitorlog` VALUES (614, '2022-03-12', '66.249.64.132', 'Chrome [98]', 1, '2022-03-12 10:20:10');
INSERT INTO `tb_visitorlog` VALUES (615, '2022-03-12', '112.215.242.244', 'Chrome [99]', 7, '2022-03-12 12:00:08');
INSERT INTO `tb_visitorlog` VALUES (616, '2022-03-12', '118.99.79.206', 'Chrome [99]', 2, '2022-03-12 16:27:56');
INSERT INTO `tb_visitorlog` VALUES (617, '2022-03-13', '2a03:2880:ff:12::fac', 'Safari [12.1]', 1, '2022-03-13 11:00:27');
INSERT INTO `tb_visitorlog` VALUES (618, '2022-03-13', '2a03:2880:31ff:3::fa', ' [0]', 1, '2022-03-13 11:00:27');
INSERT INTO `tb_visitorlog` VALUES (619, '2022-03-13', '2a03:2880:10ff:14::f', 'Chrome [92]', 1, '2022-03-13 11:00:29');
INSERT INTO `tb_visitorlog` VALUES (620, '2022-03-13', '2a03:2880:30ff:14::f', 'Chrome [99]', 1, '2022-03-13 11:00:29');
INSERT INTO `tb_visitorlog` VALUES (621, '2022-03-13', '2a03:2880:30ff:77::f', 'Chrome [55]', 1, '2022-03-13 11:00:36');
INSERT INTO `tb_visitorlog` VALUES (622, '2022-03-14', '205.169.39.53', 'Chrome [76]', 1, '2022-03-14 01:05:36');
INSERT INTO `tb_visitorlog` VALUES (623, '2022-03-14', '125.164.3.84', 'Chrome [99]', 6, '2022-03-14 14:23:23');
INSERT INTO `tb_visitorlog` VALUES (624, '2022-03-14', '125.164.4.38', 'Chrome [99]', 8, '2022-03-14 11:57:44');
INSERT INTO `tb_visitorlog` VALUES (625, '2022-03-14', '65.154.226.167', 'Chrome [76]', 1, '2022-03-14 10:10:18');
INSERT INTO `tb_visitorlog` VALUES (626, '2022-03-14', '114.4.222.251', 'Chrome [95]', 1, '2022-03-14 17:34:33');
INSERT INTO `tb_visitorlog` VALUES (627, '2022-03-14', '2001:448a:5020:d95a:', 'Chrome [99]', 1, '2022-03-14 17:57:08');
INSERT INTO `tb_visitorlog` VALUES (628, '2022-03-15', '207.46.13.115', ' [0]', 1, '2022-03-15 00:12:53');
INSERT INTO `tb_visitorlog` VALUES (629, '2022-03-15', '66.249.64.146', 'Chrome [98]', 1, '2022-03-15 01:43:24');
INSERT INTO `tb_visitorlog` VALUES (630, '2022-03-15', '66.249.64.139', 'Chrome [98]', 1, '2022-03-15 01:47:19');
INSERT INTO `tb_visitorlog` VALUES (631, '2022-03-15', '125.164.14.134', 'Chrome [99]', 3, '2022-03-15 16:24:52');
INSERT INTO `tb_visitorlog` VALUES (632, '2022-03-15', '125.164.13.244', 'Chrome [99]', 7, '2022-03-15 13:40:15');
INSERT INTO `tb_visitorlog` VALUES (633, '2022-03-15', '157.55.39.205', ' [0]', 1, '2022-03-15 17:39:50');
INSERT INTO `tb_visitorlog` VALUES (634, '2022-03-15', '66.249.64.152', 'Chrome [98]', 1, '2022-03-15 23:20:06');
INSERT INTO `tb_visitorlog` VALUES (635, '2022-03-16', '180.253.160.86', 'Chrome [99]', 2, '2022-03-16 15:26:02');
INSERT INTO `tb_visitorlog` VALUES (636, '2022-03-16', '2001:448a:5020:597c:', 'Chrome [98]', 1, '2022-03-16 16:42:22');
INSERT INTO `tb_visitorlog` VALUES (637, '2022-03-17', '205.169.39.217', 'Chrome [79]', 1, '2022-03-17 01:47:24');
INSERT INTO `tb_visitorlog` VALUES (638, '2022-03-17', '2a03:2880:10ff:9::fa', 'Chrome [78]', 1, '2022-03-17 09:58:48');
INSERT INTO `tb_visitorlog` VALUES (639, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:18:55');
INSERT INTO `tb_visitorlog` VALUES (640, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:19:02');
INSERT INTO `tb_visitorlog` VALUES (641, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:19:05');
INSERT INTO `tb_visitorlog` VALUES (642, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:19:06');
INSERT INTO `tb_visitorlog` VALUES (643, '2022-03-17', '125.164.0.240', 'Chrome [99]', 1, '2022-03-17 13:44:31');
INSERT INTO `tb_visitorlog` VALUES (644, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:51:50');
INSERT INTO `tb_visitorlog` VALUES (645, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:52:26');
INSERT INTO `tb_visitorlog` VALUES (646, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:55:22');
INSERT INTO `tb_visitorlog` VALUES (647, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 13:56:00');
INSERT INTO `tb_visitorlog` VALUES (648, '2022-03-17', '125.164.1.244', 'Chrome [99]', 10, '2022-03-17 14:45:29');
INSERT INTO `tb_visitorlog` VALUES (649, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 14:45:47');
INSERT INTO `tb_visitorlog` VALUES (650, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 14:45:52');
INSERT INTO `tb_visitorlog` VALUES (651, '2022-03-17', '66.249.64.135', 'Chrome [98]', 1, '2022-03-17 15:20:30');
INSERT INTO `tb_visitorlog` VALUES (652, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 15:32:37');
INSERT INTO `tb_visitorlog` VALUES (653, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 15:46:37');
INSERT INTO `tb_visitorlog` VALUES (654, '2022-03-17', '2001:448a:5020:6b9b:', 'Chrome [99]', 1, '2022-03-17 15:50:20');
INSERT INTO `tb_visitorlog` VALUES (655, '2022-03-18', '36.82.91.64', 'Chrome [99]', 7, '2022-03-18 14:22:42');
INSERT INTO `tb_visitorlog` VALUES (656, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 08:33:33');
INSERT INTO `tb_visitorlog` VALUES (657, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 08:33:37');
INSERT INTO `tb_visitorlog` VALUES (658, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 08:33:50');
INSERT INTO `tb_visitorlog` VALUES (659, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 08:45:16');
INSERT INTO `tb_visitorlog` VALUES (660, '2022-03-18', '202.6.227.46', 'Chrome [99]', 1, '2022-03-18 09:26:32');
INSERT INTO `tb_visitorlog` VALUES (661, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 14:14:44');
INSERT INTO `tb_visitorlog` VALUES (662, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 14:23:29');
INSERT INTO `tb_visitorlog` VALUES (663, '2022-03-18', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-18 14:47:13');
INSERT INTO `tb_visitorlog` VALUES (664, '2022-03-18', '180.253.166.185', 'Chrome [99]', 3, '2022-03-18 17:11:48');
INSERT INTO `tb_visitorlog` VALUES (665, '2022-03-18', '150.129.59.4', 'Chrome [83]', 1, '2022-03-18 17:36:44');
INSERT INTO `tb_visitorlog` VALUES (666, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:19:04');
INSERT INTO `tb_visitorlog` VALUES (667, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:26:13');
INSERT INTO `tb_visitorlog` VALUES (668, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:26:29');
INSERT INTO `tb_visitorlog` VALUES (669, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:27:02');
INSERT INTO `tb_visitorlog` VALUES (670, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:36:41');
INSERT INTO `tb_visitorlog` VALUES (671, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:55:12');
INSERT INTO `tb_visitorlog` VALUES (672, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:55:15');
INSERT INTO `tb_visitorlog` VALUES (673, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 08:55:17');
INSERT INTO `tb_visitorlog` VALUES (674, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 09:01:47');
INSERT INTO `tb_visitorlog` VALUES (675, '2022-03-21', '65.154.226.170', 'Chrome [76]', 2, '2022-03-21 10:38:26');
INSERT INTO `tb_visitorlog` VALUES (676, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 09:59:24');
INSERT INTO `tb_visitorlog` VALUES (677, '2022-03-21', '40.91.86.116', 'Firefox [83]', 2, '2022-03-21 10:18:01');
INSERT INTO `tb_visitorlog` VALUES (678, '2022-03-21', '65.154.226.169', 'Chrome [76]', 1, '2022-03-21 10:40:16');
INSERT INTO `tb_visitorlog` VALUES (679, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 11:04:54');
INSERT INTO `tb_visitorlog` VALUES (680, '2022-03-21', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-21 11:05:18');
INSERT INTO `tb_visitorlog` VALUES (681, '2022-03-22', '146.148.33.129', 'Chrome [92]', 1, '2022-03-22 06:18:00');
INSERT INTO `tb_visitorlog` VALUES (682, '2022-03-22', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-22 08:25:22');
INSERT INTO `tb_visitorlog` VALUES (683, '2022-03-22', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-22 15:26:26');
INSERT INTO `tb_visitorlog` VALUES (684, '2022-03-22', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-22 15:26:28');
INSERT INTO `tb_visitorlog` VALUES (685, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 08:06:40');
INSERT INTO `tb_visitorlog` VALUES (686, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 09:38:40');
INSERT INTO `tb_visitorlog` VALUES (687, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 09:39:17');
INSERT INTO `tb_visitorlog` VALUES (688, '2022-03-23', '180.253.160.125', 'Chrome [99]', 1, '2022-03-23 09:42:30');
INSERT INTO `tb_visitorlog` VALUES (689, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:07');
INSERT INTO `tb_visitorlog` VALUES (690, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:11');
INSERT INTO `tb_visitorlog` VALUES (691, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:19');
INSERT INTO `tb_visitorlog` VALUES (692, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:22');
INSERT INTO `tb_visitorlog` VALUES (693, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:25');
INSERT INTO `tb_visitorlog` VALUES (694, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:26');
INSERT INTO `tb_visitorlog` VALUES (695, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:28');
INSERT INTO `tb_visitorlog` VALUES (696, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:03:30');
INSERT INTO `tb_visitorlog` VALUES (697, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:02');
INSERT INTO `tb_visitorlog` VALUES (698, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:03');
INSERT INTO `tb_visitorlog` VALUES (699, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:07');
INSERT INTO `tb_visitorlog` VALUES (700, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:10');
INSERT INTO `tb_visitorlog` VALUES (701, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:12');
INSERT INTO `tb_visitorlog` VALUES (702, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:16');
INSERT INTO `tb_visitorlog` VALUES (703, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:21');
INSERT INTO `tb_visitorlog` VALUES (704, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:23');
INSERT INTO `tb_visitorlog` VALUES (705, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:26');
INSERT INTO `tb_visitorlog` VALUES (706, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:35:46');
INSERT INTO `tb_visitorlog` VALUES (707, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:36:04');
INSERT INTO `tb_visitorlog` VALUES (708, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:36:12');
INSERT INTO `tb_visitorlog` VALUES (709, '2022-03-23', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-23 10:40:42');
INSERT INTO `tb_visitorlog` VALUES (710, '2022-03-23', '36.82.91.64', 'Chrome [99]', 2, '2022-03-23 13:30:14');
INSERT INTO `tb_visitorlog` VALUES (711, '2022-03-24', '149.113.52.221', 'Chrome [99]', 7, '2022-03-24 08:53:21');
INSERT INTO `tb_visitorlog` VALUES (712, '2022-03-24', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-24 13:30:52');
INSERT INTO `tb_visitorlog` VALUES (713, '2022-03-24', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-24 13:30:54');
INSERT INTO `tb_visitorlog` VALUES (714, '2022-03-24', '2001:448a:5020:d75b:', 'Chrome [99]', 1, '2022-03-24 13:31:01');
INSERT INTO `tb_visitorlog` VALUES (715, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 08:41:43');
INSERT INTO `tb_visitorlog` VALUES (716, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 09:12:58');
INSERT INTO `tb_visitorlog` VALUES (717, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:17:37');
INSERT INTO `tb_visitorlog` VALUES (718, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:17:57');
INSERT INTO `tb_visitorlog` VALUES (719, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:18:05');
INSERT INTO `tb_visitorlog` VALUES (720, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:18:14');
INSERT INTO `tb_visitorlog` VALUES (721, '2022-03-25', '36.74.90.231', 'Chrome [99]', 6, '2022-03-25 10:19:18');
INSERT INTO `tb_visitorlog` VALUES (722, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:48:08');
INSERT INTO `tb_visitorlog` VALUES (723, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:49:50');
INSERT INTO `tb_visitorlog` VALUES (724, '2022-03-25', '103.26.211.4', 'Chrome [97]', 1, '2022-03-25 10:50:15');
INSERT INTO `tb_visitorlog` VALUES (725, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:50:24');
INSERT INTO `tb_visitorlog` VALUES (726, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:50:24');
INSERT INTO `tb_visitorlog` VALUES (727, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:50:29');
INSERT INTO `tb_visitorlog` VALUES (728, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:50:47');
INSERT INTO `tb_visitorlog` VALUES (729, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:51:05');
INSERT INTO `tb_visitorlog` VALUES (730, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:53:35');
INSERT INTO `tb_visitorlog` VALUES (731, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:56:31');
INSERT INTO `tb_visitorlog` VALUES (732, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 10:56:36');
INSERT INTO `tb_visitorlog` VALUES (733, '2022-03-25', '180.253.160.125', 'Chrome [99]', 1, '2022-03-25 11:05:32');
INSERT INTO `tb_visitorlog` VALUES (734, '2022-03-25', '66.249.72.184', 'Chrome [98]', 1, '2022-03-25 11:39:36');
INSERT INTO `tb_visitorlog` VALUES (735, '2022-03-25', '180.253.60.134', 'Chrome [92]', 1, '2022-03-25 12:07:54');
INSERT INTO `tb_visitorlog` VALUES (736, '2022-03-25', '2001:448a:5020:8fed:', 'Chrome [99]', 1, '2022-03-25 12:54:54');
INSERT INTO `tb_visitorlog` VALUES (737, '2022-03-25', '66.249.66.222', 'Chrome [98]', 1, '2022-03-25 16:36:15');
INSERT INTO `tb_visitorlog` VALUES (738, '2022-03-25', '114.4.4.198', 'Chrome [96]', 1, '2022-03-25 17:12:59');
INSERT INTO `tb_visitorlog` VALUES (739, '2022-03-25', '36.74.121.68', 'Chrome [99]', 3, '2022-03-25 17:29:55');
INSERT INTO `tb_visitorlog` VALUES (740, '2022-03-25', '113.197.108.37', 'Chrome [97]', 1, '2022-03-25 17:36:54');
INSERT INTO `tb_visitorlog` VALUES (741, '2022-03-25', '114.4.4.136', 'Chrome [97]', 1, '2022-03-25 18:05:07');
INSERT INTO `tb_visitorlog` VALUES (742, '2022-03-25', '66.249.64.135', 'Chrome [98]', 1, '2022-03-25 18:21:05');
INSERT INTO `tb_visitorlog` VALUES (743, '2022-03-25', '112.215.153.169', 'Chrome [99]', 1, '2022-03-25 18:49:15');
INSERT INTO `tb_visitorlog` VALUES (744, '2022-03-26', '17.121.114.59', 'Safari [13.1]', 1, '2022-03-26 01:18:08');
INSERT INTO `tb_visitorlog` VALUES (745, '2022-03-26', '66.249.66.222', 'Chrome [98]', 1, '2022-03-26 05:03:11');
INSERT INTO `tb_visitorlog` VALUES (746, '2022-03-26', '66.249.72.184', 'Chrome [98]', 1, '2022-03-26 06:01:44');
INSERT INTO `tb_visitorlog` VALUES (747, '2022-03-26', '66.249.73.114', 'Chrome [98]', 2, '2022-03-26 16:19:38');
INSERT INTO `tb_visitorlog` VALUES (748, '2022-03-26', '69.160.160.55', 'Chrome [81]', 1, '2022-03-26 08:21:17');
INSERT INTO `tb_visitorlog` VALUES (749, '2022-03-26', '66.249.64.135', 'Chrome [98]', 1, '2022-03-26 15:07:45');
INSERT INTO `tb_visitorlog` VALUES (750, '2022-03-27', '205.169.39.52', 'Chrome [76]', 1, '2022-03-27 05:42:30');
INSERT INTO `tb_visitorlog` VALUES (751, '2022-03-27', '66.249.73.114', 'Chrome [98]', 1, '2022-03-27 12:11:14');
INSERT INTO `tb_visitorlog` VALUES (752, '2022-03-27', '66.249.66.222', 'Chrome [98]', 1, '2022-03-27 12:11:49');
INSERT INTO `tb_visitorlog` VALUES (753, '2022-03-28', '65.154.226.167', 'Chrome [76]', 1, '2022-03-28 01:49:42');
INSERT INTO `tb_visitorlog` VALUES (754, '2022-03-28', '139.0.117.135', 'Chrome [99]', 1, '2022-03-28 08:04:16');
INSERT INTO `tb_visitorlog` VALUES (755, '2022-03-28', '125.164.10.76', 'Chrome [99]', 7, '2022-03-28 16:03:22');
INSERT INTO `tb_visitorlog` VALUES (756, '2022-03-28', '202.6.227.46', 'Chrome [99]', 13, '2022-03-28 16:34:44');
INSERT INTO `tb_visitorlog` VALUES (757, '2022-03-28', '125.164.15.41', 'Chrome [99]', 2, '2022-03-28 11:05:02');
INSERT INTO `tb_visitorlog` VALUES (758, '2022-03-28', '205.169.39.54', 'Chrome [76]', 2, '2022-03-28 11:30:37');
INSERT INTO `tb_visitorlog` VALUES (759, '2022-03-28', '65.154.226.169', 'Chrome [76]', 1, '2022-03-28 11:19:34');
INSERT INTO `tb_visitorlog` VALUES (760, '2022-03-28', '66.249.64.152', 'Chrome [98]', 2, '2022-03-28 13:57:34');
INSERT INTO `tb_visitorlog` VALUES (761, '2022-03-28', '66.249.73.112', 'Chrome [98]', 1, '2022-03-28 13:25:15');
INSERT INTO `tb_visitorlog` VALUES (762, '2022-03-28', '66.249.64.146', 'Chrome [98]', 1, '2022-03-28 13:25:16');
INSERT INTO `tb_visitorlog` VALUES (763, '2022-03-28', '2001:448a:5020:b192:', 'Chrome [99]', 1, '2022-03-28 14:55:44');
INSERT INTO `tb_visitorlog` VALUES (764, '2022-03-28', '66.249.64.128', 'Chrome [98]', 1, '2022-03-28 19:54:33');
INSERT INTO `tb_visitorlog` VALUES (765, '2022-03-29', '125.164.3.101', 'Chrome [99]', 12, '2022-03-29 11:51:31');
INSERT INTO `tb_visitorlog` VALUES (766, '2022-03-29', '36.78.137.133', 'Chrome [99]', 4, '2022-03-29 09:53:06');
INSERT INTO `tb_visitorlog` VALUES (767, '2022-03-29', '146.148.33.129', 'Chrome [92]', 1, '2022-03-29 10:55:14');
INSERT INTO `tb_visitorlog` VALUES (768, '2022-03-30', '66.249.64.128', 'Chrome [99]', 2, '2022-03-30 08:23:25');
INSERT INTO `tb_visitorlog` VALUES (769, '2022-03-30', '66.249.64.139', 'Chrome [99]', 1, '2022-03-30 05:59:11');
INSERT INTO `tb_visitorlog` VALUES (770, '2022-03-30', '52.221.250.111', 'Chrome [98]', 1, '2022-03-30 07:19:56');
INSERT INTO `tb_visitorlog` VALUES (771, '2022-03-30', '2600:1702:3280:13c0:', 'Safari [14.1]', 1, '2022-03-30 09:35:10');
INSERT INTO `tb_visitorlog` VALUES (772, '2022-03-30', '66.249.64.146', 'Chrome [99]', 1, '2022-03-30 09:52:42');
INSERT INTO `tb_visitorlog` VALUES (773, '2022-03-30', '66.249.64.152', 'Chrome [99]', 2, '2022-03-30 16:08:38');
INSERT INTO `tb_visitorlog` VALUES (774, '2022-03-31', '180.253.170.85', 'Chrome [99]', 1, '2022-03-31 08:17:10');
INSERT INTO `tb_visitorlog` VALUES (775, '2022-03-31', '66.249.65.12', 'Chrome [99]', 1, '2022-03-31 10:09:45');
INSERT INTO `tb_visitorlog` VALUES (776, '2022-03-31', '66.249.65.14', 'Chrome [99]', 1, '2022-03-31 10:40:55');
INSERT INTO `tb_visitorlog` VALUES (777, '2022-03-31', '66.249.65.16', 'Chrome [99]', 2, '2022-03-31 13:38:43');
INSERT INTO `tb_visitorlog` VALUES (778, '2022-03-31', '2001:448a:5020:5270:', 'Chrome [99]', 1, '2022-03-31 14:06:36');
INSERT INTO `tb_visitorlog` VALUES (779, '2022-03-31', '66.249.64.128', 'Chrome [99]', 1, '2022-03-31 14:48:53');
INSERT INTO `tb_visitorlog` VALUES (780, '2022-03-31', '2001:448a:5020:5270:', 'Chrome [100]', 1, '2022-03-31 17:13:29');
INSERT INTO `tb_visitorlog` VALUES (781, '2022-03-31', '45.121.219.6', 'Chrome [97]', 1, '2022-03-31 17:13:39');
INSERT INTO `tb_visitorlog` VALUES (782, '2022-03-31', '2001:448a:5020:5270:', 'Chrome [100]', 1, '2022-03-31 17:15:31');
INSERT INTO `tb_visitorlog` VALUES (783, '2022-03-31', '150.129.59.5', 'Chrome [97]', 1, '2022-03-31 17:15:54');
INSERT INTO `tb_visitorlog` VALUES (784, '2022-04-01', '66.249.65.4', 'Chrome [99]', 1, '2022-04-01 00:24:55');
INSERT INTO `tb_visitorlog` VALUES (785, '2022-04-01', '66.249.65.16', 'Chrome [99]', 1, '2022-04-01 03:04:24');
INSERT INTO `tb_visitorlog` VALUES (786, '2022-04-01', '66.249.64.139', 'Chrome [99]', 2, '2022-04-01 13:05:45');
INSERT INTO `tb_visitorlog` VALUES (787, '2022-04-01', '202.6.227.46', 'Chrome [99]', 50, '2022-04-01 17:16:14');
INSERT INTO `tb_visitorlog` VALUES (788, '2022-04-01', '202.6.227.46', ' [0]', 3, '2022-04-01 15:16:57');
INSERT INTO `tb_visitorlog` VALUES (789, '2022-04-01', '202.6.227.46', ' [NaN]', 1, '2022-04-01 09:41:59');
INSERT INTO `tb_visitorlog` VALUES (790, '2022-04-01', '202.6.227.46', 'Safari [604.1]', 3, '2022-04-01 15:51:09');
INSERT INTO `tb_visitorlog` VALUES (791, '2022-04-01', '36.78.141.195', 'Chrome [97]', 22, '2022-04-01 10:25:27');
INSERT INTO `tb_visitorlog` VALUES (792, '2022-04-01', '202.6.227.46', 'Chrome [97]', 1, '2022-04-01 10:49:20');
INSERT INTO `tb_visitorlog` VALUES (793, '2022-04-01', '180.246.230.247', 'Chrome [99]', 9, '2022-04-01 10:51:06');
INSERT INTO `tb_visitorlog` VALUES (794, '2022-04-01', '202.6.227.46', 'Chrome [100]', 5, '2022-04-01 17:12:33');
INSERT INTO `tb_visitorlog` VALUES (795, '2022-04-01', '110.50.81.202', 'Chrome [23]', 1, '2022-04-01 17:02:54');
INSERT INTO `tb_visitorlog` VALUES (796, '2022-04-01', '103.26.211.4', 'Chrome [98]', 1, '2022-04-01 17:13:06');
INSERT INTO `tb_visitorlog` VALUES (797, '2022-04-01', '112.215.173.177', 'Chrome [99]', 1, '2022-04-01 18:52:50');
INSERT INTO `tb_visitorlog` VALUES (798, '2022-04-02', '66.249.64.139', 'Chrome [99]', 1, '2022-04-02 00:34:52');
INSERT INTO `tb_visitorlog` VALUES (799, '2022-04-02', '66.249.65.4', 'Chrome [99]', 1, '2022-04-02 14:33:35');
INSERT INTO `tb_visitorlog` VALUES (800, '2022-04-02', '35.160.49.205', 'Chrome [74]', 1, '2022-04-02 16:09:13');
INSERT INTO `tb_visitorlog` VALUES (801, '2022-04-03', '66.249.65.16', 'Chrome [99]', 1, '2022-04-03 02:47:30');
INSERT INTO `tb_visitorlog` VALUES (802, '2022-04-03', '66.249.65.12', 'Chrome [99]', 1, '2022-04-03 02:49:52');
INSERT INTO `tb_visitorlog` VALUES (803, '2022-04-03', '66.249.65.14', 'Chrome [99]', 1, '2022-04-03 02:53:18');
INSERT INTO `tb_visitorlog` VALUES (804, '2022-04-03', '66.249.73.104', 'Chrome [99]', 2, '2022-04-03 04:47:03');
INSERT INTO `tb_visitorlog` VALUES (805, '2022-04-03', '17.121.114.99', 'Safari [13.1]', 1, '2022-04-03 03:48:27');
INSERT INTO `tb_visitorlog` VALUES (806, '2022-04-03', '66.249.64.146', 'Chrome [99]', 2, '2022-04-03 15:06:29');
INSERT INTO `tb_visitorlog` VALUES (807, '2022-04-03', '66.249.65.4', 'Chrome [99]', 1, '2022-04-03 15:43:52');
INSERT INTO `tb_visitorlog` VALUES (808, '2022-04-04', '66.249.64.135', 'Chrome [99]', 1, '2022-04-04 00:07:39');
INSERT INTO `tb_visitorlog` VALUES (809, '2022-04-04', '66.249.75.233', 'Chrome [99]', 2, '2022-04-04 00:08:24');
INSERT INTO `tb_visitorlog` VALUES (810, '2022-04-04', '66.249.64.158', 'Chrome [99]', 1, '2022-04-04 05:54:08');
INSERT INTO `tb_visitorlog` VALUES (811, '2022-04-04', '36.78.141.195', 'Chrome [99]', 3, '2022-04-04 09:04:49');
INSERT INTO `tb_visitorlog` VALUES (812, '2022-04-04', '202.6.227.46', 'Chrome [100]', 4, '2022-04-04 11:01:59');
INSERT INTO `tb_visitorlog` VALUES (813, '2022-04-04', '40.77.139.39', ' [0]', 1, '2022-04-04 09:48:52');
INSERT INTO `tb_visitorlog` VALUES (814, '2022-04-04', '205.169.39.54', 'Chrome [76]', 1, '2022-04-04 11:30:31');
INSERT INTO `tb_visitorlog` VALUES (815, '2022-04-04', '205.169.39.52', 'Chrome [76]', 1, '2022-04-04 11:39:43');
INSERT INTO `tb_visitorlog` VALUES (816, '2022-04-05', '202.6.227.46', 'Chrome [99]', 20, '2022-04-05 17:01:33');
INSERT INTO `tb_visitorlog` VALUES (817, '2022-04-05', '34.91.59.8', 'Chrome [92]', 1, '2022-04-05 10:06:41');
INSERT INTO `tb_visitorlog` VALUES (818, '2022-04-05', '202.6.227.46', 'Chrome [100]', 2, '2022-04-05 13:19:44');
INSERT INTO `tb_visitorlog` VALUES (819, '2022-04-05', '66.249.64.152', 'Chrome [99]', 1, '2022-04-05 21:54:51');
INSERT INTO `tb_visitorlog` VALUES (820, '2022-04-06', '66.249.66.40', 'Chrome [99]', 1, '2022-04-06 06:35:27');
INSERT INTO `tb_visitorlog` VALUES (821, '2022-04-06', '36.78.141.195', 'Chrome [99]', 1, '2022-04-06 08:09:37');
INSERT INTO `tb_visitorlog` VALUES (822, '2022-04-06', '66.249.64.158', 'Chrome [99]', 5, '2022-04-06 20:34:10');
INSERT INTO `tb_visitorlog` VALUES (823, '2022-04-06', '66.249.64.128', 'Chrome [99]', 1, '2022-04-06 19:36:22');
INSERT INTO `tb_visitorlog` VALUES (824, '2022-04-06', '66.249.64.146', 'Chrome [99]', 1, '2022-04-06 19:36:33');
INSERT INTO `tb_visitorlog` VALUES (825, '2022-04-06', '180.253.165.84', 'Chrome [100]', 1, '2022-04-06 20:01:52');
INSERT INTO `tb_visitorlog` VALUES (826, '2022-04-06', '66.249.64.152', 'Chrome [99]', 1, '2022-04-06 20:11:42');
INSERT INTO `tb_visitorlog` VALUES (827, '2022-04-07', '66.249.64.152', 'Chrome [99]', 1, '2022-04-07 06:40:39');
INSERT INTO `tb_visitorlog` VALUES (828, '2022-04-07', '66.249.64.146', 'Chrome [99]', 1, '2022-04-07 07:09:10');
INSERT INTO `tb_visitorlog` VALUES (829, '2022-04-07', '202.6.227.46', 'Chrome [100]', 93, '2022-04-07 17:03:50');
INSERT INTO `tb_visitorlog` VALUES (830, '2022-04-07', '180.253.165.84', 'Chrome [100]', 20, '2022-04-07 15:32:36');
INSERT INTO `tb_visitorlog` VALUES (831, '2022-04-07', '202.6.227.46', 'Chrome [99]', 4, '2022-04-07 17:01:51');
INSERT INTO `tb_visitorlog` VALUES (832, '2022-04-07', '180.253.165.84', 'Chrome [99]', 2, '2022-04-07 13:43:42');
INSERT INTO `tb_visitorlog` VALUES (833, '2022-04-07', '180.253.160.141', 'Chrome [100]', 4, '2022-04-07 15:32:51');
INSERT INTO `tb_visitorlog` VALUES (834, '2022-04-07', '182.1.82.101', 'Chrome [99]', 3, '2022-04-07 16:35:24');
INSERT INTO `tb_visitorlog` VALUES (835, '2022-04-07', '202.6.227.46', 'Safari [604.1]', 3, '2022-04-07 17:10:57');
INSERT INTO `tb_visitorlog` VALUES (836, '2022-04-07', '118.99.76.151', 'Chrome [100]', 1, '2022-04-07 21:06:31');
INSERT INTO `tb_visitorlog` VALUES (837, '2022-04-07', '118.99.76.181', 'Chrome [99]', 1, '2022-04-07 22:05:04');
INSERT INTO `tb_visitorlog` VALUES (838, '2022-04-08', '66.249.64.56', 'Chrome [99]', 1, '2022-04-08 03:03:46');
INSERT INTO `tb_visitorlog` VALUES (839, '2022-04-08', '66.249.64.152', 'Chrome [99]', 3, '2022-04-08 20:50:03');
INSERT INTO `tb_visitorlog` VALUES (840, '2022-04-08', '180.253.165.84', 'Chrome [100]', 11, '2022-04-08 17:08:00');
INSERT INTO `tb_visitorlog` VALUES (841, '2022-04-08', '125.164.4.70', 'Chrome [100]', 1, '2022-04-08 09:13:15');
INSERT INTO `tb_visitorlog` VALUES (842, '2022-04-08', '202.6.227.46', 'Chrome [100]', 2, '2022-04-08 17:02:39');
INSERT INTO `tb_visitorlog` VALUES (843, '2022-04-08', '150.129.59.5', 'Chrome [98]', 1, '2022-04-08 17:04:08');
INSERT INTO `tb_visitorlog` VALUES (844, '2022-04-08', '110.50.81.202', 'Chrome [86]', 1, '2022-04-08 17:04:44');
INSERT INTO `tb_visitorlog` VALUES (845, '2022-04-08', '114.4.4.137', 'Chrome [73]', 1, '2022-04-08 17:04:50');
INSERT INTO `tb_visitorlog` VALUES (846, '2022-04-08', '66.96.225.95', 'Chrome [100]', 1, '2022-04-08 17:09:05');
INSERT INTO `tb_visitorlog` VALUES (847, '2022-04-08', '180.253.165.126', 'Chrome [75]', 3, '2022-04-08 19:51:38');
INSERT INTO `tb_visitorlog` VALUES (848, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:22:09');
INSERT INTO `tb_visitorlog` VALUES (849, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:22:16');
INSERT INTO `tb_visitorlog` VALUES (850, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:22:26');
INSERT INTO `tb_visitorlog` VALUES (851, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:22:30');
INSERT INTO `tb_visitorlog` VALUES (852, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:23:51');
INSERT INTO `tb_visitorlog` VALUES (853, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:24:50');
INSERT INTO `tb_visitorlog` VALUES (854, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:24:56');
INSERT INTO `tb_visitorlog` VALUES (855, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:24:59');
INSERT INTO `tb_visitorlog` VALUES (856, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:02');
INSERT INTO `tb_visitorlog` VALUES (857, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:12');
INSERT INTO `tb_visitorlog` VALUES (858, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:30');
INSERT INTO `tb_visitorlog` VALUES (859, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:32');
INSERT INTO `tb_visitorlog` VALUES (860, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:40');
INSERT INTO `tb_visitorlog` VALUES (861, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:25:43');
INSERT INTO `tb_visitorlog` VALUES (862, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:04');
INSERT INTO `tb_visitorlog` VALUES (863, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:09');
INSERT INTO `tb_visitorlog` VALUES (864, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:11');
INSERT INTO `tb_visitorlog` VALUES (865, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:20');
INSERT INTO `tb_visitorlog` VALUES (866, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:23');
INSERT INTO `tb_visitorlog` VALUES (867, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:28');
INSERT INTO `tb_visitorlog` VALUES (868, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:38');
INSERT INTO `tb_visitorlog` VALUES (869, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:40');
INSERT INTO `tb_visitorlog` VALUES (870, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:26:44');
INSERT INTO `tb_visitorlog` VALUES (871, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:27:48');
INSERT INTO `tb_visitorlog` VALUES (872, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:27:51');
INSERT INTO `tb_visitorlog` VALUES (873, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:27:56');
INSERT INTO `tb_visitorlog` VALUES (874, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:48:14');
INSERT INTO `tb_visitorlog` VALUES (875, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:48:54');
INSERT INTO `tb_visitorlog` VALUES (876, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:02');
INSERT INTO `tb_visitorlog` VALUES (877, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:08');
INSERT INTO `tb_visitorlog` VALUES (878, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:12');
INSERT INTO `tb_visitorlog` VALUES (879, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:16');
INSERT INTO `tb_visitorlog` VALUES (880, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:18');
INSERT INTO `tb_visitorlog` VALUES (881, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:25');
INSERT INTO `tb_visitorlog` VALUES (882, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:35');
INSERT INTO `tb_visitorlog` VALUES (883, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:40');
INSERT INTO `tb_visitorlog` VALUES (884, '2022-04-09', '2001:448a:1063:1f2d:', 'Chrome [100]', 1, '2022-04-09 15:49:44');
INSERT INTO `tb_visitorlog` VALUES (885, '2022-04-09', '66.249.64.128', 'Chrome [99]', 1, '2022-04-09 19:23:57');
INSERT INTO `tb_visitorlog` VALUES (886, '2022-04-10', '66.249.64.135', 'Chrome [99]', 1, '2022-04-10 05:52:44');
INSERT INTO `tb_visitorlog` VALUES (887, '2022-04-10', '205.169.39.167', 'Chrome [79]', 1, '2022-04-10 23:10:01');
INSERT INTO `tb_visitorlog` VALUES (888, '2022-04-11', '180.253.162.109', 'Chrome [100]', 3, '2022-04-11 08:46:16');
INSERT INTO `tb_visitorlog` VALUES (889, '2022-04-11', '202.6.227.46', 'Chrome [100]', 6, '2022-04-11 16:00:50');
INSERT INTO `tb_visitorlog` VALUES (890, '2022-04-11', '40.94.28.31', 'Chrome [97]', 2, '2022-04-11 11:13:15');
INSERT INTO `tb_visitorlog` VALUES (891, '2022-04-11', '40.94.28.36', 'Chrome [79]', 1, '2022-04-11 11:16:16');
INSERT INTO `tb_visitorlog` VALUES (892, '2022-04-11', '40.94.28.36', 'Chrome [79]', 1, '2022-04-11 11:16:16');
INSERT INTO `tb_visitorlog` VALUES (893, '2022-04-11', '202.6.227.46', 'Chrome [102]', 5, '2022-04-11 16:00:35');
INSERT INTO `tb_visitorlog` VALUES (894, '2022-04-12', '66.249.70.42', 'Chrome [99]', 1, '2022-04-12 00:52:52');
INSERT INTO `tb_visitorlog` VALUES (895, '2022-04-12', '202.6.227.46', 'Chrome [100]', 21, '2022-04-12 16:00:16');
INSERT INTO `tb_visitorlog` VALUES (896, '2022-04-12', '125.164.15.142', 'Chrome [100]', 5, '2022-04-12 14:07:31');
INSERT INTO `tb_visitorlog` VALUES (897, '2022-04-12', '125.164.15.142', 'Chrome [99]', 1, '2022-04-12 14:10:13');
INSERT INTO `tb_visitorlog` VALUES (898, '2022-04-12', '198.50.163.54', 'Chrome [60]', 1, '2022-04-12 17:32:32');
INSERT INTO `tb_visitorlog` VALUES (899, '2022-04-12', '65.154.226.166', 'Chrome [76]', 1, '2022-04-12 19:04:17');
INSERT INTO `tb_visitorlog` VALUES (900, '2022-04-12', '65.154.226.169', 'Chrome [76]', 1, '2022-04-12 19:08:49');
INSERT INTO `tb_visitorlog` VALUES (901, '2022-04-12', '112.215.241.92', 'Chrome [100]', 3, '2022-04-12 19:38:17');
INSERT INTO `tb_visitorlog` VALUES (902, '2022-04-12', '66.249.64.135', 'Chrome [99]', 1, '2022-04-12 21:19:29');
INSERT INTO `tb_visitorlog` VALUES (903, '2022-04-12', '66.249.64.132', 'Chrome [99]', 1, '2022-04-12 21:29:45');
INSERT INTO `tb_visitorlog` VALUES (904, '2022-04-13', '66.249.64.135', 'Chrome [99]', 1, '2022-04-13 03:43:20');
INSERT INTO `tb_visitorlog` VALUES (905, '2022-04-13', '66.249.64.132', 'Chrome [99]', 1, '2022-04-13 04:15:54');
INSERT INTO `tb_visitorlog` VALUES (906, '2022-04-13', '66.249.64.135', 'Chrome [100]', 1, '2022-04-13 04:16:39');
INSERT INTO `tb_visitorlog` VALUES (907, '2022-04-13', '202.6.227.46', 'Chrome [100]', 8, '2022-04-13 14:07:36');
INSERT INTO `tb_visitorlog` VALUES (908, '2022-04-13', '66.249.64.158', 'Chrome [99]', 1, '2022-04-13 08:43:10');
INSERT INTO `tb_visitorlog` VALUES (909, '2022-04-13', '66.249.64.56', 'Chrome [99]', 1, '2022-04-13 08:44:46');
INSERT INTO `tb_visitorlog` VALUES (910, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 14:25:44');
INSERT INTO `tb_visitorlog` VALUES (911, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 14:25:46');
INSERT INTO `tb_visitorlog` VALUES (912, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:44:05');
INSERT INTO `tb_visitorlog` VALUES (913, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:44:24');
INSERT INTO `tb_visitorlog` VALUES (914, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:44:37');
INSERT INTO `tb_visitorlog` VALUES (915, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:44:40');
INSERT INTO `tb_visitorlog` VALUES (916, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:44:54');
INSERT INTO `tb_visitorlog` VALUES (917, '2022-04-13', '2001:448a:5020:a5cf:', 'Chrome [100]', 1, '2022-04-13 15:45:04');
INSERT INTO `tb_visitorlog` VALUES (918, '2022-04-14', '66.249.64.132', 'Chrome [99]', 1, '2022-04-14 06:40:50');
INSERT INTO `tb_visitorlog` VALUES (919, '2022-04-14', '180.253.166.83', 'Chrome [100]', 1, '2022-04-14 08:22:47');
INSERT INTO `tb_visitorlog` VALUES (920, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 08:41:07');
INSERT INTO `tb_visitorlog` VALUES (921, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 08:41:09');
INSERT INTO `tb_visitorlog` VALUES (922, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 08:41:24');
INSERT INTO `tb_visitorlog` VALUES (923, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 08:41:28');
INSERT INTO `tb_visitorlog` VALUES (924, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 08:57:01');
INSERT INTO `tb_visitorlog` VALUES (925, '2022-04-14', '149.113.17.46', 'Chrome [100]', 9, '2022-04-14 13:43:11');
INSERT INTO `tb_visitorlog` VALUES (926, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 10:57:08');
INSERT INTO `tb_visitorlog` VALUES (927, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [102]', 1, '2022-04-14 10:57:10');
INSERT INTO `tb_visitorlog` VALUES (928, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-14 12:33:55');
INSERT INTO `tb_visitorlog` VALUES (929, '2022-04-14', '202.6.227.46', 'Chrome [100]', 9, '2022-04-14 16:37:49');
INSERT INTO `tb_visitorlog` VALUES (930, '2022-04-14', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-14 14:25:00');
INSERT INTO `tb_visitorlog` VALUES (931, '2022-04-15', '36.68.221.129', 'Chrome [100]', 7, '2022-04-15 04:54:37');
INSERT INTO `tb_visitorlog` VALUES (932, '2022-04-15', '149.113.17.46', 'Chrome [100]', 3, '2022-04-15 10:57:13');
INSERT INTO `tb_visitorlog` VALUES (933, '2022-04-15', '2605:6400:20:2454:7b', 'Chrome [87]', 1, '2022-04-15 13:30:50');
INSERT INTO `tb_visitorlog` VALUES (934, '2022-04-15', '202.67.40.209', 'Chrome [78]', 1, '2022-04-15 16:52:55');
INSERT INTO `tb_visitorlog` VALUES (935, '2022-04-15', '118.98.26.6', 'Chrome [99]', 1, '2022-04-15 17:03:49');
INSERT INTO `tb_visitorlog` VALUES (936, '2022-04-15', '114.4.4.134', 'Chrome [99]', 1, '2022-04-15 17:19:15');
INSERT INTO `tb_visitorlog` VALUES (937, '2022-04-15', '114.10.27.95', 'Chrome [91]', 10, '2022-04-15 19:45:06');
INSERT INTO `tb_visitorlog` VALUES (938, '2022-04-16', '17.121.115.143', 'Safari [13.1]', 1, '2022-04-16 03:59:59');
INSERT INTO `tb_visitorlog` VALUES (939, '2022-04-16', '17.121.114.224', 'Safari [13.1]', 1, '2022-04-16 04:37:07');
INSERT INTO `tb_visitorlog` VALUES (940, '2022-04-16', '66.249.64.152', 'Chrome [100]', 1, '2022-04-16 06:09:02');
INSERT INTO `tb_visitorlog` VALUES (941, '2022-04-16', '89.3.188.163', 'Chrome [100]', 1, '2022-04-16 10:48:06');
INSERT INTO `tb_visitorlog` VALUES (942, '2022-04-16', '144.217.135.136', ' [0]', 1, '2022-04-16 22:43:39');
INSERT INTO `tb_visitorlog` VALUES (943, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 08:19:01');
INSERT INTO `tb_visitorlog` VALUES (944, '2022-04-18', '180.253.166.83', 'Chrome [100]', 3, '2022-04-18 12:12:55');
INSERT INTO `tb_visitorlog` VALUES (945, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 08:28:04');
INSERT INTO `tb_visitorlog` VALUES (946, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 08:37:23');
INSERT INTO `tb_visitorlog` VALUES (947, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 09:02:03');
INSERT INTO `tb_visitorlog` VALUES (948, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 09:02:18');
INSERT INTO `tb_visitorlog` VALUES (949, '2022-04-18', '202.6.227.46', 'Chrome [91]', 1, '2022-04-18 10:11:46');
INSERT INTO `tb_visitorlog` VALUES (950, '2022-04-18', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-18 10:48:36');
INSERT INTO `tb_visitorlog` VALUES (951, '2022-04-18', '44.226.198.94', 'Chrome [87]', 1, '2022-04-18 11:14:04');
INSERT INTO `tb_visitorlog` VALUES (952, '2022-04-18', '36.81.213.194', 'Chrome [100]', 3, '2022-04-18 21:38:01');
INSERT INTO `tb_visitorlog` VALUES (953, '2022-04-19', '202.6.227.46', 'Chrome [100]', 3, '2022-04-19 08:29:03');
INSERT INTO `tb_visitorlog` VALUES (954, '2022-04-19', '66.249.64.146', 'Chrome [100]', 3, '2022-04-19 19:54:22');
INSERT INTO `tb_visitorlog` VALUES (955, '2022-04-19', '66.249.64.139', 'Chrome [100]', 1, '2022-04-19 19:32:40');
INSERT INTO `tb_visitorlog` VALUES (956, '2022-04-19', '66.249.64.42', 'Chrome [100]', 1, '2022-04-19 20:12:57');
INSERT INTO `tb_visitorlog` VALUES (957, '2022-04-20', '202.6.227.46', 'Chrome [100]', 4, '2022-04-20 10:26:52');
INSERT INTO `tb_visitorlog` VALUES (958, '2022-04-20', '180.253.166.83', 'Chrome [100]', 1, '2022-04-20 09:37:41');
INSERT INTO `tb_visitorlog` VALUES (959, '2022-04-20', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-20 11:37:04');
INSERT INTO `tb_visitorlog` VALUES (960, '2022-04-20', '2001:448a:5020:6d39:', 'Chrome [100]', 1, '2022-04-20 11:37:06');
INSERT INTO `tb_visitorlog` VALUES (961, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:01:01');
INSERT INTO `tb_visitorlog` VALUES (962, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:34:33');
INSERT INTO `tb_visitorlog` VALUES (963, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:36:16');
INSERT INTO `tb_visitorlog` VALUES (964, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:36:22');
INSERT INTO `tb_visitorlog` VALUES (965, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:36:56');
INSERT INTO `tb_visitorlog` VALUES (966, '2022-04-21', '202.6.227.46', 'Chrome [100]', 4, '2022-04-21 16:20:38');
INSERT INTO `tb_visitorlog` VALUES (967, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:37:27');
INSERT INTO `tb_visitorlog` VALUES (968, '2022-04-21', '121.7.70.28', 'Chrome [92]', 1, '2022-04-21 08:37:41');
INSERT INTO `tb_visitorlog` VALUES (969, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:37:43');
INSERT INTO `tb_visitorlog` VALUES (970, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:42:57');
INSERT INTO `tb_visitorlog` VALUES (971, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:43:01');
INSERT INTO `tb_visitorlog` VALUES (972, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:43:45');
INSERT INTO `tb_visitorlog` VALUES (973, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:44:22');
INSERT INTO `tb_visitorlog` VALUES (974, '2022-04-21', '2001:448a:5020:9b8c:', 'Safari [604.1]', 1, '2022-04-21 08:48:31');
INSERT INTO `tb_visitorlog` VALUES (975, '2022-04-21', '2001:448a:5020:9b8c:', 'Safari [604.1]', 1, '2022-04-21 08:52:06');
INSERT INTO `tb_visitorlog` VALUES (976, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:52:38');
INSERT INTO `tb_visitorlog` VALUES (977, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 08:54:48');
INSERT INTO `tb_visitorlog` VALUES (978, '2022-04-21', '2001:448a:5020:9b8c:', 'Safari [604.1]', 1, '2022-04-21 09:04:40');
INSERT INTO `tb_visitorlog` VALUES (979, '2022-04-21', '2001:448a:5020:9b8c:', 'Safari [604.1]', 1, '2022-04-21 09:05:59');
INSERT INTO `tb_visitorlog` VALUES (980, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:13:26');
INSERT INTO `tb_visitorlog` VALUES (981, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:14:13');
INSERT INTO `tb_visitorlog` VALUES (982, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:14:43');
INSERT INTO `tb_visitorlog` VALUES (983, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:15:06');
INSERT INTO `tb_visitorlog` VALUES (984, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:15:16');
INSERT INTO `tb_visitorlog` VALUES (985, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:15:21');
INSERT INTO `tb_visitorlog` VALUES (986, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:16:36');
INSERT INTO `tb_visitorlog` VALUES (987, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:17:39');
INSERT INTO `tb_visitorlog` VALUES (988, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:17:44');
INSERT INTO `tb_visitorlog` VALUES (989, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:17:45');
INSERT INTO `tb_visitorlog` VALUES (990, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:19:02');
INSERT INTO `tb_visitorlog` VALUES (991, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:26:40');
INSERT INTO `tb_visitorlog` VALUES (992, '2022-04-21', '182.1.92.32', 'Chrome [100]', 1, '2022-04-21 09:45:23');
INSERT INTO `tb_visitorlog` VALUES (993, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:47:14');
INSERT INTO `tb_visitorlog` VALUES (994, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:47:16');
INSERT INTO `tb_visitorlog` VALUES (995, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:52:22');
INSERT INTO `tb_visitorlog` VALUES (996, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:52:23');
INSERT INTO `tb_visitorlog` VALUES (997, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 09:52:26');
INSERT INTO `tb_visitorlog` VALUES (998, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 16:13:02');
INSERT INTO `tb_visitorlog` VALUES (999, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 16:13:17');
INSERT INTO `tb_visitorlog` VALUES (1000, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 16:14:42');
INSERT INTO `tb_visitorlog` VALUES (1001, '2022-04-21', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-21 16:14:43');
INSERT INTO `tb_visitorlog` VALUES (1002, '2022-04-22', '125.164.10.51', 'Chrome [100]', 4, '2022-04-22 10:55:38');
INSERT INTO `tb_visitorlog` VALUES (1003, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 08:08:14');
INSERT INTO `tb_visitorlog` VALUES (1004, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 08:29:06');
INSERT INTO `tb_visitorlog` VALUES (1005, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 08:29:13');
INSERT INTO `tb_visitorlog` VALUES (1006, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 08:29:15');
INSERT INTO `tb_visitorlog` VALUES (1007, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 08:29:16');
INSERT INTO `tb_visitorlog` VALUES (1008, '2022-04-22', '66.249.64.146', 'Chrome [100]', 1, '2022-04-22 10:57:26');
INSERT INTO `tb_visitorlog` VALUES (1009, '2022-04-22', '202.6.227.46', 'Chrome [100]', 15, '2022-04-22 15:29:41');
INSERT INTO `tb_visitorlog` VALUES (1010, '2022-04-22', '182.1.82.145', 'Chrome [91]', 3, '2022-04-22 15:30:13');
INSERT INTO `tb_visitorlog` VALUES (1011, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 16:11:44');
INSERT INTO `tb_visitorlog` VALUES (1012, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 16:11:46');
INSERT INTO `tb_visitorlog` VALUES (1013, '2022-04-22', '2001:448a:5020:9b8c:', 'Chrome [100]', 1, '2022-04-22 16:11:48');
INSERT INTO `tb_visitorlog` VALUES (1014, '2022-04-22', '114.4.4.135', 'Chrome [98]', 1, '2022-04-22 16:46:06');
INSERT INTO `tb_visitorlog` VALUES (1015, '2022-04-22', '112.215.240.108', 'Chrome [100]', 1, '2022-04-22 20:18:01');
INSERT INTO `tb_visitorlog` VALUES (1016, '2022-04-23', '66.249.74.24', 'Chrome [100]', 1, '2022-04-23 00:15:17');
INSERT INTO `tb_visitorlog` VALUES (1017, '2022-04-23', '114.125.86.43', 'Chrome [94]', 1, '2022-04-23 08:56:10');
INSERT INTO `tb_visitorlog` VALUES (1018, '2022-04-23', '17.121.114.160', 'Safari [13.1]', 1, '2022-04-23 08:58:08');
INSERT INTO `tb_visitorlog` VALUES (1019, '2022-04-23', '17.121.114.134', 'Safari [13.1]', 1, '2022-04-23 09:40:15');
INSERT INTO `tb_visitorlog` VALUES (1020, '2022-04-23', '17.121.114.67', 'Safari [13.1]', 1, '2022-04-23 09:52:45');
INSERT INTO `tb_visitorlog` VALUES (1021, '2022-04-23', '66.249.64.152', 'Chrome [100]', 1, '2022-04-23 12:45:56');
INSERT INTO `tb_visitorlog` VALUES (1022, '2022-04-23', '66.249.74.10', 'Chrome [100]', 1, '2022-04-23 20:52:17');
INSERT INTO `tb_visitorlog` VALUES (1023, '2022-04-24', '66.249.64.128', 'Chrome [100]', 1, '2022-04-24 02:58:33');
INSERT INTO `tb_visitorlog` VALUES (1024, '2022-04-24', '180.253.164.142', 'Chrome [100]', 3, '2022-04-24 20:05:29');
INSERT INTO `tb_visitorlog` VALUES (1025, '2022-04-25', '202.6.227.46', 'Chrome [100]', 22, '2022-04-25 11:19:28');
INSERT INTO `tb_visitorlog` VALUES (1026, '2022-04-25', '125.164.0.115', 'Chrome [100]', 3, '2022-04-25 09:36:29');
INSERT INTO `tb_visitorlog` VALUES (1027, '2022-04-25', '66.249.64.158', 'Chrome [100]', 3, '2022-04-25 17:15:10');
INSERT INTO `tb_visitorlog` VALUES (1028, '2022-04-25', '66.249.64.128', 'Chrome [100]', 1, '2022-04-25 14:02:39');
INSERT INTO `tb_visitorlog` VALUES (1029, '2022-04-26', '2001:448a:5020:b025:', 'Chrome [100]', 1, '2022-04-26 09:16:35');
INSERT INTO `tb_visitorlog` VALUES (1030, '2022-04-26', '2001:448a:5020:b025:', 'Chrome [100]', 1, '2022-04-26 09:16:38');
INSERT INTO `tb_visitorlog` VALUES (1031, '2022-04-26', '2001:448a:5020:b025:', 'Chrome [100]', 1, '2022-04-26 09:51:13');
INSERT INTO `tb_visitorlog` VALUES (1032, '2022-04-26', '2001:448a:5020:b025:', 'Chrome [100]', 1, '2022-04-26 10:16:52');
INSERT INTO `tb_visitorlog` VALUES (1033, '2022-04-27', '202.6.227.46', 'Chrome [100]', 9, '2022-04-27 14:56:19');
INSERT INTO `tb_visitorlog` VALUES (1034, '2022-04-27', '202.6.227.46', 'Safari [604.1]', 8, '2022-04-27 17:14:20');
INSERT INTO `tb_visitorlog` VALUES (1035, '2022-04-27', '125.164.50.131', 'Chrome [100]', 1, '2022-04-27 17:12:40');
INSERT INTO `tb_visitorlog` VALUES (1036, '2022-04-28', '66.249.66.58', 'Chrome [100]', 1, '2022-04-28 08:38:02');
INSERT INTO `tb_visitorlog` VALUES (1037, '2022-04-28', '116.206.40.75', 'Chrome [100]', 1, '2022-04-28 14:13:41');
INSERT INTO `tb_visitorlog` VALUES (1038, '2022-04-28', '202.6.227.46', 'Chrome [100]', 24, '2022-04-28 16:45:48');
INSERT INTO `tb_visitorlog` VALUES (1039, '2022-04-29', '66.249.64.146', 'Chrome [100]', 1, '2022-04-29 06:28:39');
INSERT INTO `tb_visitorlog` VALUES (1040, '2022-04-29', '66.249.64.135', 'Chrome [100]', 1, '2022-04-29 08:15:06');
INSERT INTO `tb_visitorlog` VALUES (1041, '2022-04-29', '66.249.64.158', 'Chrome [100]', 1, '2022-04-29 08:39:07');
INSERT INTO `tb_visitorlog` VALUES (1042, '2022-04-29', '66.249.66.58', 'Chrome [100]', 1, '2022-04-29 09:06:28');
INSERT INTO `tb_visitorlog` VALUES (1043, '2022-04-29', '114.4.4.197', 'Chrome [98]', 1, '2022-04-29 16:54:01');
INSERT INTO `tb_visitorlog` VALUES (1044, '2022-04-29', '114.4.4.139', 'Chrome [99]', 1, '2022-04-29 16:54:01');
INSERT INTO `tb_visitorlog` VALUES (1045, '2022-04-29', '114.4.4.197', 'Chrome [100]', 1, '2022-04-29 16:55:52');
INSERT INTO `tb_visitorlog` VALUES (1046, '2022-04-29', '36.68.218.227', 'Chrome [101]', 7, '2022-04-29 23:21:03');
INSERT INTO `tb_visitorlog` VALUES (1047, '2022-04-29', '114.125.87.63', 'Chrome [101]', 1, '2022-04-29 21:18:10');
INSERT INTO `tb_visitorlog` VALUES (1048, '2022-04-30', '66.249.64.146', 'Chrome [100]', 2, '2022-04-30 14:48:01');
INSERT INTO `tb_visitorlog` VALUES (1049, '2022-04-30', '66.249.66.58', 'Chrome [100]', 2, '2022-04-30 14:22:15');
INSERT INTO `tb_visitorlog` VALUES (1050, '2022-04-30', '66.249.64.158', 'Chrome [100]', 2, '2022-04-30 14:40:19');
INSERT INTO `tb_visitorlog` VALUES (1051, '2022-04-30', '66.249.74.6', 'Chrome [100]', 1, '2022-04-30 14:29:54');
INSERT INTO `tb_visitorlog` VALUES (1052, '2022-04-30', '66.249.64.135', 'Chrome [100]', 1, '2022-04-30 14:38:16');
INSERT INTO `tb_visitorlog` VALUES (1053, '2022-04-30', '66.249.64.128', 'Chrome [100]', 1, '2022-04-30 19:20:51');
INSERT INTO `tb_visitorlog` VALUES (1054, '2022-04-30', '66.249.74.20', 'Chrome [100]', 1, '2022-04-30 20:02:49');
INSERT INTO `tb_visitorlog` VALUES (1055, '2022-05-01', '66.249.64.146', 'Chrome [100]', 2, '2022-05-01 03:43:40');
INSERT INTO `tb_visitorlog` VALUES (1056, '2022-05-01', '17.121.115.175', 'Safari [13.1]', 1, '2022-05-01 05:37:39');
INSERT INTO `tb_visitorlog` VALUES (1057, '2022-05-01', '17.121.112.136', 'Safari [13.1]', 1, '2022-05-01 06:42:35');
INSERT INTO `tb_visitorlog` VALUES (1058, '2022-05-01', '66.249.74.18', 'Chrome [100]', 2, '2022-05-01 16:03:24');
INSERT INTO `tb_visitorlog` VALUES (1059, '2022-05-01', '66.249.64.158', 'Chrome [100]', 1, '2022-05-01 17:00:54');
INSERT INTO `tb_visitorlog` VALUES (1060, '2022-05-01', '66.249.64.135', 'Chrome [100]', 1, '2022-05-01 17:46:21');
INSERT INTO `tb_visitorlog` VALUES (1061, '2022-05-01', '207.46.13.5', ' [0]', 1, '2022-05-01 21:01:55');
INSERT INTO `tb_visitorlog` VALUES (1062, '2022-05-02', '36.81.126.206', 'Chrome [101]', 2, '2022-05-02 08:16:12');
INSERT INTO `tb_visitorlog` VALUES (1063, '2022-05-03', '35.87.44.242', 'Chrome [74]', 1, '2022-05-03 12:44:13');
INSERT INTO `tb_visitorlog` VALUES (1064, '2022-05-04', '66.249.64.158', 'Chrome [100]', 1, '2022-05-04 13:07:30');
INSERT INTO `tb_visitorlog` VALUES (1065, '2022-05-04', '66.249.64.135', 'Chrome [100]', 1, '2022-05-04 13:30:02');
INSERT INTO `tb_visitorlog` VALUES (1066, '2022-05-05', '36.90.179.244', 'Chrome [101]', 3, '2022-05-05 08:10:11');
INSERT INTO `tb_visitorlog` VALUES (1067, '2022-05-05', '36.81.108.35', 'Chrome [101]', 1, '2022-05-05 08:10:51');
INSERT INTO `tb_visitorlog` VALUES (1068, '2022-05-06', '202.67.46.5', 'Chrome [78]', 2, '2022-05-06 16:21:52');
INSERT INTO `tb_visitorlog` VALUES (1069, '2022-05-06', '45.121.219.5', 'Chrome [100]', 1, '2022-05-06 17:23:48');
INSERT INTO `tb_visitorlog` VALUES (1070, '2022-05-06', '114.4.4.134', 'Chrome [101]', 1, '2022-05-06 17:26:50');
INSERT INTO `tb_visitorlog` VALUES (1071, '2022-05-06', '2605:6400:20:248f:2e', 'Chrome [87]', 1, '2022-05-06 22:11:54');
INSERT INTO `tb_visitorlog` VALUES (1072, '2022-05-08', '66.249.66.46', 'Chrome [100]', 2, '2022-05-08 07:09:21');
INSERT INTO `tb_visitorlog` VALUES (1073, '2022-05-08', '205.169.39.41', 'Chrome [76]', 1, '2022-05-08 07:35:04');
INSERT INTO `tb_visitorlog` VALUES (1074, '2022-05-08', '2a03:2880:ff:18::fac', 'Firefox [56]', 1, '2022-05-08 11:44:37');
INSERT INTO `tb_visitorlog` VALUES (1075, '2022-05-08', '2a03:2880:21ff:2::fa', 'Chrome [80]', 1, '2022-05-08 11:44:37');
INSERT INTO `tb_visitorlog` VALUES (1076, '2022-05-08', '139.0.161.90', 'Chrome [101]', 3, '2022-05-08 14:02:25');
INSERT INTO `tb_visitorlog` VALUES (1077, '2022-05-08', '118.99.76.173', ' [NaN]', 1, '2022-05-08 22:43:50');
INSERT INTO `tb_visitorlog` VALUES (1078, '2022-05-09', '66.249.64.152', 'Chrome [100]', 3, '2022-05-09 20:01:33');
INSERT INTO `tb_visitorlog` VALUES (1079, '2022-05-09', '66.249.64.139', 'Chrome [100]', 2, '2022-05-09 04:29:43');
INSERT INTO `tb_visitorlog` VALUES (1080, '2022-05-09', '125.164.13.97', 'Chrome [101]', 1, '2022-05-09 08:19:01');
INSERT INTO `tb_visitorlog` VALUES (1081, '2022-05-09', '202.6.227.46', 'Chrome [101]', 4, '2022-05-09 08:56:27');
INSERT INTO `tb_visitorlog` VALUES (1082, '2022-05-09', '202.6.227.46', 'Chrome [100]', 3, '2022-05-09 11:27:26');
INSERT INTO `tb_visitorlog` VALUES (1083, '2022-05-09', '40.77.202.9', ' [0]', 1, '2022-05-09 10:38:03');
INSERT INTO `tb_visitorlog` VALUES (1084, '2022-05-09', '139.0.161.90', 'Chrome [101]', 1, '2022-05-09 10:52:05');
INSERT INTO `tb_visitorlog` VALUES (1085, '2022-05-09', '2a02:26f7:dfcd:4000:', 'Safari [15.4]', 1, '2022-05-09 12:15:58');
INSERT INTO `tb_visitorlog` VALUES (1086, '2022-05-09', '2a02:26f7:dfcd:4000:', 'Safari [15.4]', 1, '2022-05-09 12:16:01');
INSERT INTO `tb_visitorlog` VALUES (1087, '2022-05-09', '2a02:26f7:dfcd:4000:', 'Safari [15.4]', 1, '2022-05-09 12:16:10');
INSERT INTO `tb_visitorlog` VALUES (1088, '2022-05-09', '2a02:26f7:dfc8:4000:', 'Safari [15.4]', 1, '2022-05-09 12:16:34');
INSERT INTO `tb_visitorlog` VALUES (1089, '2022-05-09', '66.249.64.128', 'Chrome [100]', 1, '2022-05-09 15:37:23');
INSERT INTO `tb_visitorlog` VALUES (1090, '2022-05-09', '207.46.13.5', ' [NaN]', 1, '2022-05-09 23:17:02');
INSERT INTO `tb_visitorlog` VALUES (1091, '2022-05-09', '140.0.163.76', 'Chrome [101]', 2, '2022-05-09 23:47:26');
INSERT INTO `tb_visitorlog` VALUES (1092, '2022-05-10', '66.249.66.46', 'Chrome [100]', 2, '2022-05-10 06:14:10');
INSERT INTO `tb_visitorlog` VALUES (1093, '2022-05-10', '66.249.74.18', 'Chrome [100]', 1, '2022-05-10 06:24:07');
INSERT INTO `tb_visitorlog` VALUES (1094, '2022-05-10', '66.249.74.6', 'Chrome [100]', 1, '2022-05-10 06:33:18');
INSERT INTO `tb_visitorlog` VALUES (1095, '2022-05-10', '2001:448a:5020:634a:', 'Chrome [101]', 1, '2022-05-10 14:02:02');
INSERT INTO `tb_visitorlog` VALUES (1096, '2022-05-10', '2001:448a:5020:634a:', 'Chrome [101]', 1, '2022-05-10 14:02:48');
INSERT INTO `tb_visitorlog` VALUES (1097, '2022-05-10', '2001:448a:5020:634a:', 'Chrome [101]', 1, '2022-05-10 14:02:56');
INSERT INTO `tb_visitorlog` VALUES (1098, '2022-05-10', '2001:448a:5020:634a:', 'Chrome [101]', 1, '2022-05-10 14:03:18');
INSERT INTO `tb_visitorlog` VALUES (1099, '2022-05-10', '2001:448a:5020:634a:', 'Chrome [101]', 1, '2022-05-10 14:22:37');
INSERT INTO `tb_visitorlog` VALUES (1100, '2022-05-10', '66.249.73.116', 'Chrome [100]', 1, '2022-05-10 15:28:03');
INSERT INTO `tb_visitorlog` VALUES (1101, '2022-05-10', '182.1.108.33', ' [0]', 1, '2022-05-10 21:40:28');
INSERT INTO `tb_visitorlog` VALUES (1102, '2022-05-10', '182.1.108.33', ' [NaN]', 1, '2022-05-10 21:40:49');
INSERT INTO `tb_visitorlog` VALUES (1103, '2022-05-10', '40.77.139.91', ' [0]', 1, '2022-05-10 22:19:53');
INSERT INTO `tb_visitorlog` VALUES (1104, '2022-05-11', '66.249.64.152', 'Chrome [100]', 1, '2022-05-11 00:35:58');
INSERT INTO `tb_visitorlog` VALUES (1105, '2022-05-11', '66.249.66.50', 'Chrome [100]', 1, '2022-05-11 04:26:13');
INSERT INTO `tb_visitorlog` VALUES (1106, '2022-05-11', '66.249.66.56', 'Chrome [100]', 1, '2022-05-11 04:28:18');
INSERT INTO `tb_visitorlog` VALUES (1107, '2022-05-11', '125.164.6.168', 'Chrome [101]', 9, '2022-05-11 17:06:27');
INSERT INTO `tb_visitorlog` VALUES (1108, '2022-05-11', '125.164.1.82', 'Chrome [101]', 8, '2022-05-11 14:09:35');
INSERT INTO `tb_visitorlog` VALUES (1109, '2022-05-11', '5.228.154.164', 'Chrome [99]', 1, '2022-05-11 17:58:25');
INSERT INTO `tb_visitorlog` VALUES (1110, '2022-05-12', '180.247.131.168', 'Chrome [101]', 3, '2022-05-12 14:24:03');
INSERT INTO `tb_visitorlog` VALUES (1111, '2022-05-12', '125.164.10.123', 'Chrome [101]', 7, '2022-05-12 10:44:08');
INSERT INTO `tb_visitorlog` VALUES (1112, '2022-05-12', '202.6.227.46', 'Chrome [101]', 8, '2022-05-12 17:16:46');
INSERT INTO `tb_visitorlog` VALUES (1113, '2022-05-12', '66.249.66.56', 'Chrome [100]', 1, '2022-05-12 21:56:30');
INSERT INTO `tb_visitorlog` VALUES (1114, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 08:44:11');
INSERT INTO `tb_visitorlog` VALUES (1115, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 08:44:13');
INSERT INTO `tb_visitorlog` VALUES (1116, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 08:48:55');
INSERT INTO `tb_visitorlog` VALUES (1117, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 08:48:56');
INSERT INTO `tb_visitorlog` VALUES (1118, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:07:39');
INSERT INTO `tb_visitorlog` VALUES (1119, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:07:43');
INSERT INTO `tb_visitorlog` VALUES (1120, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:08:06');
INSERT INTO `tb_visitorlog` VALUES (1121, '2022-05-13', '202.6.227.46', 'Chrome [101]', 4, '2022-05-13 16:59:58');
INSERT INTO `tb_visitorlog` VALUES (1122, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:17:27');
INSERT INTO `tb_visitorlog` VALUES (1123, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:17:29');
INSERT INTO `tb_visitorlog` VALUES (1124, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:09');
INSERT INTO `tb_visitorlog` VALUES (1125, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:09');
INSERT INTO `tb_visitorlog` VALUES (1126, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:12');
INSERT INTO `tb_visitorlog` VALUES (1127, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:15');
INSERT INTO `tb_visitorlog` VALUES (1128, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:17');
INSERT INTO `tb_visitorlog` VALUES (1129, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:28:35');
INSERT INTO `tb_visitorlog` VALUES (1130, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:34:49');
INSERT INTO `tb_visitorlog` VALUES (1131, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:34:53');
INSERT INTO `tb_visitorlog` VALUES (1132, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:40:30');
INSERT INTO `tb_visitorlog` VALUES (1133, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:42:02');
INSERT INTO `tb_visitorlog` VALUES (1134, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 09:42:28');
INSERT INTO `tb_visitorlog` VALUES (1135, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 10:08:07');
INSERT INTO `tb_visitorlog` VALUES (1136, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 10:08:30');
INSERT INTO `tb_visitorlog` VALUES (1137, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 10:11:05');
INSERT INTO `tb_visitorlog` VALUES (1138, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 10:11:06');
INSERT INTO `tb_visitorlog` VALUES (1139, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 10:13:18');
INSERT INTO `tb_visitorlog` VALUES (1140, '2022-05-13', '66.249.66.48', 'Chrome [101]', 1, '2022-05-13 11:00:12');
INSERT INTO `tb_visitorlog` VALUES (1141, '2022-05-13', '66.249.66.52', 'Chrome [101]', 1, '2022-05-13 11:23:49');
INSERT INTO `tb_visitorlog` VALUES (1142, '2022-05-13', '66.249.66.60', 'Chrome [101]', 2, '2022-05-13 14:40:05');
INSERT INTO `tb_visitorlog` VALUES (1143, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 16:58:10');
INSERT INTO `tb_visitorlog` VALUES (1144, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 16:58:25');
INSERT INTO `tb_visitorlog` VALUES (1145, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 16:58:32');
INSERT INTO `tb_visitorlog` VALUES (1146, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 16:58:34');
INSERT INTO `tb_visitorlog` VALUES (1147, '2022-05-13', '208.84.221.164', 'Chrome [101]', 1, '2022-05-13 17:09:02');
INSERT INTO `tb_visitorlog` VALUES (1148, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 17:17:51');
INSERT INTO `tb_visitorlog` VALUES (1149, '2022-05-13', '114.4.4.199', 'Chrome [100]', 1, '2022-05-13 17:17:55');
INSERT INTO `tb_visitorlog` VALUES (1150, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 18:11:41');
INSERT INTO `tb_visitorlog` VALUES (1151, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 18:11:43');
INSERT INTO `tb_visitorlog` VALUES (1152, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 18:11:45');
INSERT INTO `tb_visitorlog` VALUES (1153, '2022-05-13', '2001:448a:5020:4b61:', 'Chrome [101]', 1, '2022-05-13 18:11:47');
INSERT INTO `tb_visitorlog` VALUES (1154, '2022-05-15', '65.154.226.171', 'Chrome [76]', 1, '2022-05-15 07:17:41');
INSERT INTO `tb_visitorlog` VALUES (1155, '2022-05-15', '17.121.113.52', 'Safari [13.1]', 1, '2022-05-15 14:44:04');
INSERT INTO `tb_visitorlog` VALUES (1156, '2022-05-15', '66.249.74.18', 'Chrome [101]', 1, '2022-05-15 18:59:57');
INSERT INTO `tb_visitorlog` VALUES (1157, '2022-05-16', '66.249.64.128', 'Chrome [101]', 1, '2022-05-16 09:57:09');
INSERT INTO `tb_visitorlog` VALUES (1158, '2022-05-16', '118.99.76.176', 'Safari [604.1]', 1, '2022-05-16 10:06:30');
INSERT INTO `tb_visitorlog` VALUES (1159, '2022-05-16', '114.4.4.201', 'Chrome [100]', 1, '2022-05-16 11:04:53');
INSERT INTO `tb_visitorlog` VALUES (1160, '2022-05-16', '182.1.123.176', 'Chrome [101]', 2, '2022-05-16 12:08:12');
INSERT INTO `tb_visitorlog` VALUES (1161, '2022-05-16', '182.1.83.124', 'Chrome [85]', 4, '2022-05-16 14:25:45');
INSERT INTO `tb_visitorlog` VALUES (1162, '2022-05-16', '180.254.45.43', 'Chrome [101]', 1, '2022-05-16 23:14:47');
INSERT INTO `tb_visitorlog` VALUES (1163, '2022-05-17', '66.249.66.58', 'Chrome [101]', 1, '2022-05-17 00:07:36');
INSERT INTO `tb_visitorlog` VALUES (1164, '2022-05-17', '149.56.150.185', ' [NaN]', 1, '2022-05-17 02:28:00');
INSERT INTO `tb_visitorlog` VALUES (1165, '2022-05-17', '125.164.8.97', 'Chrome [101]', 4, '2022-05-17 12:10:01');
INSERT INTO `tb_visitorlog` VALUES (1166, '2022-05-17', '202.6.227.46', 'Chrome [101]', 10, '2022-05-17 12:11:59');
INSERT INTO `tb_visitorlog` VALUES (1167, '2022-05-17', '66.249.66.33', 'Chrome [101]', 1, '2022-05-17 10:35:42');
INSERT INTO `tb_visitorlog` VALUES (1168, '2022-05-17', '66.249.66.46', 'Chrome [101]', 1, '2022-05-17 10:35:42');
INSERT INTO `tb_visitorlog` VALUES (1169, '2022-05-17', '66.249.66.48', 'Chrome [101]', 1, '2022-05-17 10:37:26');
INSERT INTO `tb_visitorlog` VALUES (1170, '2022-05-17', '180.253.160.254', 'Chrome [101]', 1, '2022-05-17 14:34:17');
INSERT INTO `tb_visitorlog` VALUES (1171, '2022-05-18', '125.164.0.137', 'Chrome [101]', 2, '2022-05-18 16:39:07');
INSERT INTO `tb_visitorlog` VALUES (1172, '2022-05-18', '125.164.6.111', 'Chrome [101]', 1, '2022-05-18 16:43:58');
INSERT INTO `tb_visitorlog` VALUES (1173, '2022-05-19', '207.46.13.187', ' [0]', 1, '2022-05-19 10:30:02');
INSERT INTO `tb_visitorlog` VALUES (1174, '2022-05-19', '125.164.52.197', 'Chrome [101]', 22, '2022-05-19 16:31:46');
INSERT INTO `tb_visitorlog` VALUES (1175, '2022-05-19', '36.84.43.215', 'Chrome [101]', 22, '2022-05-19 15:29:28');
INSERT INTO `tb_visitorlog` VALUES (1176, '2022-05-19', '202.6.227.46', 'Chrome [101]', 22, '2022-05-19 17:21:59');
INSERT INTO `tb_visitorlog` VALUES (1177, '2022-05-19', '66.249.66.48', 'Chrome [101]', 1, '2022-05-19 14:41:24');
INSERT INTO `tb_visitorlog` VALUES (1178, '2022-05-19', '202.6.227.46', 'Chrome [88]', 3, '2022-05-19 15:04:50');
INSERT INTO `tb_visitorlog` VALUES (1179, '2022-05-19', '182.1.64.20', 'Chrome [101]', 1, '2022-05-19 15:04:41');
INSERT INTO `tb_visitorlog` VALUES (1180, '2022-05-19', '202.6.227.46', 'Safari [13]', 1, '2022-05-19 15:28:23');
INSERT INTO `tb_visitorlog` VALUES (1181, '2022-05-19', '202.6.227.46', 'Chrome [87]', 1, '2022-05-19 15:28:52');
INSERT INTO `tb_visitorlog` VALUES (1182, '2022-05-19', '125.164.52.197', 'Safari [604.1]', 1, '2022-05-19 15:31:44');
INSERT INTO `tb_visitorlog` VALUES (1183, '2022-05-19', '140.213.56.27', ' [0]', 6, '2022-05-19 15:36:48');
INSERT INTO `tb_visitorlog` VALUES (1184, '2022-05-19', '112.215.173.243', 'Chrome [101]', 1, '2022-05-19 16:56:53');
INSERT INTO `tb_visitorlog` VALUES (1185, '2022-05-19', '66.249.66.58', 'Chrome [101]', 1, '2022-05-19 17:33:14');
INSERT INTO `tb_visitorlog` VALUES (1186, '2022-05-20', '66.249.66.48', 'Chrome [101]', 1, '2022-05-20 05:16:36');
INSERT INTO `tb_visitorlog` VALUES (1187, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 08:08:37');
INSERT INTO `tb_visitorlog` VALUES (1188, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 10:24:23');
INSERT INTO `tb_visitorlog` VALUES (1189, '2022-05-20', '66.249.66.56', 'Chrome [101]', 1, '2022-05-20 11:33:26');
INSERT INTO `tb_visitorlog` VALUES (1190, '2022-05-20', '66.249.74.24', 'Chrome [101]', 1, '2022-05-20 12:28:38');
INSERT INTO `tb_visitorlog` VALUES (1191, '2022-05-20', '66.249.66.52', 'Chrome [101]', 1, '2022-05-20 12:31:14');
INSERT INTO `tb_visitorlog` VALUES (1192, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:44:36');
INSERT INTO `tb_visitorlog` VALUES (1193, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:44:46');
INSERT INTO `tb_visitorlog` VALUES (1194, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:44:50');
INSERT INTO `tb_visitorlog` VALUES (1195, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:54:58');
INSERT INTO `tb_visitorlog` VALUES (1196, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:55:01');
INSERT INTO `tb_visitorlog` VALUES (1197, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 12:55:02');
INSERT INTO `tb_visitorlog` VALUES (1198, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:13:21');
INSERT INTO `tb_visitorlog` VALUES (1199, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:13:23');
INSERT INTO `tb_visitorlog` VALUES (1200, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:17:51');
INSERT INTO `tb_visitorlog` VALUES (1201, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:17:53');
INSERT INTO `tb_visitorlog` VALUES (1202, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:17:56');
INSERT INTO `tb_visitorlog` VALUES (1203, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:18:34');
INSERT INTO `tb_visitorlog` VALUES (1204, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 13:24:49');
INSERT INTO `tb_visitorlog` VALUES (1205, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 14:59:30');
INSERT INTO `tb_visitorlog` VALUES (1206, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 14:59:30');
INSERT INTO `tb_visitorlog` VALUES (1207, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 14:59:51');
INSERT INTO `tb_visitorlog` VALUES (1208, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 15:03:44');
INSERT INTO `tb_visitorlog` VALUES (1209, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 15:11:44');
INSERT INTO `tb_visitorlog` VALUES (1210, '2022-05-20', '125.164.7.246', 'Chrome [101]', 2, '2022-05-20 15:43:36');
INSERT INTO `tb_visitorlog` VALUES (1211, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 15:50:47');
INSERT INTO `tb_visitorlog` VALUES (1212, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 16:02:39');
INSERT INTO `tb_visitorlog` VALUES (1213, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 16:02:40');
INSERT INTO `tb_visitorlog` VALUES (1214, '2022-05-20', '140.213.48.205', 'Chrome [101]', 1, '2022-05-20 16:08:49');
INSERT INTO `tb_visitorlog` VALUES (1215, '2022-05-20', '2001:448a:5020:e766:', 'Chrome [101]', 1, '2022-05-20 16:39:15');
INSERT INTO `tb_visitorlog` VALUES (1216, '2022-05-20', '66.249.66.33', 'Chrome [101]', 1, '2022-05-20 21:25:30');
INSERT INTO `tb_visitorlog` VALUES (1217, '2022-05-21', '66.249.66.56', 'Chrome [101]', 2, '2022-05-21 02:13:00');
INSERT INTO `tb_visitorlog` VALUES (1218, '2022-05-21', '17.121.114.31', 'Safari [13.1]', 1, '2022-05-21 01:50:03');
INSERT INTO `tb_visitorlog` VALUES (1219, '2022-05-21', '17.121.112.6', 'Safari [13.1]', 1, '2022-05-21 02:19:42');
INSERT INTO `tb_visitorlog` VALUES (1220, '2022-05-21', '66.249.66.52', 'Chrome [101]', 1, '2022-05-21 07:47:37');
INSERT INTO `tb_visitorlog` VALUES (1221, '2022-05-21', '66.249.66.60', 'Chrome [101]', 1, '2022-05-21 08:24:12');
INSERT INTO `tb_visitorlog` VALUES (1222, '2022-05-21', '45.121.219.5', 'Chrome [97]', 1, '2022-05-21 17:03:06');
INSERT INTO `tb_visitorlog` VALUES (1223, '2022-05-21', '114.125.78.232', 'Chrome [101]', 1, '2022-05-21 17:24:12');
INSERT INTO `tb_visitorlog` VALUES (1224, '2022-05-22', '66.249.66.60', 'Chrome [101]', 1, '2022-05-22 00:18:47');
INSERT INTO `tb_visitorlog` VALUES (1225, '2022-05-22', '66.249.66.33', 'Chrome [101]', 1, '2022-05-22 07:09:00');
INSERT INTO `tb_visitorlog` VALUES (1226, '2022-05-22', '65.154.226.171', 'Chrome [76]', 1, '2022-05-22 07:26:15');
INSERT INTO `tb_visitorlog` VALUES (1227, '2022-05-22', '66.249.66.52', 'Chrome [101]', 2, '2022-05-22 20:14:33');
INSERT INTO `tb_visitorlog` VALUES (1228, '2022-05-22', '125.160.185.119', 'Chrome [101]', 1, '2022-05-22 17:26:39');
INSERT INTO `tb_visitorlog` VALUES (1229, '2022-05-22', '66.249.66.56', 'Chrome [101]', 1, '2022-05-22 23:56:33');
INSERT INTO `tb_visitorlog` VALUES (1230, '2022-05-23', '66.249.66.60', 'Chrome [101]', 1, '2022-05-23 00:00:11');
INSERT INTO `tb_visitorlog` VALUES (1231, '2022-05-23', '66.249.66.33', 'Chrome [101]', 1, '2022-05-23 03:55:57');
INSERT INTO `tb_visitorlog` VALUES (1232, '2022-05-23', '182.253.79.178', 'Chrome [101]', 3, '2022-05-23 08:14:05');
INSERT INTO `tb_visitorlog` VALUES (1233, '2022-05-23', '202.6.227.46', 'Chrome [101]', 2, '2022-05-23 09:44:10');
INSERT INTO `tb_visitorlog` VALUES (1234, '2022-05-23', '180.253.167.79', 'Chrome [101]', 2, '2022-05-23 10:05:09');
INSERT INTO `tb_visitorlog` VALUES (1235, '2022-05-23', '180.253.54.211', 'Firefox [100]', 6, '2022-05-23 11:14:48');
INSERT INTO `tb_visitorlog` VALUES (1236, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:29:25');
INSERT INTO `tb_visitorlog` VALUES (1237, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:29:40');
INSERT INTO `tb_visitorlog` VALUES (1238, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:29:43');
INSERT INTO `tb_visitorlog` VALUES (1239, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:02');
INSERT INTO `tb_visitorlog` VALUES (1240, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:12');
INSERT INTO `tb_visitorlog` VALUES (1241, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:17');
INSERT INTO `tb_visitorlog` VALUES (1242, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:21');
INSERT INTO `tb_visitorlog` VALUES (1243, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:30');
INSERT INTO `tb_visitorlog` VALUES (1244, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:30:40');
INSERT INTO `tb_visitorlog` VALUES (1245, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:31:41');
INSERT INTO `tb_visitorlog` VALUES (1246, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:31:49');
INSERT INTO `tb_visitorlog` VALUES (1247, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:31:54');
INSERT INTO `tb_visitorlog` VALUES (1248, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:31:58');
INSERT INTO `tb_visitorlog` VALUES (1249, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:32:00');
INSERT INTO `tb_visitorlog` VALUES (1250, '2022-05-23', '2001:448a:5020:5bbf:', 'Chrome [101]', 1, '2022-05-23 11:32:03');
INSERT INTO `tb_visitorlog` VALUES (1251, '2022-05-23', '180.253.49.124', 'Firefox [100]', 6, '2022-05-23 14:00:36');
INSERT INTO `tb_visitorlog` VALUES (1252, '2022-05-23', '2001:448a:5020:85b2:', 'Chrome [101]', 1, '2022-05-23 14:04:25');
INSERT INTO `tb_visitorlog` VALUES (1253, '2022-05-23', '2001:448a:5020:85b2:', 'Chrome [101]', 1, '2022-05-23 14:04:32');
INSERT INTO `tb_visitorlog` VALUES (1254, '2022-05-23', '2001:448a:5020:85b2:', 'Chrome [101]', 1, '2022-05-23 14:04:45');
INSERT INTO `tb_visitorlog` VALUES (1255, '2022-05-23', '2001:448a:5020:85b2:', 'Chrome [101]', 1, '2022-05-23 14:08:53');
INSERT INTO `tb_visitorlog` VALUES (1256, '2022-05-23', '2001:448a:5020:85b2:', 'Chrome [101]', 1, '2022-05-23 14:09:53');
INSERT INTO `tb_visitorlog` VALUES (1257, '2022-05-23', '125.164.12.192', 'Firefox [100]', 4, '2022-05-23 14:37:09');
INSERT INTO `tb_visitorlog` VALUES (1258, '2022-05-23', '202.6.227.46', 'Firefox [100]', 1, '2022-05-23 14:47:20');
INSERT INTO `tb_visitorlog` VALUES (1259, '2022-05-23', '125.164.6.108', 'Firefox [100]', 4, '2022-05-23 14:48:09');
INSERT INTO `tb_visitorlog` VALUES (1260, '2022-05-24', '66.249.66.50', 'Chrome [101]', 1, '2022-05-24 01:51:09');
INSERT INTO `tb_visitorlog` VALUES (1261, '2022-05-24', '66.249.66.54', 'Chrome [101]', 1, '2022-05-24 07:29:50');
INSERT INTO `tb_visitorlog` VALUES (1262, '2022-05-24', '125.164.12.192', 'Chrome [101]', 3, '2022-05-24 14:59:29');
INSERT INTO `tb_visitorlog` VALUES (1263, '2022-05-24', '66.249.66.58', 'Chrome [101]', 1, '2022-05-24 12:10:20');
INSERT INTO `tb_visitorlog` VALUES (1264, '2022-05-25', '66.249.66.54', 'Chrome [101]', 2, '2022-05-25 20:12:17');
INSERT INTO `tb_visitorlog` VALUES (1265, '2022-05-25', '2001:448a:5021:9542:', 'Chrome [101]', 1, '2022-05-25 15:44:05');
INSERT INTO `tb_visitorlog` VALUES (1266, '2022-05-25', '2001:448a:5021:9542:', 'Chrome [101]', 1, '2022-05-25 15:44:12');
INSERT INTO `tb_visitorlog` VALUES (1267, '2022-05-25', '2001:448a:5021:9542:', 'Chrome [101]', 1, '2022-05-25 15:44:20');
INSERT INTO `tb_visitorlog` VALUES (1268, '2022-05-25', '2001:448a:5021:9542:', 'Chrome [101]', 1, '2022-05-25 15:44:42');
INSERT INTO `tb_visitorlog` VALUES (1269, '2022-05-25', '2001:448a:5021:9542:', 'Chrome [101]', 1, '2022-05-25 15:47:52');
INSERT INTO `tb_visitorlog` VALUES (1270, '2022-05-25', '66.249.75.148', 'Chrome [101]', 1, '2022-05-25 17:57:37');
INSERT INTO `tb_visitorlog` VALUES (1271, '2022-05-25', '66.249.66.50', 'Chrome [101]', 1, '2022-05-25 19:27:19');
INSERT INTO `tb_visitorlog` VALUES (1272, '2022-05-25', '66.249.66.58', 'Chrome [101]', 1, '2022-05-25 19:37:42');
INSERT INTO `tb_visitorlog` VALUES (1273, '2022-05-25', '66.249.74.24', 'Chrome [101]', 2, '2022-05-25 19:48:58');
INSERT INTO `tb_visitorlog` VALUES (1274, '2022-05-26', '66.249.66.54', 'Chrome [101]', 1, '2022-05-26 05:41:31');
INSERT INTO `tb_visitorlog` VALUES (1275, '2022-05-26', '66.249.66.58', 'Chrome [101]', 3, '2022-05-26 23:35:49');
INSERT INTO `tb_visitorlog` VALUES (1276, '2022-05-26', '157.55.39.173', ' [0]', 1, '2022-05-26 07:22:41');
INSERT INTO `tb_visitorlog` VALUES (1277, '2022-05-26', '114.125.94.170', 'Chrome [96]', 2, '2022-05-26 12:46:09');
INSERT INTO `tb_visitorlog` VALUES (1278, '2022-05-26', '2a02:26f7:dfcd:4000:', 'Safari [15.3]', 1, '2022-05-26 12:47:23');
INSERT INTO `tb_visitorlog` VALUES (1279, '2022-05-26', '111.65.56.181', 'Safari [15.5]', 1, '2022-05-26 12:49:30');
INSERT INTO `tb_visitorlog` VALUES (1280, '2022-05-26', '2a02:26f7:dfc8:4000:', 'Safari [15.3]', 1, '2022-05-26 12:50:20');
INSERT INTO `tb_visitorlog` VALUES (1281, '2022-05-26', '111.65.56.181', 'Safari [15.4]', 2, '2022-05-26 13:21:00');
INSERT INTO `tb_visitorlog` VALUES (1282, '2022-05-26', '182.1.100.173', 'Chrome [101]', 1, '2022-05-26 13:31:16');
INSERT INTO `tb_visitorlog` VALUES (1283, '2022-05-26', '66.249.75.148', 'Chrome [101]', 2, '2022-05-26 21:45:45');
INSERT INTO `tb_visitorlog` VALUES (1284, '2022-05-26', '66.249.66.50', 'Chrome [101]', 1, '2022-05-26 21:51:32');
INSERT INTO `tb_visitorlog` VALUES (1285, '2022-05-26', '120.188.39.217', 'Chrome [101]', 1, '2022-05-26 23:06:58');
INSERT INTO `tb_visitorlog` VALUES (1286, '2022-05-27', '69.160.160.55', 'Chrome [81]', 1, '2022-05-27 03:53:38');
INSERT INTO `tb_visitorlog` VALUES (1287, '2022-05-27', '202.6.227.46', 'Chrome [102]', 4, '2022-05-27 08:38:08');
INSERT INTO `tb_visitorlog` VALUES (1288, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 10:27:48');
INSERT INTO `tb_visitorlog` VALUES (1289, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 10:27:49');
INSERT INTO `tb_visitorlog` VALUES (1290, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 10:27:52');
INSERT INTO `tb_visitorlog` VALUES (1291, '2022-05-27', '180.253.165.40', 'Chrome [101]', 1, '2022-05-27 11:18:17');
INSERT INTO `tb_visitorlog` VALUES (1292, '2022-05-27', '66.249.75.148', 'Chrome [101]', 1, '2022-05-27 13:37:58');
INSERT INTO `tb_visitorlog` VALUES (1293, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 17:32:14');
INSERT INTO `tb_visitorlog` VALUES (1294, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 17:32:16');
INSERT INTO `tb_visitorlog` VALUES (1295, '2022-05-27', '2001:448a:5020:12b0:', 'Chrome [101]', 1, '2022-05-27 17:32:21');
INSERT INTO `tb_visitorlog` VALUES (1296, '2022-05-27', '202.6.227.46', 'Chrome [101]', 4, '2022-05-27 17:32:30');
INSERT INTO `tb_visitorlog` VALUES (1297, '2022-05-27', '66.249.66.148', 'Chrome [101]', 1, '2022-05-27 23:44:58');
INSERT INTO `tb_visitorlog` VALUES (1298, '2022-05-28', '66.249.75.148', 'Chrome [101]', 1, '2022-05-28 05:06:04');
INSERT INTO `tb_visitorlog` VALUES (1299, '2022-05-28', '17.121.113.97', 'Safari [13.1]', 1, '2022-05-28 15:34:40');
INSERT INTO `tb_visitorlog` VALUES (1300, '2022-05-28', '116.206.40.107', 'Chrome [78]', 1, '2022-05-28 16:40:54');
INSERT INTO `tb_visitorlog` VALUES (1301, '2022-05-28', '150.129.59.4', 'Chrome [100]', 1, '2022-05-28 17:08:59');
INSERT INTO `tb_visitorlog` VALUES (1302, '2022-05-30', '66.249.66.90', 'Chrome [101]', 1, '2022-05-30 00:09:21');
INSERT INTO `tb_visitorlog` VALUES (1303, '2022-05-30', '157.55.39.66', ' [0]', 1, '2022-05-30 02:29:12');
INSERT INTO `tb_visitorlog` VALUES (1304, '2022-05-30', '124.246.83.193', 'Chrome [92]', 1, '2022-05-30 08:49:25');
INSERT INTO `tb_visitorlog` VALUES (1305, '2022-05-30', '36.82.18.189', 'Chrome [101]', 1, '2022-05-30 09:56:43');
INSERT INTO `tb_visitorlog` VALUES (1306, '2022-05-31', '66.249.66.12', 'Chrome [101]', 1, '2022-05-31 04:00:33');
INSERT INTO `tb_visitorlog` VALUES (1307, '2022-05-31', '66.249.66.198', 'Chrome [101]', 3, '2022-05-31 23:25:35');
INSERT INTO `tb_visitorlog` VALUES (1308, '2022-05-31', '66.249.66.60', 'Chrome [101]', 2, '2022-05-31 16:09:53');
INSERT INTO `tb_visitorlog` VALUES (1309, '2022-05-31', '66.249.66.90', 'Chrome [101]', 2, '2022-05-31 14:57:06');
INSERT INTO `tb_visitorlog` VALUES (1310, '2022-05-31', '40.77.139.84', ' [0]', 1, '2022-05-31 07:50:49');
INSERT INTO `tb_visitorlog` VALUES (1311, '2022-05-31', '182.1.80.56', 'Chrome [87]', 2, '2022-05-31 11:49:09');
INSERT INTO `tb_visitorlog` VALUES (1312, '2022-05-31', '79.173.88.92', 'Chrome [99]', 1, '2022-05-31 13:45:53');
INSERT INTO `tb_visitorlog` VALUES (1313, '2022-05-31', '66.249.66.33', 'Chrome [101]', 3, '2022-05-31 14:57:23');
INSERT INTO `tb_visitorlog` VALUES (1314, '2022-05-31', '66.249.66.48', 'Chrome [101]', 1, '2022-05-31 16:10:23');
INSERT INTO `tb_visitorlog` VALUES (1315, '2022-06-01', '66.249.66.42', 'Chrome [101]', 1, '2022-06-01 07:11:50');
INSERT INTO `tb_visitorlog` VALUES (1316, '2022-06-02', '66.249.66.90', 'Chrome [101]', 1, '2022-06-02 00:06:02');
INSERT INTO `tb_visitorlog` VALUES (1317, '2022-06-02', '66.249.66.92', 'Chrome [101]', 1, '2022-06-02 00:46:22');
INSERT INTO `tb_visitorlog` VALUES (1318, '2022-06-02', '66.249.66.33', 'Chrome [101]', 1, '2022-06-02 01:40:47');
INSERT INTO `tb_visitorlog` VALUES (1319, '2022-06-02', '66.249.66.198', 'Chrome [101]', 1, '2022-06-02 01:41:30');
INSERT INTO `tb_visitorlog` VALUES (1320, '2022-06-02', '66.249.66.42', 'Chrome [101]', 1, '2022-06-02 01:43:08');
INSERT INTO `tb_visitorlog` VALUES (1321, '2022-06-02', '125.164.2.180', 'Chrome [101]', 3, '2022-06-02 10:29:21');
INSERT INTO `tb_visitorlog` VALUES (1322, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:42:30');
INSERT INTO `tb_visitorlog` VALUES (1323, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:42:38');
INSERT INTO `tb_visitorlog` VALUES (1324, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:42:42');
INSERT INTO `tb_visitorlog` VALUES (1325, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:44:13');
INSERT INTO `tb_visitorlog` VALUES (1326, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:44:51');
INSERT INTO `tb_visitorlog` VALUES (1327, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:45:16');
INSERT INTO `tb_visitorlog` VALUES (1328, '2022-06-02', '2001:448a:5021:ebc5:', 'Firefox [100]', 1, '2022-06-02 10:45:19');
INSERT INTO `tb_visitorlog` VALUES (1329, '2022-06-02', '2001:448a:5021:ebc5:', 'Chrome [101]', 1, '2022-06-02 13:37:42');
INSERT INTO `tb_visitorlog` VALUES (1330, '2022-06-02', '125.164.59.70', 'Chrome [102]', 5, '2022-06-02 15:41:57');
INSERT INTO `tb_visitorlog` VALUES (1331, '2022-06-02', '2001:448a:5021:ebc5:', 'Chrome [101]', 1, '2022-06-02 15:42:14');
INSERT INTO `tb_visitorlog` VALUES (1332, '2022-06-02', '2001:448a:5021:ebc5:', 'Chrome [101]', 1, '2022-06-02 15:42:17');
INSERT INTO `tb_visitorlog` VALUES (1333, '2022-06-02', '2001:448a:5021:ebc5:', 'Chrome [101]', 1, '2022-06-02 15:45:09');
INSERT INTO `tb_visitorlog` VALUES (1334, '2022-06-02', '2001:448a:5021:ebc5:', 'Chrome [101]', 1, '2022-06-02 15:45:11');
INSERT INTO `tb_visitorlog` VALUES (1335, '2022-06-02', '125.164.59.70', 'Chrome [101]', 1, '2022-06-02 16:07:00');
INSERT INTO `tb_visitorlog` VALUES (1336, '2022-06-03', '66.249.66.42', 'Chrome [101]', 1, '2022-06-03 03:26:33');
INSERT INTO `tb_visitorlog` VALUES (1337, '2022-06-03', '66.249.66.33', 'Chrome [101]', 1, '2022-06-03 03:31:47');
INSERT INTO `tb_visitorlog` VALUES (1338, '2022-06-03', '114.125.85.248', 'Chrome [101]', 3, '2022-06-03 09:47:27');
INSERT INTO `tb_visitorlog` VALUES (1339, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [101]', 1, '2022-06-03 09:47:31');
INSERT INTO `tb_visitorlog` VALUES (1340, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:05');
INSERT INTO `tb_visitorlog` VALUES (1341, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:07');
INSERT INTO `tb_visitorlog` VALUES (1342, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:08');
INSERT INTO `tb_visitorlog` VALUES (1343, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:08');
INSERT INTO `tb_visitorlog` VALUES (1344, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:22');
INSERT INTO `tb_visitorlog` VALUES (1345, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:50:43');
INSERT INTO `tb_visitorlog` VALUES (1346, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:54:44');
INSERT INTO `tb_visitorlog` VALUES (1347, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 09:55:48');
INSERT INTO `tb_visitorlog` VALUES (1348, '2022-06-03', '219.74.248.206', 'Chrome [101]', 6, '2022-06-03 13:33:50');
INSERT INTO `tb_visitorlog` VALUES (1349, '2022-06-03', '125.164.6.34', 'Chrome [102]', 2, '2022-06-03 10:29:45');
INSERT INTO `tb_visitorlog` VALUES (1350, '2022-06-03', '180.253.160.63', 'Chrome [102]', 9, '2022-06-03 19:27:09');
INSERT INTO `tb_visitorlog` VALUES (1351, '2022-06-03', '180.247.180.183', 'Chrome [102]', 6, '2022-06-03 11:00:11');
INSERT INTO `tb_visitorlog` VALUES (1352, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 13:27:07');
INSERT INTO `tb_visitorlog` VALUES (1353, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 13:27:08');
INSERT INTO `tb_visitorlog` VALUES (1354, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 13:38:58');
INSERT INTO `tb_visitorlog` VALUES (1355, '2022-06-03', '66.249.73.122', 'Chrome [101]', 1, '2022-06-03 16:18:01');
INSERT INTO `tb_visitorlog` VALUES (1356, '2022-06-03', '2001:448a:5020:10eb:', 'Chrome [102]', 1, '2022-06-03 16:21:58');
INSERT INTO `tb_visitorlog` VALUES (1357, '2022-06-03', '66.249.73.110', 'Chrome [101]', 1, '2022-06-03 16:51:58');
INSERT INTO `tb_visitorlog` VALUES (1358, '2022-06-03', '40.77.139.79', ' [0]', 1, '2022-06-03 17:15:34');
INSERT INTO `tb_visitorlog` VALUES (1359, '2022-06-04', '150.129.59.5', 'Chrome [100]', 1, '2022-06-04 00:13:17');
INSERT INTO `tb_visitorlog` VALUES (1360, '2022-06-04', '54.190.93.17', 'Chrome [74]', 1, '2022-06-04 06:43:11');
INSERT INTO `tb_visitorlog` VALUES (1361, '2022-06-04', '66.249.64.135', 'Chrome [101]', 1, '2022-06-04 13:02:25');
INSERT INTO `tb_visitorlog` VALUES (1362, '2022-06-04', '66.249.64.152', 'Chrome [101]', 2, '2022-06-04 13:31:51');
INSERT INTO `tb_visitorlog` VALUES (1363, '2022-06-04', '66.249.66.92', 'Chrome [101]', 1, '2022-06-04 13:28:58');
INSERT INTO `tb_visitorlog` VALUES (1364, '2022-06-04', '66.249.73.122', 'Chrome [101]', 1, '2022-06-04 13:29:06');
INSERT INTO `tb_visitorlog` VALUES (1365, '2022-06-05', '79.173.83.25', 'Chrome [99]', 1, '2022-06-05 08:32:07');
INSERT INTO `tb_visitorlog` VALUES (1366, '2022-06-05', '114.125.100.13', 'Chrome [101]', 1, '2022-06-05 11:56:12');
INSERT INTO `tb_visitorlog` VALUES (1367, '2022-06-06', '2001:448a:5020:e70f:', 'Chrome [102]', 1, '2022-06-06 08:09:54');
INSERT INTO `tb_visitorlog` VALUES (1368, '2022-06-06', '2001:448a:5020:e70f:', 'Chrome [102]', 1, '2022-06-06 08:48:11');
INSERT INTO `tb_visitorlog` VALUES (1369, '2022-06-06', '2001:448a:5020:e70f:', 'Chrome [102]', 1, '2022-06-06 08:48:31');
INSERT INTO `tb_visitorlog` VALUES (1370, '2022-06-06', '2001:448a:5020:e70f:', 'Chrome [102]', 1, '2022-06-06 08:48:33');
INSERT INTO `tb_visitorlog` VALUES (1371, '2022-06-06', '2001:448a:5020:e70f:', 'Chrome [101]', 1, '2022-06-06 10:03:33');
INSERT INTO `tb_visitorlog` VALUES (1372, '2022-06-06', '114.125.69.228', 'Chrome [101]', 1, '2022-06-06 11:26:46');
INSERT INTO `tb_visitorlog` VALUES (1373, '2022-06-06', '66.249.64.152', 'Chrome [101]', 1, '2022-06-06 12:00:42');
INSERT INTO `tb_visitorlog` VALUES (1374, '2022-06-06', '36.74.97.1', 'Chrome [102]', 3, '2022-06-06 14:52:05');
INSERT INTO `tb_visitorlog` VALUES (1375, '2022-06-07', '125.164.224.11', 'Chrome [102]', 12, '2022-06-07 15:38:37');
INSERT INTO `tb_visitorlog` VALUES (1376, '2022-06-07', '180.253.160.144', 'Chrome [102]', 2, '2022-06-07 15:47:09');
INSERT INTO `tb_visitorlog` VALUES (1377, '2022-06-08', '125.164.3.40', 'Chrome [102]', 1, '2022-06-08 08:24:24');
INSERT INTO `tb_visitorlog` VALUES (1378, '2022-06-08', '66.249.74.24', 'Chrome [101]', 1, '2022-06-08 13:14:24');
INSERT INTO `tb_visitorlog` VALUES (1379, '2022-06-08', '114.4.218.174', ' [0]', 1, '2022-06-08 21:01:56');
INSERT INTO `tb_visitorlog` VALUES (1380, '2022-06-08', '121.7.70.28', 'Safari [15.3]', 1, '2022-06-08 23:52:01');
INSERT INTO `tb_visitorlog` VALUES (1381, '2022-06-08', '2606:54c0:6540:8::17', 'Safari [15.3]', 1, '2022-06-08 23:56:28');
INSERT INTO `tb_visitorlog` VALUES (1382, '2022-06-09', '110.139.14.7', 'Chrome [102]', 1, '2022-06-09 07:44:04');
INSERT INTO `tb_visitorlog` VALUES (1383, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 10:58:02');
INSERT INTO `tb_visitorlog` VALUES (1384, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 10:58:05');
INSERT INTO `tb_visitorlog` VALUES (1385, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 10:58:09');
INSERT INTO `tb_visitorlog` VALUES (1386, '2022-06-09', '2001:448a:5020:dac4:', 'Chrome [101]', 1, '2022-06-09 10:58:59');
INSERT INTO `tb_visitorlog` VALUES (1387, '2022-06-09', '2001:448a:5020:dac4:', 'Chrome [101]', 1, '2022-06-09 11:01:43');
INSERT INTO `tb_visitorlog` VALUES (1388, '2022-06-09', '2001:448a:5020:dac4:', 'Chrome [101]', 1, '2022-06-09 11:01:57');
INSERT INTO `tb_visitorlog` VALUES (1389, '2022-06-09', '2001:448a:5020:dac4:', 'Chrome [101]', 1, '2022-06-09 11:01:59');
INSERT INTO `tb_visitorlog` VALUES (1390, '2022-06-09', '2001:448a:5020:dac4:', 'Chrome [101]', 1, '2022-06-09 11:02:08');
INSERT INTO `tb_visitorlog` VALUES (1391, '2022-06-09', '125.164.9.79', 'Chrome [102]', 3, '2022-06-09 11:03:58');
INSERT INTO `tb_visitorlog` VALUES (1392, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:13:07');
INSERT INTO `tb_visitorlog` VALUES (1393, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:21:20');
INSERT INTO `tb_visitorlog` VALUES (1394, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:21:22');
INSERT INTO `tb_visitorlog` VALUES (1395, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:21:28');
INSERT INTO `tb_visitorlog` VALUES (1396, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:22:30');
INSERT INTO `tb_visitorlog` VALUES (1397, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:22:42');
INSERT INTO `tb_visitorlog` VALUES (1398, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:23:26');
INSERT INTO `tb_visitorlog` VALUES (1399, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:23:30');
INSERT INTO `tb_visitorlog` VALUES (1400, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:23:37');
INSERT INTO `tb_visitorlog` VALUES (1401, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:24:18');
INSERT INTO `tb_visitorlog` VALUES (1402, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:24:49');
INSERT INTO `tb_visitorlog` VALUES (1403, '2022-06-09', '2001:448a:5020:dac4:', 'Firefox [101]', 1, '2022-06-09 11:25:05');
INSERT INTO `tb_visitorlog` VALUES (1404, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:29:37');
INSERT INTO `tb_visitorlog` VALUES (1405, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:31:21');
INSERT INTO `tb_visitorlog` VALUES (1406, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:31:30');
INSERT INTO `tb_visitorlog` VALUES (1407, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:32:32');
INSERT INTO `tb_visitorlog` VALUES (1408, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:32:51');
INSERT INTO `tb_visitorlog` VALUES (1409, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:32:55');
INSERT INTO `tb_visitorlog` VALUES (1410, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:34:06');
INSERT INTO `tb_visitorlog` VALUES (1411, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:34:18');
INSERT INTO `tb_visitorlog` VALUES (1412, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:34:27');
INSERT INTO `tb_visitorlog` VALUES (1413, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:34:34');
INSERT INTO `tb_visitorlog` VALUES (1414, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:35:13');
INSERT INTO `tb_visitorlog` VALUES (1415, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:35:16');
INSERT INTO `tb_visitorlog` VALUES (1416, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:35:53');
INSERT INTO `tb_visitorlog` VALUES (1417, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:35:55');
INSERT INTO `tb_visitorlog` VALUES (1418, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:36:10');
INSERT INTO `tb_visitorlog` VALUES (1419, '2022-06-09', '182.1.99.168', 'Chrome [101]', 1, '2022-06-09 11:36:47');
INSERT INTO `tb_visitorlog` VALUES (1420, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:36:55');
INSERT INTO `tb_visitorlog` VALUES (1421, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:37:43');
INSERT INTO `tb_visitorlog` VALUES (1422, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:37:53');
INSERT INTO `tb_visitorlog` VALUES (1423, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:39:17');
INSERT INTO `tb_visitorlog` VALUES (1424, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:39:26');
INSERT INTO `tb_visitorlog` VALUES (1425, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:39:41');
INSERT INTO `tb_visitorlog` VALUES (1426, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:39:42');
INSERT INTO `tb_visitorlog` VALUES (1427, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:44:44');
INSERT INTO `tb_visitorlog` VALUES (1428, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:44:57');
INSERT INTO `tb_visitorlog` VALUES (1429, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:45:35');
INSERT INTO `tb_visitorlog` VALUES (1430, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:45:40');
INSERT INTO `tb_visitorlog` VALUES (1431, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [101]', 1, '2022-06-09 11:46:42');
INSERT INTO `tb_visitorlog` VALUES (1432, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:47:28');
INSERT INTO `tb_visitorlog` VALUES (1433, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:47:58');
INSERT INTO `tb_visitorlog` VALUES (1434, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:48:04');
INSERT INTO `tb_visitorlog` VALUES (1435, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:49:03');
INSERT INTO `tb_visitorlog` VALUES (1436, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:49:23');
INSERT INTO `tb_visitorlog` VALUES (1437, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:49:36');
INSERT INTO `tb_visitorlog` VALUES (1438, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 11:49:50');
INSERT INTO `tb_visitorlog` VALUES (1439, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:51:17');
INSERT INTO `tb_visitorlog` VALUES (1440, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:54:24');
INSERT INTO `tb_visitorlog` VALUES (1441, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:54:30');
INSERT INTO `tb_visitorlog` VALUES (1442, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:54:41');
INSERT INTO `tb_visitorlog` VALUES (1443, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:54:50');
INSERT INTO `tb_visitorlog` VALUES (1444, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:59:03');
INSERT INTO `tb_visitorlog` VALUES (1445, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:59:22');
INSERT INTO `tb_visitorlog` VALUES (1446, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 11:59:26');
INSERT INTO `tb_visitorlog` VALUES (1447, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:01:05');
INSERT INTO `tb_visitorlog` VALUES (1448, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:02:53');
INSERT INTO `tb_visitorlog` VALUES (1449, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:03:06');
INSERT INTO `tb_visitorlog` VALUES (1450, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:06:26');
INSERT INTO `tb_visitorlog` VALUES (1451, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:06:35');
INSERT INTO `tb_visitorlog` VALUES (1452, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:06:57');
INSERT INTO `tb_visitorlog` VALUES (1453, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:06:59');
INSERT INTO `tb_visitorlog` VALUES (1454, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:07:03');
INSERT INTO `tb_visitorlog` VALUES (1455, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:07:33');
INSERT INTO `tb_visitorlog` VALUES (1456, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:07:40');
INSERT INTO `tb_visitorlog` VALUES (1457, '2022-06-09', '2001:448a:5020:ce0b:', 'Safari [604.1]', 1, '2022-06-09 12:07:45');
INSERT INTO `tb_visitorlog` VALUES (1458, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:07:55');
INSERT INTO `tb_visitorlog` VALUES (1459, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:07:56');
INSERT INTO `tb_visitorlog` VALUES (1460, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:08:00');
INSERT INTO `tb_visitorlog` VALUES (1461, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:08:03');
INSERT INTO `tb_visitorlog` VALUES (1462, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:08:05');
INSERT INTO `tb_visitorlog` VALUES (1463, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:08:08');
INSERT INTO `tb_visitorlog` VALUES (1464, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:10:07');
INSERT INTO `tb_visitorlog` VALUES (1465, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:14:46');
INSERT INTO `tb_visitorlog` VALUES (1466, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:14:47');
INSERT INTO `tb_visitorlog` VALUES (1467, '2022-06-09', '2001:448a:5020:ce0b:', 'Chrome [102]', 1, '2022-06-09 12:14:50');
INSERT INTO `tb_visitorlog` VALUES (1468, '2022-06-09', '182.1.96.61', 'Chrome [101]', 1, '2022-06-09 13:49:29');
INSERT INTO `tb_visitorlog` VALUES (1469, '2022-06-09', '2001:448a:50e1:c19a:', 'Chrome [102]', 1, '2022-06-09 15:42:11');
INSERT INTO `tb_visitorlog` VALUES (1470, '2022-06-09', '139.0.123.189', 'Chrome [102]', 1, '2022-06-09 19:03:36');
INSERT INTO `tb_visitorlog` VALUES (1471, '2022-06-10', '125.164.61.234', 'Chrome [102]', 5, '2022-06-10 14:15:01');
INSERT INTO `tb_visitorlog` VALUES (1472, '2022-06-10', '202.6.227.46', 'Chrome [102]', 1, '2022-06-10 09:06:17');
INSERT INTO `tb_visitorlog` VALUES (1473, '2022-06-10', '125.164.0.174', 'Chrome [102]', 16, '2022-06-10 16:07:49');
INSERT INTO `tb_visitorlog` VALUES (1474, '2022-06-10', '110.50.81.196', 'Chrome [100]', 1, '2022-06-10 17:17:01');
INSERT INTO `tb_visitorlog` VALUES (1475, '2022-06-10', '202.43.172.5', 'Chrome [100]', 1, '2022-06-10 17:17:04');
INSERT INTO `tb_visitorlog` VALUES (1476, '2022-06-11', '66.249.64.139', 'Chrome [102]', 1, '2022-06-11 05:55:03');
INSERT INTO `tb_visitorlog` VALUES (1477, '2022-06-11', '66.249.66.88', 'Chrome [102]', 1, '2022-06-11 05:55:07');
INSERT INTO `tb_visitorlog` VALUES (1478, '2022-06-11', '17.121.112.235', 'Safari [13.1]', 1, '2022-06-11 06:53:37');
INSERT INTO `tb_visitorlog` VALUES (1479, '2022-06-11', '66.249.64.152', 'Chrome [102]', 1, '2022-06-11 07:06:12');
INSERT INTO `tb_visitorlog` VALUES (1480, '2022-06-11', '17.121.112.113', 'Safari [13.1]', 1, '2022-06-11 07:48:05');
INSERT INTO `tb_visitorlog` VALUES (1481, '2022-06-12', '2a03:2880:10ff:17::f', 'Chrome [102]', 1, '2022-06-12 10:29:44');
INSERT INTO `tb_visitorlog` VALUES (1482, '2022-06-12', '2a03:2880:20ff:9::fa', 'Chrome [70]', 1, '2022-06-12 10:29:46');
INSERT INTO `tb_visitorlog` VALUES (1483, '2022-06-12', '66.249.66.88', 'Chrome [102]', 1, '2022-06-12 22:38:36');
INSERT INTO `tb_visitorlog` VALUES (1484, '2022-06-12', '66.249.66.18', 'Chrome [102]', 1, '2022-06-12 22:38:36');
INSERT INTO `tb_visitorlog` VALUES (1485, '2022-06-13', '125.164.15.155', 'Chrome [102]', 1, '2022-06-13 08:08:36');
INSERT INTO `tb_visitorlog` VALUES (1486, '2022-06-13', '125.164.3.149', 'Chrome [102]', 4, '2022-06-13 09:22:08');
INSERT INTO `tb_visitorlog` VALUES (1487, '2022-06-13', '180.247.226.135', 'Chrome [101]', 1, '2022-06-13 20:14:46');
INSERT INTO `tb_visitorlog` VALUES (1488, '2022-06-14', '2605:6400:20:2490:7b', 'Chrome [87]', 1, '2022-06-14 06:04:58');
INSERT INTO `tb_visitorlog` VALUES (1489, '2022-06-14', '125.164.3.149', 'Chrome [102]', 1, '2022-06-14 07:43:54');
INSERT INTO `tb_visitorlog` VALUES (1490, '2022-06-14', '61.5.53.89', 'Chrome [102]', 2, '2022-06-14 13:13:40');
INSERT INTO `tb_visitorlog` VALUES (1491, '2022-06-14', '202.6.227.46', 'Chrome [102]', 4, '2022-06-14 13:48:26');
INSERT INTO `tb_visitorlog` VALUES (1492, '2022-06-14', '66.249.66.196', 'Chrome [102]', 1, '2022-06-14 15:07:01');
INSERT INTO `tb_visitorlog` VALUES (1493, '2022-06-14', '66.249.66.18', 'Chrome [102]', 1, '2022-06-14 15:29:31');
INSERT INTO `tb_visitorlog` VALUES (1494, '2022-06-14', '66.249.66.48', 'Chrome [102]', 2, '2022-06-14 17:54:37');
INSERT INTO `tb_visitorlog` VALUES (1495, '2022-06-15', '202.6.227.46', 'Chrome [102]', 13, '2022-06-15 11:17:48');
INSERT INTO `tb_visitorlog` VALUES (1496, '2022-06-15', '125.164.14.111', 'Chrome [101]', 1, '2022-06-15 10:40:32');
INSERT INTO `tb_visitorlog` VALUES (1497, '2022-06-15', '125.164.14.111', 'Chrome [102]', 5, '2022-06-15 13:32:44');
INSERT INTO `tb_visitorlog` VALUES (1498, '2022-06-15', '125.164.9.75', 'Chrome [102]', 1, '2022-06-15 13:32:33');
INSERT INTO `tb_visitorlog` VALUES (1499, '2022-06-15', '207.46.13.197', ' [0]', 1, '2022-06-15 15:35:44');
INSERT INTO `tb_visitorlog` VALUES (1500, '2022-06-16', '139.0.122.122', 'Chrome [102]', 4, '2022-06-16 05:01:13');
INSERT INTO `tb_visitorlog` VALUES (1501, '2022-06-16', '180.253.165.1', 'Chrome [102]', 4, '2022-06-16 11:44:10');
INSERT INTO `tb_visitorlog` VALUES (1502, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:34:13');
INSERT INTO `tb_visitorlog` VALUES (1503, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:34:32');
INSERT INTO `tb_visitorlog` VALUES (1504, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:34:39');
INSERT INTO `tb_visitorlog` VALUES (1505, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:34:55');
INSERT INTO `tb_visitorlog` VALUES (1506, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:34:55');
INSERT INTO `tb_visitorlog` VALUES (1507, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 09:35:02');
INSERT INTO `tb_visitorlog` VALUES (1508, '2022-06-16', '41.140.65.205', 'Chrome [102]', 18, '2022-06-16 14:32:00');
INSERT INTO `tb_visitorlog` VALUES (1509, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 11:32:49');
INSERT INTO `tb_visitorlog` VALUES (1510, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 11:33:04');
INSERT INTO `tb_visitorlog` VALUES (1511, '2022-06-16', '41.140.65.205', 'Firefox [52]', 1, '2022-06-16 11:41:59');
INSERT INTO `tb_visitorlog` VALUES (1512, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 17:17:37');
INSERT INTO `tb_visitorlog` VALUES (1513, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 17:17:37');
INSERT INTO `tb_visitorlog` VALUES (1514, '2022-06-16', '2001:448a:5021:edf7:', 'Chrome [102]', 1, '2022-06-16 17:18:05');
INSERT INTO `tb_visitorlog` VALUES (1515, '2022-06-16', '120.188.73.77', 'Chrome [89]', 1, '2022-06-16 18:02:03');
INSERT INTO `tb_visitorlog` VALUES (1516, '2022-06-17', '149.56.150.239', ' [0]', 1, '2022-06-17 02:41:57');
INSERT INTO `tb_visitorlog` VALUES (1517, '2022-06-17', '66.249.66.223', 'Chrome [102]', 2, '2022-06-17 04:54:37');
INSERT INTO `tb_visitorlog` VALUES (1518, '2022-06-17', '66.249.66.132', 'Chrome [102]', 1, '2022-06-17 04:12:07');
INSERT INTO `tb_visitorlog` VALUES (1519, '2022-06-17', '66.249.66.41', 'Chrome [102]', 1, '2022-06-17 04:12:08');
INSERT INTO `tb_visitorlog` VALUES (1520, '2022-06-17', '44.204.108.209', 'Firefox [28]', 1, '2022-06-17 04:14:11');
INSERT INTO `tb_visitorlog` VALUES (1521, '2022-06-17', '66.249.66.86', 'Chrome [102]', 1, '2022-06-17 04:54:27');
INSERT INTO `tb_visitorlog` VALUES (1522, '2022-06-17', '2a03:2880:31ff:16::f', 'Chrome [78]', 1, '2022-06-17 07:31:06');
INSERT INTO `tb_visitorlog` VALUES (1523, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 09:47:14');
INSERT INTO `tb_visitorlog` VALUES (1524, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 11:02:34');
INSERT INTO `tb_visitorlog` VALUES (1525, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 11:10:54');
INSERT INTO `tb_visitorlog` VALUES (1526, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 15:29:08');
INSERT INTO `tb_visitorlog` VALUES (1527, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 15:29:10');
INSERT INTO `tb_visitorlog` VALUES (1528, '2022-06-17', '2001:448a:5020:2040:', 'Chrome [102]', 1, '2022-06-17 15:29:12');
INSERT INTO `tb_visitorlog` VALUES (1529, '2022-06-17', '2a03:2880:ff:14::fac', 'Chrome [102]', 1, '2022-06-17 16:49:14');
INSERT INTO `tb_visitorlog` VALUES (1530, '2022-06-17', '2a03:2880:31ff::face', 'Chrome [102]', 1, '2022-06-17 16:49:16');
INSERT INTO `tb_visitorlog` VALUES (1531, '2022-06-17', '114.4.4.201', 'Chrome [100]', 1, '2022-06-17 17:02:31');
INSERT INTO `tb_visitorlog` VALUES (1532, '2022-06-17', '114.4.4.197', 'Chrome [100]', 1, '2022-06-17 17:11:20');
INSERT INTO `tb_visitorlog` VALUES (1533, '2022-06-19', '66.249.73.108', 'Chrome [102]', 1, '2022-06-19 15:17:55');
INSERT INTO `tb_visitorlog` VALUES (1534, '2022-06-19', '2a02:26f7:dfcd:4000:', 'Safari [15.3]', 1, '2022-06-19 18:31:47');
INSERT INTO `tb_visitorlog` VALUES (1535, '2022-06-19', '2a02:26f7:dfcd:46c0:', 'Safari [15.3]', 1, '2022-06-19 23:18:49');
INSERT INTO `tb_visitorlog` VALUES (1536, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:38:34');
INSERT INTO `tb_visitorlog` VALUES (1537, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:39:32');
INSERT INTO `tb_visitorlog` VALUES (1538, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:39:34');
INSERT INTO `tb_visitorlog` VALUES (1539, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:39:35');
INSERT INTO `tb_visitorlog` VALUES (1540, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:53:03');
INSERT INTO `tb_visitorlog` VALUES (1541, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 10:53:58');
INSERT INTO `tb_visitorlog` VALUES (1542, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:02:24');
INSERT INTO `tb_visitorlog` VALUES (1543, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:02:27');
INSERT INTO `tb_visitorlog` VALUES (1544, '2022-06-20', '202.6.227.46', 'Chrome [102]', 1, '2022-06-20 11:05:47');
INSERT INTO `tb_visitorlog` VALUES (1545, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:13:57');
INSERT INTO `tb_visitorlog` VALUES (1546, '2022-06-20', '2001:448a:5021:3697:', 'Safari [604.1]', 1, '2022-06-20 11:14:22');
INSERT INTO `tb_visitorlog` VALUES (1547, '2022-06-20', '2001:448a:5021:3697:', 'Safari [604.1]', 1, '2022-06-20 11:14:43');
INSERT INTO `tb_visitorlog` VALUES (1548, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:23:29');
INSERT INTO `tb_visitorlog` VALUES (1549, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:57:39');
INSERT INTO `tb_visitorlog` VALUES (1550, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:59:09');
INSERT INTO `tb_visitorlog` VALUES (1551, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:59:11');
INSERT INTO `tb_visitorlog` VALUES (1552, '2022-06-20', '2001:448a:5021:3697:', 'Chrome [102]', 1, '2022-06-20 11:59:42');
INSERT INTO `tb_visitorlog` VALUES (1553, '2022-06-20', '180.253.162.216', 'Chrome [102]', 23, '2022-06-20 14:43:28');
INSERT INTO `tb_visitorlog` VALUES (1554, '2022-06-20', '118.99.81.70', 'Firefox [101]', 12, '2022-06-20 15:26:02');
INSERT INTO `tb_visitorlog` VALUES (1555, '2022-06-20', '2606:54c0:3480:18::1', 'Safari [15.4]', 1, '2022-06-20 14:05:50');
INSERT INTO `tb_visitorlog` VALUES (1556, '2022-06-20', '2606:54c0:3480:18::1', 'Safari [15.3]', 1, '2022-06-20 19:23:39');
INSERT INTO `tb_visitorlog` VALUES (1557, '2022-06-20', '2606:54c0:34a0:18::1', 'Safari [15.4]', 1, '2022-06-20 19:27:44');
INSERT INTO `tb_visitorlog` VALUES (1558, '2022-06-21', '66.249.70.68', 'Chrome [102]', 1, '2022-06-21 00:26:03');
INSERT INTO `tb_visitorlog` VALUES (1559, '2022-06-21', '205.169.39.113', 'Chrome [79]', 1, '2022-06-21 07:54:11');
INSERT INTO `tb_visitorlog` VALUES (1560, '2022-06-21', '2001:448a:5020:817d:', 'Chrome [102]', 1, '2022-06-21 13:44:37');
INSERT INTO `tb_visitorlog` VALUES (1561, '2022-06-22', '2001:448a:5020:13c3:', 'Chrome [102]', 1, '2022-06-22 08:37:10');
INSERT INTO `tb_visitorlog` VALUES (1562, '2022-06-22', '2001:448a:5020:13c3:', 'Chrome [102]', 1, '2022-06-22 08:37:14');
INSERT INTO `tb_visitorlog` VALUES (1563, '2022-06-22', '2001:448a:5020:13c3:', 'Chrome [102]', 1, '2022-06-22 08:51:38');
INSERT INTO `tb_visitorlog` VALUES (1564, '2022-06-22', '2001:448a:5020:13c3:', 'Chrome [102]', 1, '2022-06-22 11:57:56');
INSERT INTO `tb_visitorlog` VALUES (1565, '2022-06-22', '66.249.68.21', 'Chrome [102]', 1, '2022-06-22 22:53:31');
INSERT INTO `tb_visitorlog` VALUES (1566, '2022-06-23', '66.249.68.1', 'Chrome [102]', 1, '2022-06-23 03:14:59');
INSERT INTO `tb_visitorlog` VALUES (1567, '2022-06-23', '66.249.68.21', 'Chrome [102]', 1, '2022-06-23 07:57:44');
INSERT INTO `tb_visitorlog` VALUES (1568, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 08:34:56');
INSERT INTO `tb_visitorlog` VALUES (1569, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 08:34:58');
INSERT INTO `tb_visitorlog` VALUES (1570, '2022-06-23', '180.253.164.108', 'Chrome [102]', 3, '2022-06-23 08:45:01');
INSERT INTO `tb_visitorlog` VALUES (1571, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [101]', 1, '2022-06-23 10:52:22');
INSERT INTO `tb_visitorlog` VALUES (1572, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 12:16:08');
INSERT INTO `tb_visitorlog` VALUES (1573, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 13:39:34');
INSERT INTO `tb_visitorlog` VALUES (1574, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 13:39:48');
INSERT INTO `tb_visitorlog` VALUES (1575, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 13:57:31');
INSERT INTO `tb_visitorlog` VALUES (1576, '2022-06-23', '207.46.13.42', ' [0]', 1, '2022-06-23 14:43:05');
INSERT INTO `tb_visitorlog` VALUES (1577, '2022-06-23', '2001:448a:5020:c39b:', 'Chrome [102]', 1, '2022-06-23 15:19:38');
INSERT INTO `tb_visitorlog` VALUES (1578, '2022-06-23', '202.6.227.46', 'Chrome [102]', 1, '2022-06-23 17:10:59');
INSERT INTO `tb_visitorlog` VALUES (1579, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [103]', 1, '2022-06-24 07:56:33');
INSERT INTO `tb_visitorlog` VALUES (1580, '2022-06-24', '125.164.4.106', 'Chrome [103]', 1, '2022-06-24 10:30:54');
INSERT INTO `tb_visitorlog` VALUES (1581, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:12:03');
INSERT INTO `tb_visitorlog` VALUES (1582, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:13:39');
INSERT INTO `tb_visitorlog` VALUES (1583, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:13:41');
INSERT INTO `tb_visitorlog` VALUES (1584, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:13:44');
INSERT INTO `tb_visitorlog` VALUES (1585, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:13:57');
INSERT INTO `tb_visitorlog` VALUES (1586, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:14:06');
INSERT INTO `tb_visitorlog` VALUES (1587, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:14:09');
INSERT INTO `tb_visitorlog` VALUES (1588, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:14:13');
INSERT INTO `tb_visitorlog` VALUES (1589, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:14:45');
INSERT INTO `tb_visitorlog` VALUES (1590, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:15:24');
INSERT INTO `tb_visitorlog` VALUES (1591, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:15:25');
INSERT INTO `tb_visitorlog` VALUES (1592, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:15:28');
INSERT INTO `tb_visitorlog` VALUES (1593, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:16:36');
INSERT INTO `tb_visitorlog` VALUES (1594, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:16:40');
INSERT INTO `tb_visitorlog` VALUES (1595, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:17:31');
INSERT INTO `tb_visitorlog` VALUES (1596, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:17:32');
INSERT INTO `tb_visitorlog` VALUES (1597, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:23:08');
INSERT INTO `tb_visitorlog` VALUES (1598, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:23:51');
INSERT INTO `tb_visitorlog` VALUES (1599, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:25:33');
INSERT INTO `tb_visitorlog` VALUES (1600, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:25:42');
INSERT INTO `tb_visitorlog` VALUES (1601, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:26:11');
INSERT INTO `tb_visitorlog` VALUES (1602, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:26:21');
INSERT INTO `tb_visitorlog` VALUES (1603, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 13:54:21');
INSERT INTO `tb_visitorlog` VALUES (1604, '2022-06-24', '118.98.26.6', 'Chrome [78]', 1, '2022-06-24 17:12:24');
INSERT INTO `tb_visitorlog` VALUES (1605, '2022-06-24', '2606:54c0:34a0:18::1', 'Safari [15.5]', 1, '2022-06-24 17:16:11');
INSERT INTO `tb_visitorlog` VALUES (1606, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 18:48:13');
INSERT INTO `tb_visitorlog` VALUES (1607, '2022-06-24', '2001:448a:5021:942d:', 'Chrome [102]', 1, '2022-06-24 18:48:16');
INSERT INTO `tb_visitorlog` VALUES (1608, '2022-06-25', '66.249.68.1', 'Chrome [102]', 2, '2022-06-25 06:59:18');
INSERT INTO `tb_visitorlog` VALUES (1609, '2022-06-25', '66.249.70.72', 'Chrome [102]', 1, '2022-06-25 06:41:54');
INSERT INTO `tb_visitorlog` VALUES (1610, '2022-06-26', '66.249.70.86', 'Chrome [102]', 1, '2022-06-26 00:40:38');
INSERT INTO `tb_visitorlog` VALUES (1611, '2022-06-26', '66.249.64.122', 'Chrome [102]', 1, '2022-06-26 13:11:31');
INSERT INTO `tb_visitorlog` VALUES (1612, '2022-06-26', '2606:54c0:34a0:50::1', 'Safari [15.3]', 1, '2022-06-26 16:29:20');
INSERT INTO `tb_visitorlog` VALUES (1613, '2022-06-26', '2606:54c0:34a0:50::1', 'Safari [15.3]', 1, '2022-06-26 16:29:35');
INSERT INTO `tb_visitorlog` VALUES (1614, '2022-06-26', '66.249.70.80', 'Chrome [102]', 1, '2022-06-26 22:53:08');
INSERT INTO `tb_visitorlog` VALUES (1615, '2022-06-27', '66.249.70.72', 'Chrome [102]', 1, '2022-06-27 07:00:16');
INSERT INTO `tb_visitorlog` VALUES (1616, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [102]', 1, '2022-06-27 08:22:22');
INSERT INTO `tb_visitorlog` VALUES (1617, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [103]', 1, '2022-06-27 09:08:40');
INSERT INTO `tb_visitorlog` VALUES (1618, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [103]', 1, '2022-06-27 09:08:41');
INSERT INTO `tb_visitorlog` VALUES (1619, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [102]', 1, '2022-06-27 10:11:57');
INSERT INTO `tb_visitorlog` VALUES (1620, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [102]', 1, '2022-06-27 10:11:58');
INSERT INTO `tb_visitorlog` VALUES (1621, '2022-06-27', '2001:448a:5020:552a:', 'Chrome [102]', 1, '2022-06-27 10:12:00');
INSERT INTO `tb_visitorlog` VALUES (1622, '2022-06-27', '69.131.77.193', 'Safari [15.5]', 1, '2022-06-27 10:52:50');
INSERT INTO `tb_visitorlog` VALUES (1623, '2022-06-27', '125.164.15.189', 'Chrome [103]', 2, '2022-06-27 11:24:41');
INSERT INTO `tb_visitorlog` VALUES (1624, '2022-06-27', '125.164.15.189', 'Chrome [102]', 1, '2022-06-27 11:39:10');
INSERT INTO `tb_visitorlog` VALUES (1625, '2022-06-27', '123.253.235.25', ' [0]', 5, '2022-06-27 18:27:06');
INSERT INTO `tb_visitorlog` VALUES (1626, '2022-06-28', '125.164.9.120', 'Chrome [103]', 8, '2022-06-28 16:38:17');
INSERT INTO `tb_visitorlog` VALUES (1627, '2022-06-29', '66.249.70.80', 'Chrome [102]', 2, '2022-06-29 16:46:02');
INSERT INTO `tb_visitorlog` VALUES (1628, '2022-06-29', '202.6.227.46', 'Chrome [103]', 1, '2022-06-29 11:25:13');
INSERT INTO `tb_visitorlog` VALUES (1629, '2022-06-29', '66.249.70.66', 'Chrome [102]', 1, '2022-06-29 14:26:49');
INSERT INTO `tb_visitorlog` VALUES (1630, '2022-06-29', '66.249.74.28', 'Chrome [102]', 1, '2022-06-29 19:35:04');
INSERT INTO `tb_visitorlog` VALUES (1631, '2022-06-29', '140.0.142.6', ' [0]', 2, '2022-06-29 22:31:32');
INSERT INTO `tb_visitorlog` VALUES (1632, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:42:43');
INSERT INTO `tb_visitorlog` VALUES (1633, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:42:44');
INSERT INTO `tb_visitorlog` VALUES (1634, '2022-06-30', '202.6.227.46', 'Chrome [103]', 6, '2022-06-30 13:57:50');
INSERT INTO `tb_visitorlog` VALUES (1635, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:45:34');
INSERT INTO `tb_visitorlog` VALUES (1636, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:45:47');
INSERT INTO `tb_visitorlog` VALUES (1637, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:45:52');
INSERT INTO `tb_visitorlog` VALUES (1638, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:48:06');
INSERT INTO `tb_visitorlog` VALUES (1639, '2022-06-30', '36.82.17.16', 'Chrome [103]', 6, '2022-06-30 11:50:06');
INSERT INTO `tb_visitorlog` VALUES (1640, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 10:50:34');
INSERT INTO `tb_visitorlog` VALUES (1641, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [102]', 1, '2022-06-30 11:02:50');
INSERT INTO `tb_visitorlog` VALUES (1642, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 11:26:17');
INSERT INTO `tb_visitorlog` VALUES (1643, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 11:26:28');
INSERT INTO `tb_visitorlog` VALUES (1644, '2022-06-30', '2001:448a:5021:7177:', 'Chrome [103]', 1, '2022-06-30 11:26:32');
INSERT INTO `tb_visitorlog` VALUES (1645, '2022-06-30', '125.164.1.220', 'Chrome [102]', 1, '2022-06-30 12:41:02');
INSERT INTO `tb_visitorlog` VALUES (1646, '2022-06-30', '66.249.74.10', 'Chrome [102]', 1, '2022-06-30 12:47:05');
INSERT INTO `tb_visitorlog` VALUES (1647, '2022-06-30', '66.249.77.8', 'Chrome [102]', 1, '2022-06-30 13:17:16');
INSERT INTO `tb_visitorlog` VALUES (1648, '2022-06-30', '180.253.150.101', 'Chrome [103]', 1, '2022-06-30 13:55:23');
INSERT INTO `tb_visitorlog` VALUES (1649, '2022-06-30', '180.253.150.101', 'Chrome [102]', 16, '2022-06-30 14:05:15');
INSERT INTO `tb_visitorlog` VALUES (1650, '2022-06-30', '202.6.227.46', 'Safari [604.1]', 5, '2022-06-30 14:03:31');
INSERT INTO `tb_visitorlog` VALUES (1651, '2022-06-30', '125.164.1.220', 'Chrome [103]', 2, '2022-06-30 14:37:01');
INSERT INTO `tb_visitorlog` VALUES (1652, '2022-06-30', '66.249.74.28', 'Chrome [102]', 1, '2022-06-30 19:45:16');
INSERT INTO `tb_visitorlog` VALUES (1653, '2022-07-01', '66.249.70.66', 'Chrome [102]', 1, '2022-07-01 05:24:01');
INSERT INTO `tb_visitorlog` VALUES (1654, '2022-07-01', '66.249.77.5', 'Chrome [102]', 1, '2022-07-01 05:51:46');
INSERT INTO `tb_visitorlog` VALUES (1655, '2022-07-01', '66.249.77.26', 'Chrome [102]', 1, '2022-07-01 06:21:30');
INSERT INTO `tb_visitorlog` VALUES (1656, '2022-07-01', '125.164.220.67', 'Chrome [103]', 1, '2022-07-01 08:39:04');
INSERT INTO `tb_visitorlog` VALUES (1657, '2022-07-01', '2001:448a:5020:3849:', 'Chrome [103]', 1, '2022-07-01 09:06:11');
INSERT INTO `tb_visitorlog` VALUES (1658, '2022-07-01', '66.249.74.28', 'Chrome [102]', 1, '2022-07-01 14:56:24');
INSERT INTO `tb_visitorlog` VALUES (1659, '2022-07-01', '207.46.13.42', ' [0]', 1, '2022-07-01 15:58:44');
INSERT INTO `tb_visitorlog` VALUES (1660, '2022-07-01', '2001:448a:5020:3849:', 'Chrome [103]', 1, '2022-07-01 16:06:41');
INSERT INTO `tb_visitorlog` VALUES (1661, '2022-07-01', '2001:448a:5020:3849:', 'Chrome [103]', 1, '2022-07-01 16:06:46');
INSERT INTO `tb_visitorlog` VALUES (1662, '2022-07-01', '2001:448a:5020:3849:', 'Chrome [103]', 1, '2022-07-01 16:06:50');
INSERT INTO `tb_visitorlog` VALUES (1663, '2022-07-01', '2001:448a:5020:3849:', 'Chrome [103]', 1, '2022-07-01 16:09:02');
INSERT INTO `tb_visitorlog` VALUES (1664, '2022-07-01', '180.253.165.52', 'Chrome [103]', 1, '2022-07-01 16:29:54');
INSERT INTO `tb_visitorlog` VALUES (1665, '2022-07-01', '114.4.4.135', 'Chrome [102]', 1, '2022-07-01 17:13:20');
INSERT INTO `tb_visitorlog` VALUES (1666, '2022-07-02', '17.121.112.102', 'Safari [13.1]', 1, '2022-07-02 09:15:43');
INSERT INTO `tb_visitorlog` VALUES (1667, '2022-07-02', '66.249.74.28', 'Chrome [102]', 1, '2022-07-02 12:10:45');
INSERT INTO `tb_visitorlog` VALUES (1668, '2022-07-02', '66.249.77.18', 'Chrome [102]', 1, '2022-07-02 12:54:41');
INSERT INTO `tb_visitorlog` VALUES (1669, '2022-07-02', '66.249.72.178', 'Chrome [102]', 1, '2022-07-02 16:56:17');
INSERT INTO `tb_visitorlog` VALUES (1670, '2022-07-02', '66.249.77.26', 'Chrome [102]', 1, '2022-07-02 22:48:12');
INSERT INTO `tb_visitorlog` VALUES (1671, '2022-07-03', '35.155.153.10', 'Chrome [74]', 1, '2022-07-03 05:22:19');
INSERT INTO `tb_visitorlog` VALUES (1672, '2022-07-03', '66.249.69.251', 'Chrome [102]', 1, '2022-07-03 08:49:45');
INSERT INTO `tb_visitorlog` VALUES (1673, '2022-07-03', '66.249.69.253', 'Chrome [102]', 2, '2022-07-03 17:58:12');
INSERT INTO `tb_visitorlog` VALUES (1674, '2022-07-04', '180.247.93.45', 'Chrome [103]', 1, '2022-07-04 08:26:25');

-- ----------------------------
-- Table structure for widged_chart
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart`;
CREATE TABLE `widged_chart`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widged_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart
-- ----------------------------

-- ----------------------------
-- Table structure for widged_chart_series
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart_series`;
CREATE TABLE `widged_chart_series`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formula` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `formula_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `x_axis_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_axis_field_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `x_axis_grouping` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'yes',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `widged_chart_id` int NOT NULL,
  `widged_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart_series
-- ----------------------------

-- ----------------------------
-- Table structure for widged_chart_series_condition
-- ----------------------------
DROP TABLE IF EXISTS `widged_chart_series_condition`;
CREATE TABLE `widged_chart_series_condition`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cond_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_operator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cond_logic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'AND',
  `widged_series_id` int NOT NULL,
  `widged_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widged_chart_series_condition
-- ----------------------------

-- ----------------------------
-- Table structure for widgeds
-- ----------------------------
DROP TABLE IF EXISTS `widgeds`;
CREATE TABLE `widgeds`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dashboard_id` int NOT NULL,
  `widged_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widged_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_number` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `y` int NOT NULL,
  `x` int NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widgeds
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
