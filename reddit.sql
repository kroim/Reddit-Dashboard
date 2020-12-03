/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : reddit

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 30/04/2020 06:37:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `sub_reddit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url_option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delay` int(11) NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (45, 1, 'r/SubstratumNetwork', 'option1', 'https://www.reddit.com/r/SubstratumNetwork/comments/9sm2v8/smart_contract_substratum_needs_clarification/', 'This seems like walking on the edge for no particular reason. Do they just enjoy to have this option to mint more tokens so they don\'t bother removing this?', 1, 'completed');
INSERT INTO `comments` VALUES (46, 2, 'r/SubstratumNetwork', 'option1', 'https://www.reddit.com/r/SubstratumNetwork/comments/9sm2v8/smart_contract_substratum_needs_clarification/', 'This is bad, and it\'s not like the team doesn\'t have a history of getting hacked or \"hacked:\nhttps://www.reddit.com/r/CryptoCurrency/comments/8gk3vc/substratum_twitter_account_was_hacked_and_the/', 60, 'completed');
INSERT INTO `comments` VALUES (47, 10, 'r/SubstratumNetwork', 'option1', 'https://www.reddit.com/r/SubstratumNetwork/comments/9sm2v8/smart_contract_substratum_needs_clarification/', 'Can this liability please get fixed? Justin has a shady background already, he also did a mess with burning address so please at least get rid of this.', 100, 'completed');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `timestamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 367 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, 'PineTrel: Proxy Failed!', 'Wed Aug 29 14:30:45 2018');
INSERT INTO `logs` VALUES (2, 'PineTrel: Login Failed', 'Wed Aug 29 14:30:50 2018');
INSERT INTO `logs` VALUES (3, 'PineTrel: Proxy Failed!', 'Wed Aug 29 14:56:47 2018');
INSERT INTO `logs` VALUES (4, 'PineTrel: Login Failed', 'Wed Aug 29 14:56:52 2018');
INSERT INTO `logs` VALUES (5, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:05:09 2018');
INSERT INTO `logs` VALUES (6, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:06:09 2018');
INSERT INTO `logs` VALUES (7, 'PineTrel: Login Success', 'Wed Aug 29 15:07:47 2018');
INSERT INTO `logs` VALUES (8, 'bilacularthread: Login Success', 'Wed Aug 29 15:07:51 2018');
INSERT INTO `logs` VALUES (9, 'JoskoKucan: Proxy is very bad ...', 'Wed Aug 29 15:09:59 2018');
INSERT INTO `logs` VALUES (10, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:25:40 2018');
INSERT INTO `logs` VALUES (11, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:26:40 2018');
INSERT INTO `logs` VALUES (12, 'bilacularthread: Proxy Failed!', 'Wed Aug 29 15:27:44 2018');
INSERT INTO `logs` VALUES (13, 'bilacularthread: Login Failed', 'Wed Aug 29 15:27:49 2018');
INSERT INTO `logs` VALUES (14, 'PineTrel: Login Success', 'Wed Aug 29 15:28:24 2018');
INSERT INTO `logs` VALUES (15, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:52:16 2018');
INSERT INTO `logs` VALUES (16, 'PineTrel: Proxy is very bad ...', 'Wed Aug 29 15:53:16 2018');
INSERT INTO `logs` VALUES (17, 'bilacularthread: Login Success', 'Wed Aug 29 15:55:19 2018');
INSERT INTO `logs` VALUES (18, 'PineTrel: Login Success', 'Wed Aug 29 15:55:24 2018');
INSERT INTO `logs` VALUES (19, 'JoskoKucan: Proxy is very bad ...', 'Wed Aug 29 15:57:20 2018');
INSERT INTO `logs` VALUES (20, 'PineTrel: Comment By URL Failed', 'Wed Aug 29 15:57:54 2018');
INSERT INTO `logs` VALUES (21, 'Comment ID: 6 is not completed with some errors', 'Wed Aug 29 15:57:54 2018');
INSERT INTO `logs` VALUES (22, 'JoskoKucan: Login Success', 'Wed Aug 29 15:59:33 2018');
INSERT INTO `logs` VALUES (23, 'bilacularthread: Comment By URL Failed', 'Wed Aug 29 16:00:10 2018');
INSERT INTO `logs` VALUES (24, 'Comment ID: 7 is not completed with some errors', 'Wed Aug 29 16:00:10 2018');
INSERT INTO `logs` VALUES (25, 'insane_skillz: Login Failed', 'Wed Aug 29 16:01:38 2018');
INSERT INTO `logs` VALUES (26, 'PineTrel: Login Failed', 'Thu Aug 30 00:13:04 2018');
INSERT INTO `logs` VALUES (27, 'PineTrel: Login Failed', 'Thu Aug 30 00:13:09 2018');
INSERT INTO `logs` VALUES (28, 'Stop Threading ... (comment_thread_6)', 'Thu Aug 30 00:13:12 2018');
INSERT INTO `logs` VALUES (29, 'bilacularthread: Login Success', 'Thu Aug 30 00:26:16 2018');
INSERT INTO `logs` VALUES (30, 'PineTrel: Login Failed', 'Thu Aug 30 00:26:24 2018');
INSERT INTO `logs` VALUES (31, 'PineTrel: Login Failed', 'Thu Aug 30 00:26:29 2018');
INSERT INTO `logs` VALUES (32, 'Stop Threading ... (comment_thread_6)', 'Thu Aug 30 00:26:32 2018');
INSERT INTO `logs` VALUES (33, 'JoskoKucan: Proxy Failed!', 'Thu Aug 30 00:28:11 2018');
INSERT INTO `logs` VALUES (34, 'JoskoKucan: Login Failed', 'Thu Aug 30 00:28:16 2018');
INSERT INTO `logs` VALUES (35, 'Stop Threading ... (comment_thread_8)', 'Thu Aug 30 00:28:20 2018');
INSERT INTO `logs` VALUES (36, 'bilacularthread: Comment By URL Failed', 'Thu Aug 30 00:28:54 2018');
INSERT INTO `logs` VALUES (37, 'Comment ID: 7 is not completed with some errors', 'Thu Aug 30 00:28:54 2018');
INSERT INTO `logs` VALUES (38, 'Stop Threading ... (comment_thread_7)', 'Thu Aug 30 00:28:57 2018');
INSERT INTO `logs` VALUES (39, 'insane_skillz: Login Success', 'Thu Aug 30 00:31:36 2018');
INSERT INTO `logs` VALUES (40, 'insane_skillz: Comment By URL Failed', 'Thu Aug 30 00:34:13 2018');
INSERT INTO `logs` VALUES (41, 'Comment ID: 9 is not completed with some errors', 'Thu Aug 30 00:34:13 2018');
INSERT INTO `logs` VALUES (42, 'Stop Threading ... (comment_thread_9)', 'Thu Aug 30 00:34:17 2018');
INSERT INTO `logs` VALUES (43, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 00:34:44 2018');
INSERT INTO `logs` VALUES (44, 'ZeusfromWoods: Login Success', 'Thu Aug 30 00:36:29 2018');
INSERT INTO `logs` VALUES (45, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 00:36:44 2018');
INSERT INTO `logs` VALUES (46, 'impissed0ff: Login Failed', 'Thu Aug 30 00:38:46 2018');
INSERT INTO `logs` VALUES (47, 'impissed0ff: Login Failed', 'Thu Aug 30 00:38:51 2018');
INSERT INTO `logs` VALUES (48, 'PineTrel: Login Success', 'Thu Aug 30 08:56:29 2018');
INSERT INTO `logs` VALUES (49, 'bilacularthread: Login Success', 'Thu Aug 30 08:58:50 2018');
INSERT INTO `logs` VALUES (50, 'JoskoKucan: Login Success', 'Thu Aug 30 09:01:19 2018');
INSERT INTO `logs` VALUES (51, 'bilacularthread: Comment By URL Failed', 'Thu Aug 30 09:01:55 2018');
INSERT INTO `logs` VALUES (52, 'Comment ID: 7 is not completed with some errors', 'Thu Aug 30 09:01:55 2018');
INSERT INTO `logs` VALUES (53, 'Comment ID: 6 is completed Successfully', 'Thu Aug 30 09:02:15 2018');
INSERT INTO `logs` VALUES (54, 'Stop Threading ... (comment_thread_6)', 'Thu Aug 30 09:02:15 2018');
INSERT INTO `logs` VALUES (55, 'Stop Threading ... (comment_thread_7)', 'Thu Aug 30 09:02:55 2018');
INSERT INTO `logs` VALUES (56, 'insane_skillz: Login Success', 'Thu Aug 30 09:03:58 2018');
INSERT INTO `logs` VALUES (57, 'JoskoKucan: Comment By URL Failed', 'Thu Aug 30 09:04:15 2018');
INSERT INTO `logs` VALUES (58, 'Comment ID: 8 is not completed with some errors', 'Thu Aug 30 09:04:15 2018');
INSERT INTO `logs` VALUES (59, 'Stop Threading ... (comment_thread_8)', 'Thu Aug 30 09:05:15 2018');
INSERT INTO `logs` VALUES (60, 'impissed0ff: Login Success', 'Thu Aug 30 09:06:20 2018');
INSERT INTO `logs` VALUES (61, 'insane_skillz: Comment By URL Failed', 'Thu Aug 30 09:06:30 2018');
INSERT INTO `logs` VALUES (62, 'Comment ID: 9 is not completed with some errors', 'Thu Aug 30 09:06:30 2018');
INSERT INTO `logs` VALUES (63, 'Stop Threading ... (comment_thread_9)', 'Thu Aug 30 09:07:30 2018');
INSERT INTO `logs` VALUES (64, 'ZeusfromWoods: Login Success', 'Thu Aug 30 09:08:53 2018');
INSERT INTO `logs` VALUES (65, 'Comment ID: 10 is completed Successfully', 'Thu Aug 30 09:11:43 2018');
INSERT INTO `logs` VALUES (66, 'Stop Threading ... (comment_thread_10)', 'Thu Aug 30 09:11:43 2018');
INSERT INTO `logs` VALUES (67, 'Comment ID: 11 is completed Successfully', 'Thu Aug 30 09:17:37 2018');
INSERT INTO `logs` VALUES (68, 'Stop Threading ... (comment_thread_11)', 'Thu Aug 30 09:17:37 2018');
INSERT INTO `logs` VALUES (69, 'PineTrel: Login Success', 'Thu Aug 30 01:50:30 2018');
INSERT INTO `logs` VALUES (70, 'PineTrel: Login Success', 'Thu Aug 30 02:02:05 2018');
INSERT INTO `logs` VALUES (71, 'bilacularthread: Login Success', 'Thu Aug 30 02:02:57 2018');
INSERT INTO `logs` VALUES (72, 'PineTrel: Comment By URL Failed', 'Thu Aug 30 02:03:44 2018');
INSERT INTO `logs` VALUES (73, 'Comment ID: 6 is not completed with some errors', 'Thu Aug 30 02:03:44 2018');
INSERT INTO `logs` VALUES (74, 'Stop Threading ... (comment_thread_6)', 'Thu Aug 30 02:03:47 2018');
INSERT INTO `logs` VALUES (75, 'JoskoKucan: Login Success', 'Thu Aug 30 02:06:51 2018');
INSERT INTO `logs` VALUES (76, 'Comment ID: 7 is completed Successfully', 'Thu Aug 30 02:08:22 2018');
INSERT INTO `logs` VALUES (77, 'Stop Threading ... (comment_thread_7)', 'Thu Aug 30 02:08:22 2018');
INSERT INTO `logs` VALUES (78, 'insane_skillz: Login Success', 'Thu Aug 30 02:08:56 2018');
INSERT INTO `logs` VALUES (79, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 02:11:43 2018');
INSERT INTO `logs` VALUES (80, 'JoskoKucan: Comment By URL Failed', 'Thu Aug 30 02:11:52 2018');
INSERT INTO `logs` VALUES (81, 'Comment ID: 8 is not completed with some errors', 'Thu Aug 30 02:11:52 2018');
INSERT INTO `logs` VALUES (82, 'Stop Threading ... (comment_thread_8)', 'Thu Aug 30 02:11:55 2018');
INSERT INTO `logs` VALUES (83, 'ZeusfromWoods: Login Success', 'Thu Aug 30 02:13:32 2018');
INSERT INTO `logs` VALUES (84, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 02:13:43 2018');
INSERT INTO `logs` VALUES (85, 'insane_skillz: Comment By URL Failed', 'Thu Aug 30 02:14:13 2018');
INSERT INTO `logs` VALUES (86, 'Comment ID: 9 is not completed with some errors', 'Thu Aug 30 02:14:13 2018');
INSERT INTO `logs` VALUES (87, 'Stop Threading ... (comment_thread_9)', 'Thu Aug 30 02:14:17 2018');
INSERT INTO `logs` VALUES (88, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 02:15:43 2018');
INSERT INTO `logs` VALUES (89, 'impissed0ff: Login Failed', 'Thu Aug 30 02:15:43 2018');
INSERT INTO `logs` VALUES (90, 'Stop Threading ... (comment_thread_10)', 'Thu Aug 30 02:15:46 2018');
INSERT INTO `logs` VALUES (91, 'ZeusfromWoods: Comment By URL Failed', 'Thu Aug 30 02:16:45 2018');
INSERT INTO `logs` VALUES (92, 'Comment ID: 11 is not completed with some errors', 'Thu Aug 30 02:16:45 2018');
INSERT INTO `logs` VALUES (93, 'Stop Threading ... (comment_thread_11)', 'Thu Aug 30 02:16:48 2018');
INSERT INTO `logs` VALUES (94, 'PineTrel: Login Success', 'Thu Aug 30 02:47:54 2018');
INSERT INTO `logs` VALUES (95, 'bilacularthread: Login Success', 'Thu Aug 30 02:48:33 2018');
INSERT INTO `logs` VALUES (96, 'JoskoKucan: Login Success', 'Thu Aug 30 02:52:53 2018');
INSERT INTO `logs` VALUES (97, 'Comment ID: 7 is completed Successfully', 'Thu Aug 30 02:53:28 2018');
INSERT INTO `logs` VALUES (98, 'Stop Threading ... (comment_thread_7)', 'Thu Aug 30 02:53:28 2018');
INSERT INTO `logs` VALUES (99, 'Comment ID: 6 is completed Successfully', 'Thu Aug 30 02:54:28 2018');
INSERT INTO `logs` VALUES (100, 'Stop Threading ... (comment_thread_6)', 'Thu Aug 30 02:54:28 2018');
INSERT INTO `logs` VALUES (101, 'insane_skillz: Login Success', 'Thu Aug 30 02:54:42 2018');
INSERT INTO `logs` VALUES (102, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 02:57:05 2018');
INSERT INTO `logs` VALUES (103, 'Comment ID: 8 is completed Successfully', 'Thu Aug 30 02:58:14 2018');
INSERT INTO `logs` VALUES (104, 'Stop Threading ... (comment_thread_8)', 'Thu Aug 30 02:58:15 2018');
INSERT INTO `logs` VALUES (105, 'ZeusfromWoods: Login Success', 'Thu Aug 30 02:58:54 2018');
INSERT INTO `logs` VALUES (106, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 02:59:06 2018');
INSERT INTO `logs` VALUES (107, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 03:01:06 2018');
INSERT INTO `logs` VALUES (108, 'impissed0ff: Login Failed', 'Thu Aug 30 03:01:06 2018');
INSERT INTO `logs` VALUES (109, 'Stop Threading ... (comment_thread_10)', 'Thu Aug 30 03:01:07 2018');
INSERT INTO `logs` VALUES (110, 'Comment ID: 9 is completed Successfully', 'Thu Aug 30 03:03:23 2018');
INSERT INTO `logs` VALUES (111, 'Stop Threading ... (comment_thread_9)', 'Thu Aug 30 03:03:23 2018');
INSERT INTO `logs` VALUES (112, 'Comment ID: 11 is completed Successfully', 'Thu Aug 30 03:05:47 2018');
INSERT INTO `logs` VALUES (113, 'Stop Threading ... (comment_thread_11)', 'Thu Aug 30 03:05:47 2018');
INSERT INTO `logs` VALUES (114, 'Start Threading ... (vote_thread_1)', 'Thu Aug 30 03:45:05 2018');
INSERT INTO `logs` VALUES (115, 'Start Threading ... (vote_thread_2)', 'Thu Aug 30 03:58:42 2018');
INSERT INTO `logs` VALUES (116, 'Start Threading ... (vote_thread_3)', 'Thu Aug 30 03:58:42 2018');
INSERT INTO `logs` VALUES (117, 'Start Threading ... (vote_thread_4)', 'Thu Aug 30 03:58:42 2018');
INSERT INTO `logs` VALUES (118, 'Start Threading ... (vote_thread_5)', 'Thu Aug 30 03:58:42 2018');
INSERT INTO `logs` VALUES (119, 'Start Threading ... (vote_thread_2)', 'Thu Aug 30 04:04:38 2018');
INSERT INTO `logs` VALUES (120, 'Start Threading ... (vote_thread_3)', 'Thu Aug 30 04:04:38 2018');
INSERT INTO `logs` VALUES (121, 'Start Threading ... (vote_thread_4)', 'Thu Aug 30 04:04:38 2018');
INSERT INTO `logs` VALUES (122, 'bilacularthread: Login Success', 'Thu Aug 30 04:05:50 2018');
INSERT INTO `logs` VALUES (123, 'bilacularthread: Login Success', 'Thu Aug 30 04:07:50 2018');
INSERT INTO `logs` VALUES (124, 'PineTrel: has Bad proxy', 'Thu Aug 30 04:10:08 2018');
INSERT INTO `logs` VALUES (125, 'bilacularthread: Target voting failed', 'Thu Aug 30 04:14:17 2018');
INSERT INTO `logs` VALUES (126, 'PineTrel: Proxy is very bad ...', 'Thu Aug 30 05:25:14 2018');
INSERT INTO `logs` VALUES (127, 'bilacularthread: Login Success', 'Thu Aug 30 05:25:50 2018');
INSERT INTO `logs` VALUES (128, 'JoskoKucan: Proxy Failed!', 'Thu Aug 30 05:28:10 2018');
INSERT INTO `logs` VALUES (129, 'bilacularthread: Login Success', 'Thu Aug 30 05:52:41 2018');
INSERT INTO `logs` VALUES (130, 'PineTrel: Search Sub Reddit Failed', 'Thu Aug 30 05:54:45 2018');
INSERT INTO `logs` VALUES (131, 'PineTrel: Comment By URL Failed', 'Thu Aug 30 05:54:51 2018');
INSERT INTO `logs` VALUES (132, 'Comment ID: 12 is not completed with some errors', 'Thu Aug 30 05:54:52 2018');
INSERT INTO `logs` VALUES (133, 'bilacularthread: Proxy Failed!', 'Thu Aug 30 06:08:40 2018');
INSERT INTO `logs` VALUES (134, 'bilacularthread: Login Failed', 'Thu Aug 30 06:08:45 2018');
INSERT INTO `logs` VALUES (135, 'Stop Threading ... (comment_thread_13)', 'Thu Aug 30 06:08:48 2018');
INSERT INTO `logs` VALUES (136, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 06:14:52 2018');
INSERT INTO `logs` VALUES (137, 'Comment ID: 12 is completed Successfully', 'Thu Aug 30 06:15:24 2018');
INSERT INTO `logs` VALUES (138, 'Stop Threading ... (comment_thread_12)', 'Thu Aug 30 06:15:24 2018');
INSERT INTO `logs` VALUES (139, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 06:16:56 2018');
INSERT INTO `logs` VALUES (140, 'bilacularthread: Login Success', 'Thu Aug 30 06:22:29 2018');
INSERT INTO `logs` VALUES (142, 'bilacularthread: Login Success', 'Thu Aug 30 06:59:33 2018');
INSERT INTO `logs` VALUES (143, 'PineTrel: Comment By URL Failed', 'Thu Aug 30 07:00:25 2018');
INSERT INTO `logs` VALUES (144, 'Comment ID: 12 is not completed with some errors', 'Thu Aug 30 07:00:25 2018');
INSERT INTO `logs` VALUES (145, 'Stop Threading ... (comment_thread_12)', 'Thu Aug 30 07:00:30 2018');
INSERT INTO `logs` VALUES (146, 'JoskoKucan: Login Success', 'Thu Aug 30 07:01:01 2018');
INSERT INTO `logs` VALUES (147, 'insane_skillz: Login Success', 'Thu Aug 30 07:03:44 2018');
INSERT INTO `logs` VALUES (148, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 07:05:19 2018');
INSERT INTO `logs` VALUES (149, 'Comment ID: 13 is completed Successfully', 'Thu Aug 30 07:06:41 2018');
INSERT INTO `logs` VALUES (150, 'Stop Threading ... (comment_thread_13)', 'Thu Aug 30 07:06:41 2018');
INSERT INTO `logs` VALUES (151, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 07:07:22 2018');
INSERT INTO `logs` VALUES (152, 'Comment ID: 15 is completed Successfully', 'Thu Aug 30 07:07:51 2018');
INSERT INTO `logs` VALUES (153, 'Stop Threading ... (comment_thread_15)', 'Thu Aug 30 07:07:51 2018');
INSERT INTO `logs` VALUES (154, 'impissed0ff: Proxy is very bad ...', 'Thu Aug 30 07:09:25 2018');
INSERT INTO `logs` VALUES (155, 'impissed0ff: Login Failed', 'Thu Aug 30 07:09:25 2018');
INSERT INTO `logs` VALUES (156, 'Stop Threading ... (comment_thread_16)', 'Thu Aug 30 07:09:29 2018');
INSERT INTO `logs` VALUES (157, 'Comment ID: 14 is completed Successfully', 'Thu Aug 30 07:09:50 2018');
INSERT INTO `logs` VALUES (158, 'Stop Threading ... (comment_thread_14)', 'Thu Aug 30 07:09:50 2018');
INSERT INTO `logs` VALUES (159, 'bilacularthread: Search Sub Reddit Failed', 'Thu Aug 30 14:41:46 2018');
INSERT INTO `logs` VALUES (160, 'bilacularthread: Comment By URL Failed', 'Thu Aug 30 14:42:19 2018');
INSERT INTO `logs` VALUES (161, 'Comment ID: 18 is not completed with some errors', 'Thu Aug 30 14:42:19 2018');
INSERT INTO `logs` VALUES (162, 'Stop Threading ... (comment_thread_18)', 'Thu Aug 30 14:42:23 2018');
INSERT INTO `logs` VALUES (163, 'PineTrel: Comment By URL Failed', 'Thu Aug 30 14:42:46 2018');
INSERT INTO `logs` VALUES (164, 'Comment ID: 17 is not completed with some errors', 'Thu Aug 30 14:42:46 2018');
INSERT INTO `logs` VALUES (165, 'Stop Threading ... (comment_thread_17)', 'Thu Aug 30 14:42:50 2018');
INSERT INTO `logs` VALUES (166, 'ZeusfromWoods: Search Sub Reddit Failed', 'Thu Aug 30 14:42:50 2018');
INSERT INTO `logs` VALUES (167, 'insane_skillz: Search Sub Reddit Failed', 'Thu Aug 30 14:42:54 2018');
INSERT INTO `logs` VALUES (168, 'ZeusfromWoods: Comment By URL Failed', 'Thu Aug 30 14:43:19 2018');
INSERT INTO `logs` VALUES (169, 'Comment ID: 20 is not completed with some errors', 'Thu Aug 30 14:43:19 2018');
INSERT INTO `logs` VALUES (170, 'Stop Threading ... (comment_thread_20)', 'Thu Aug 30 14:43:22 2018');
INSERT INTO `logs` VALUES (171, 'insane_skillz: Comment By URL Failed', 'Thu Aug 30 14:43:58 2018');
INSERT INTO `logs` VALUES (172, 'Comment ID: 19 is not completed with some errors', 'Thu Aug 30 14:43:58 2018');
INSERT INTO `logs` VALUES (173, 'Stop Threading ... (comment_thread_19)', 'Thu Aug 30 14:44:02 2018');
INSERT INTO `logs` VALUES (174, 'sukhoi57: Search Sub Reddit Failed', 'Thu Aug 30 14:44:37 2018');
INSERT INTO `logs` VALUES (175, 's500ftw: Search Sub Reddit Failed', 'Thu Aug 30 14:44:48 2018');
INSERT INTO `logs` VALUES (176, 'PineTrel: Proxy Failed!', 'Thu Aug 30 20:01:01 2018');
INSERT INTO `logs` VALUES (177, 'PineTrel: Login Failed', 'Thu Aug 30 20:01:06 2018');
INSERT INTO `logs` VALUES (178, 'Stop Threading ... (comment_thread_17)', 'Thu Aug 30 20:01:09 2018');
INSERT INTO `logs` VALUES (179, 'bilacularthread: Login Success', 'Thu Aug 30 20:02:20 2018');
INSERT INTO `logs` VALUES (180, 'ZeusfromWoods: Proxy Failed!', 'Thu Aug 30 20:03:17 2018');
INSERT INTO `logs` VALUES (181, 'ZeusfromWoods: Login Failed', 'Thu Aug 30 20:03:22 2018');
INSERT INTO `logs` VALUES (182, 'Stop Threading ... (comment_thread_20)', 'Thu Aug 30 20:03:25 2018');
INSERT INTO `logs` VALUES (183, 'insane_skillz: Login Failed', 'Thu Aug 30 20:03:54 2018');
INSERT INTO `logs` VALUES (184, 'insane_skillz: Login Failed', 'Thu Aug 30 20:04:00 2018');
INSERT INTO `logs` VALUES (185, 'Stop Threading ... (comment_thread_19)', 'Thu Aug 30 20:04:04 2018');
INSERT INTO `logs` VALUES (186, 'sukhoi57: Login Success', 'Thu Aug 30 20:05:59 2018');
INSERT INTO `logs` VALUES (187, 's500ftw: Comment By URL Failed', 'Thu Aug 30 20:09:51 2018');
INSERT INTO `logs` VALUES (188, 'Comment ID: 23 is not completed with some errors', 'Thu Aug 30 20:09:51 2018');
INSERT INTO `logs` VALUES (189, 'Stop Threading ... (comment_thread_23)', 'Thu Aug 30 20:10:01 2018');
INSERT INTO `logs` VALUES (190, 'Uranium82: Search Sub Reddit Failed', 'Thu Aug 30 20:11:05 2018');
INSERT INTO `logs` VALUES (191, 'Comment ID: 18 is completed Successfully', 'Thu Aug 30 20:11:10 2018');
INSERT INTO `logs` VALUES (192, 'Stop Threading ... (comment_thread_18)', 'Thu Aug 30 20:11:10 2018');
INSERT INTO `logs` VALUES (193, 'Uranium82: Comment By URL Failed', 'Thu Aug 30 20:11:23 2018');
INSERT INTO `logs` VALUES (194, 'Comment ID: 24 is not completed with some errors', 'Thu Aug 30 20:11:23 2018');
INSERT INTO `logs` VALUES (195, 'Stop Threading ... (comment_thread_24)', 'Thu Aug 30 20:11:27 2018');
INSERT INTO `logs` VALUES (196, 'sukhoi57: Comment By URL Failed', 'Thu Aug 30 20:11:46 2018');
INSERT INTO `logs` VALUES (197, 'Comment ID: 22 is not completed with some errors', 'Thu Aug 30 20:11:46 2018');
INSERT INTO `logs` VALUES (198, 'Stop Threading ... (comment_thread_22)', 'Thu Aug 30 20:11:49 2018');
INSERT INTO `logs` VALUES (199, 'vote 138: Search Sub Reddit Failed', 'Tue Sep 11 11:51:23 2018');
INSERT INTO `logs` VALUES (200, 'cloudhealthspac: Target voting failed', 'Tue Sep 11 11:51:28 2018');
INSERT INTO `logs` VALUES (201, 'spong3here: Proxy Failed!', 'Tue Sep 11 15:51:55 2018');
INSERT INTO `logs` VALUES (202, 'spong3here: Proxy Failed!', 'Wed Sep 12 01:55:51 2018');
INSERT INTO `logs` VALUES (203, 'spong3here: Proxy Failed!', 'Wed Sep 12 01:58:29 2018');
INSERT INTO `logs` VALUES (204, 'spong3here: Proxy Failed!', 'Wed Sep 12 02:00:26 2018');
INSERT INTO `logs` VALUES (205, 'vote 117: Search Sub Reddit Failed', 'Wed Sep 12 03:30:40 2018');
INSERT INTO `logs` VALUES (206, 'judasmrad: Target voting failed', 'Wed Sep 12 03:30:45 2018');
INSERT INTO `logs` VALUES (207, 'vote 128: Search Sub Reddit Failed', 'Wed Sep 12 06:29:50 2018');
INSERT INTO `logs` VALUES (208, 'judasmrad: Target voting failed', 'Wed Sep 12 06:29:55 2018');
INSERT INTO `logs` VALUES (209, 'nekiici: Proxy Failed!', 'Wed Sep 12 06:35:09 2018');
INSERT INTO `logs` VALUES (210, 'nekiici: Proxy Failed!', 'Wed Sep 12 06:37:06 2018');
INSERT INTO `logs` VALUES (211, 'spong3here: Proxy Failed!', 'Wed Sep 12 15:18:28 2018');
INSERT INTO `logs` VALUES (212, 'spong3here: Proxy Failed!', 'Wed Sep 12 15:23:31 2018');
INSERT INTO `logs` VALUES (213, 'spong3here: Proxy Failed!', 'Wed Sep 12 15:28:34 2018');
INSERT INTO `logs` VALUES (214, 'spong3here: Login Failed', 'Wed Sep 12 15:28:39 2018');
INSERT INTO `logs` VALUES (215, 'putinsfoot: Proxy Failed!', 'Wed Sep 12 16:18:57 2018');
INSERT INTO `logs` VALUES (216, 'vote 140: Search Sub Reddit Failed', 'Wed Sep 12 16:25:33 2018');
INSERT INTO `logs` VALUES (217, 'putinsfoot: Target voting failed', 'Wed Sep 12 16:25:38 2018');
INSERT INTO `logs` VALUES (218, 'spong3here: Proxy Failed!', 'Thu Sep 13 07:46:24 2018');
INSERT INTO `logs` VALUES (219, 'spong3here: Proxy Failed!', 'Fri Sep 14 03:55:49 2018');
INSERT INTO `logs` VALUES (220, 'vote 162: Search Sub Reddit Failed', 'Fri Sep 14 09:47:36 2018');
INSERT INTO `logs` VALUES (221, 'spong3here: Target voting failed', 'Fri Sep 14 09:47:41 2018');
INSERT INTO `logs` VALUES (222, 'vote 188: Search Sub Reddit Failed', 'Fri Sep 14 14:57:50 2018');
INSERT INTO `logs` VALUES (223, 'spong3here: Target voting failed', 'Fri Sep 14 14:57:55 2018');
INSERT INTO `logs` VALUES (224, 'spong3here: Proxy Failed!', 'Sun Sep 16 22:11:18 2018');
INSERT INTO `logs` VALUES (225, 'judasmrad: Proxy Failed!', 'Tue Sep 18 04:08:13 2018');
INSERT INTO `logs` VALUES (226, 'spong3here: Proxy Failed!', 'Tue Sep 18 11:30:01 2018');
INSERT INTO `logs` VALUES (227, 'vote 224: Search Sub Reddit Failed', 'Tue Sep 18 11:40:27 2018');
INSERT INTO `logs` VALUES (228, 'spong3here: Target voting failed', 'Tue Sep 18 11:40:32 2018');
INSERT INTO `logs` VALUES (229, 'BismaarkGanderton: Proxy Failed!', 'Wed Sep 19 00:20:34 2018');
INSERT INTO `logs` VALUES (230, 'BismaarkGanderton: Proxy Failed!', 'Wed Sep 19 00:22:31 2018');
INSERT INTO `logs` VALUES (231, 'BismaarkGanderton: Proxy Failed!', 'Wed Sep 19 00:25:09 2018');
INSERT INTO `logs` VALUES (232, 'BismaarkGanderton: Proxy Failed!', 'Wed Sep 19 00:27:07 2018');
INSERT INTO `logs` VALUES (233, 'BismaarkGanderton: Proxy Failed!', 'Wed Sep 19 00:29:45 2018');
INSERT INTO `logs` VALUES (234, 'BismaarkGanderton: Login Failed', 'Wed Sep 19 00:29:50 2018');
INSERT INTO `logs` VALUES (235, 'spong3here: Proxy Failed!', 'Thu Sep 20 02:35:43 2018');
INSERT INTO `logs` VALUES (236, 'putinsfoot: Proxy Failed!', 'Thu Sep 20 04:02:43 2018');
INSERT INTO `logs` VALUES (237, 'putinsfoot: Proxy Failed!', 'Thu Sep 20 04:04:41 2018');
INSERT INTO `logs` VALUES (238, 'putinsfoot: Proxy Failed!', 'Thu Sep 20 04:07:19 2018');
INSERT INTO `logs` VALUES (239, 'putinsfoot: Proxy Failed!', 'Thu Sep 20 04:09:16 2018');
INSERT INTO `logs` VALUES (240, 'putinsfoot: Proxy Failed!', 'Thu Sep 20 04:11:54 2018');
INSERT INTO `logs` VALUES (241, 'putinsfoot: Login Failed', 'Thu Sep 20 04:11:59 2018');
INSERT INTO `logs` VALUES (242, 'Comment ID: 24 is completed Successfully', 'Fri Sep 21 07:09:54 2018');
INSERT INTO `logs` VALUES (243, 'Comment ID: 22 is completed Successfully', 'Fri Sep 21 08:23:00 2018');
INSERT INTO `logs` VALUES (244, 'Comment ID: 23 is completed Successfully', 'Fri Sep 21 08:23:15 2018');
INSERT INTO `logs` VALUES (245, 'Comment ID: 25 is completed Successfully', 'Fri Sep 21 08:23:48 2018');
INSERT INTO `logs` VALUES (246, 'Comment ID: 21 is completed Successfully', 'Fri Sep 21 08:24:23 2018');
INSERT INTO `logs` VALUES (247, 'Comment ID: 26 is completed Successfully', 'Fri Sep 21 08:40:49 2018');
INSERT INTO `logs` VALUES (248, 'Comment ID: 29 is completed Successfully', 'Fri Sep 21 08:41:46 2018');
INSERT INTO `logs` VALUES (249, 'Comment ID: 27 is completed Successfully', 'Fri Sep 21 08:43:34 2018');
INSERT INTO `logs` VALUES (250, 'Comment ID: 28 is completed Successfully', 'Fri Sep 21 08:44:23 2018');
INSERT INTO `logs` VALUES (251, 'Comment ID: 30 is completed Successfully', 'Fri Sep 21 08:57:57 2018');
INSERT INTO `logs` VALUES (252, 'Comment ID: 31 is completed Successfully', 'Fri Sep 21 09:01:11 2018');
INSERT INTO `logs` VALUES (253, 'Comment ID: 32 is completed Successfully', 'Fri Sep 21 09:02:46 2018');
INSERT INTO `logs` VALUES (254, 'vote 244: Search Sub Reddit Failed', 'Fri Sep 21 11:23:39 2018');
INSERT INTO `logs` VALUES (255, 'marcbendini: Target voting failed', 'Fri Sep 21 11:23:44 2018');
INSERT INTO `logs` VALUES (256, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:09:17 2018');
INSERT INTO `logs` VALUES (257, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:11:56 2018');
INSERT INTO `logs` VALUES (258, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:13:53 2018');
INSERT INTO `logs` VALUES (259, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:16:31 2018');
INSERT INTO `logs` VALUES (260, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:18:28 2018');
INSERT INTO `logs` VALUES (261, 'manustroll: Proxy Failed!', 'Wed Oct 10 06:21:06 2018');
INSERT INTO `logs` VALUES (262, 'manustroll: Login Failed', 'Wed Oct 10 06:21:11 2018');
INSERT INTO `logs` VALUES (263, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:31:15 2018');
INSERT INTO `logs` VALUES (264, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:33:53 2018');
INSERT INTO `logs` VALUES (265, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:35:50 2018');
INSERT INTO `logs` VALUES (266, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:38:28 2018');
INSERT INTO `logs` VALUES (267, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:40:26 2018');
INSERT INTO `logs` VALUES (268, 'putinsfoot: Proxy Failed!', 'Wed Oct 10 06:43:04 2018');
INSERT INTO `logs` VALUES (269, 'putinsfoot: Login Failed', 'Wed Oct 10 06:43:09 2018');
INSERT INTO `logs` VALUES (270, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:45:09 2018');
INSERT INTO `logs` VALUES (271, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:47:47 2018');
INSERT INTO `logs` VALUES (272, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:49:44 2018');
INSERT INTO `logs` VALUES (273, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:52:23 2018');
INSERT INTO `logs` VALUES (274, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:54:20 2018');
INSERT INTO `logs` VALUES (275, 'daomijao: Proxy Failed!', 'Wed Oct 10 06:56:58 2018');
INSERT INTO `logs` VALUES (276, 'daomijao: Login Failed', 'Wed Oct 10 06:57:03 2018');
INSERT INTO `logs` VALUES (277, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 06:59:04 2018');
INSERT INTO `logs` VALUES (278, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 07:01:42 2018');
INSERT INTO `logs` VALUES (279, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 07:03:40 2018');
INSERT INTO `logs` VALUES (280, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 07:06:18 2018');
INSERT INTO `logs` VALUES (281, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 07:08:15 2018');
INSERT INTO `logs` VALUES (282, 'ikapika2000: Proxy Failed!', 'Wed Oct 10 07:10:53 2018');
INSERT INTO `logs` VALUES (283, 'ikapika2000: Login Failed', 'Wed Oct 10 07:10:58 2018');
INSERT INTO `logs` VALUES (284, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:12:59 2018');
INSERT INTO `logs` VALUES (285, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:15:37 2018');
INSERT INTO `logs` VALUES (286, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:17:34 2018');
INSERT INTO `logs` VALUES (287, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:20:13 2018');
INSERT INTO `logs` VALUES (288, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:22:10 2018');
INSERT INTO `logs` VALUES (289, 'spong3here: Proxy Failed!', 'Wed Oct 10 07:24:48 2018');
INSERT INTO `logs` VALUES (290, 'spong3here: Login Failed', 'Wed Oct 10 07:24:53 2018');
INSERT INTO `logs` VALUES (291, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:26:55 2018');
INSERT INTO `logs` VALUES (292, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:29:33 2018');
INSERT INTO `logs` VALUES (293, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:31:30 2018');
INSERT INTO `logs` VALUES (294, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:34:08 2018');
INSERT INTO `logs` VALUES (295, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:36:06 2018');
INSERT INTO `logs` VALUES (296, 'sliskovickralj: Proxy Failed!', 'Wed Oct 10 07:38:44 2018');
INSERT INTO `logs` VALUES (297, 'sliskovickralj: Login Failed', 'Wed Oct 10 07:38:49 2018');
INSERT INTO `logs` VALUES (298, 'patisaspy: Proxy Failed!', 'Wed Oct 10 07:40:50 2018');
INSERT INTO `logs` VALUES (299, 'patisaspy: Proxy Failed!', 'Wed Oct 10 07:43:28 2018');
INSERT INTO `logs` VALUES (300, 'Actual_Inevitable: Proxy Failed!', 'Thu Oct 25 13:59:06 2018');
INSERT INTO `logs` VALUES (301, 'Actual_Inevitable: Proxy Failed!', 'Thu Oct 25 14:01:03 2018');
INSERT INTO `logs` VALUES (302, 'Actual_Inevitable: Proxy Failed!', 'Thu Oct 25 14:03:42 2018');
INSERT INTO `logs` VALUES (303, 'Actual_Inevitable: Proxy Failed!', 'Thu Oct 25 14:05:39 2018');
INSERT INTO `logs` VALUES (304, 'Actual_Inevitable: Proxy Failed!', 'Thu Oct 25 14:08:18 2018');
INSERT INTO `logs` VALUES (305, 'Actual_Inevitable: Login Failed', 'Thu Oct 25 14:08:23 2018');
INSERT INTO `logs` VALUES (306, 'Khan73527753: Proxy Failed!', 'Sat Oct 27 14:48:20 2018');
INSERT INTO `logs` VALUES (307, 'Comment ID: 33 is completed Successfully', 'Sat Oct 27 15:29:13 2018');
INSERT INTO `logs` VALUES (308, 'Comment ID: 36 is completed Successfully', 'Sat Oct 27 15:34:53 2018');
INSERT INTO `logs` VALUES (309, 'Comment ID: 37 is completed Successfully', 'Sat Oct 27 15:41:48 2018');
INSERT INTO `logs` VALUES (310, 'Comment ID: 38 is completed Successfully', 'Sat Oct 27 15:48:45 2018');
INSERT INTO `logs` VALUES (311, 'Comment ID: 39 is completed Successfully', 'Sat Oct 27 16:00:26 2018');
INSERT INTO `logs` VALUES (312, 'Comment ID: 40 is completed Successfully', 'Sat Oct 27 16:06:46 2018');
INSERT INTO `logs` VALUES (313, 'Comment ID: 41 is completed Successfully', 'Sat Oct 27 16:16:56 2018');
INSERT INTO `logs` VALUES (314, 'Comment ID: 42 is completed Successfully', 'Sat Oct 27 16:23:43 2018');
INSERT INTO `logs` VALUES (315, 'Comment ID: 43 is completed Successfully', 'Sat Oct 27 16:37:22 2018');
INSERT INTO `logs` VALUES (316, 'Comment ID: 44 is completed Successfully', 'Sat Oct 27 16:40:10 2018');
INSERT INTO `logs` VALUES (317, 'DinukaRA: Proxy Failed!', 'Sat Oct 27 16:51:47 2018');
INSERT INTO `logs` VALUES (318, 'DinukaRA: Proxy Failed!', 'Sat Oct 27 17:53:44 2018');
INSERT INTO `logs` VALUES (319, 'DinukaRA: Proxy Failed!', 'Sat Oct 27 18:56:23 2018');
INSERT INTO `logs` VALUES (320, 'DinukaRA: Proxy Failed!', 'Sat Oct 27 19:58:20 2018');
INSERT INTO `logs` VALUES (321, 'DinukaRA: Proxy Failed!', 'Sat Oct 27 21:00:58 2018');
INSERT INTO `logs` VALUES (322, 'Comment ID: 35 is completed Successfully', 'Sat Oct 27 21:16:04 2018');
INSERT INTO `logs` VALUES (323, 'vote 288: Search Sub Reddit Failed', 'Sun Oct 28 06:50:07 2018');
INSERT INTO `logs` VALUES (324, 'tpotter009: Target voting failed', 'Sun Oct 28 06:50:12 2018');
INSERT INTO `logs` VALUES (325, 'Comment ID: 47 is completed Successfully', 'Tue Oct 30 03:44:16 2018');
INSERT INTO `logs` VALUES (326, 'Comment ID: 45 is completed Successfully', 'Tue Oct 30 03:45:16 2018');
INSERT INTO `logs` VALUES (327, 'Comment ID: 46 is completed Successfully', 'Tue Oct 30 03:47:30 2018');
INSERT INTO `logs` VALUES (328, 'TutuRinging: Proxy Failed!', 'Tue Oct 30 12:45:29 2018');
INSERT INTO `logs` VALUES (329, 'TutuRinging: Proxy Failed!', 'Tue Oct 30 12:47:27 2018');
INSERT INTO `logs` VALUES (330, 'TutuRinging: Proxy Failed!', 'Tue Oct 30 12:50:05 2018');
INSERT INTO `logs` VALUES (331, 'TutuRinging: Proxy Failed!', 'Tue Oct 30 12:52:02 2018');
INSERT INTO `logs` VALUES (332, 'TutuRinging: Proxy Failed!', 'Tue Oct 30 12:54:40 2018');
INSERT INTO `logs` VALUES (333, 'TutuRinging: Login Failed', 'Tue Oct 30 12:54:45 2018');
INSERT INTO `logs` VALUES (334, 'vote 310: Search Sub Reddit Failed', 'Wed Oct 31 06:46:25 2018');
INSERT INTO `logs` VALUES (335, 'Golum69: Target voting failed', 'Wed Oct 31 06:46:30 2018');
INSERT INTO `logs` VALUES (336, 'musa15-05: Proxy Failed!', 'Thu Nov 01 01:46:01 2018');
INSERT INTO `logs` VALUES (337, 'musa15-05: Proxy Failed!', 'Thu Nov 01 01:51:04 2018');
INSERT INTO `logs` VALUES (338, 'musa15-05: Proxy Failed!', 'Thu Nov 01 01:56:06 2018');
INSERT INTO `logs` VALUES (339, 'musa15-05: Login Failed', 'Thu Nov 01 01:56:11 2018');
INSERT INTO `logs` VALUES (340, 'vote 336: Search Sub Reddit Failed', 'Tue Nov 06 04:28:26 2018');
INSERT INTO `logs` VALUES (341, 'DinukaRA: Target voting failed', 'Tue Nov 06 04:28:31 2018');
INSERT INTO `logs` VALUES (342, 'vote 336: Search Sub Reddit Failed', 'Tue Nov 06 04:45:01 2018');
INSERT INTO `logs` VALUES (343, 'Tesha79: Target voting failed', 'Tue Nov 06 04:45:06 2018');
INSERT INTO `logs` VALUES (344, 'vote 338: Search Sub Reddit Failed', 'Wed Nov 21 05:09:56 2018');
INSERT INTO `logs` VALUES (345, 'happykv8067: Target voting failed', 'Wed Nov 21 05:10:01 2018');
INSERT INTO `logs` VALUES (346, 'vote 338: Search Sub Reddit Failed', 'Wed Nov 21 05:18:44 2018');
INSERT INTO `logs` VALUES (347, 'DinukaRA: Target voting failed', 'Wed Nov 21 05:18:49 2018');
INSERT INTO `logs` VALUES (348, 'Tesha79: Proxy Failed!', 'Wed Nov 21 05:20:55 2018');
INSERT INTO `logs` VALUES (349, 'Tesha79: Proxy Failed!', 'Wed Nov 21 05:23:33 2018');
INSERT INTO `logs` VALUES (350, 'Tesha79: Proxy Failed!', 'Wed Nov 21 05:25:30 2018');
INSERT INTO `logs` VALUES (351, 'Tesha79: Proxy Failed!', 'Thu Nov 22 02:36:59 2018');
INSERT INTO `logs` VALUES (352, 'Tesha79: Proxy Failed!', 'Thu Nov 22 02:38:56 2018');
INSERT INTO `logs` VALUES (353, 'Tesha79: Proxy Failed!', 'Thu Nov 22 02:41:37 2018');
INSERT INTO `logs` VALUES (354, 'Tesha79: Proxy Failed!', 'Thu Nov 22 02:43:34 2018');
INSERT INTO `logs` VALUES (355, 'Tesha79: Login Failed', 'Thu Nov 22 02:46:24 2018');
INSERT INTO `logs` VALUES (356, 'Tesha79: Proxy Failed!', 'Thu Nov 22 03:32:36 2018');
INSERT INTO `logs` VALUES (357, 'vote 339: Search Sub Reddit Failed', 'Thu Nov 22 03:38:46 2018');
INSERT INTO `logs` VALUES (358, 'Tesha79: Target voting failed', 'Thu Nov 22 03:38:51 2018');
INSERT INTO `logs` VALUES (359, 'happykv8067: Proxy Failed!', 'Thu Nov 22 03:56:48 2018');
INSERT INTO `logs` VALUES (360, 'happykv8067: Proxy Failed!', 'Thu Nov 22 03:59:26 2018');
INSERT INTO `logs` VALUES (361, 'happykv8067: Proxy Failed!', 'Thu Nov 22 04:01:23 2018');
INSERT INTO `logs` VALUES (362, 'happykv8067: Proxy Failed!', 'Thu Nov 22 04:04:01 2018');
INSERT INTO `logs` VALUES (363, 'vote 358: Search Sub Reddit Failed', 'Mon Nov 26 08:15:32 2018');
INSERT INTO `logs` VALUES (364, 'exedocjpg: Target voting failed', 'Mon Nov 26 08:15:37 2018');
INSERT INTO `logs` VALUES (365, 'vote 360: Search Sub Reddit Failed', 'Tue Nov 27 06:09:59 2018');
INSERT INTO `logs` VALUES (366, 'YapIamIronMan: Target voting failed', 'Tue Nov 27 06:10:04 2018');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `session` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'r0b0flix', 'Mak9fd3388gf', '166.88.120.173', '8800', 00000000000);
INSERT INTO `users` VALUES (2, 'UrrichREX', 'Remajd93', '89.32.64.175', '8800', 00000000000);
INSERT INTO `users` VALUES (3, 'exedocjpg', 'Tlenfnf339', '50.2.15.122', '8800', 00000000000);
INSERT INTO `users` VALUES (4, 'Golum69', '92dffHHF9', '50.2.15.4', '8800', 00000000000);
INSERT INTO `users` VALUES (5, 'JanusHax', '8219jdijG', '50.2.15.159', '8800', 00000000000);
INSERT INTO `users` VALUES (6, 'TutuRinging', '392dn29', '89.32.64.13', '8800', 00000000000);
INSERT INTO `users` VALUES (7, 'EugenTrox', '38jjd20JK', '69.147.248.77', '8800', 00000000000);
INSERT INTO `users` VALUES (8, 'YapIamIronMan', '2719dJJ92', '50.2.15.211', '8800', 00000000000);
INSERT INTO `users` VALUES (9, 'BugsBunnyHere', '2882jjdw28', '108.186.244.205', '8800', 00000000000);
INSERT INTO `users` VALUES (10, 'spar3part', '28fdf9382', '69.147.248.64', '8800', 00000000000);
INSERT INTO `users` VALUES (11, 'malkia91', '38fj39299', '104.140.209.223', '8800', 00000000000);
INSERT INTO `users` VALUES (12, 'indah00d', '83f9h2f8f3', '89.32.64.182', '8800', 00000000000);

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num_votes` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 361 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES (360, 'r/btc|https://www.reddit.com/r/btc/comments/a0uejl/bsv_is_currently_most_profitable_to_mine_vs_bch/|12|1|u', 'option1', 'completed', 11);

SET FOREIGN_KEY_CHECKS = 1;
