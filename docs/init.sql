# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.0.17-MariaDB)
# Database: widgets
# Generation Time: 2016-02-13 21:48:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table widget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widget`;

CREATE TABLE `widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name_url` varchar(255) DEFAULT NULL,
  `code` text,
  `views` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;

INSERT INTO `widget` (`id`, `name`, `date`, `name_url`, `code`, `views`, `color`)
VALUES
	(1,'Social Feed','2016-02-17','social-feed','<div class=\"atk-layout\">\r\n  <div class=\"atk-layoutRow atk-layoutExpand\">\r\n    <div class=\"atk-layout atk-layoutCell\">\r\n      <div class=\"atk-layoutColumn atk-layoutExpand\">\r\n        <div class=\"atk-wrapper atk-padding-top--xl atk-padding-bottom--xl\">\r\n          <h1 class=\"atk-margin-bottom--l atk-align-center\">Social Feed</h1>\r\n          <div class=\"atk-items-spacingVertical--l atk-col-6 atk-move-center\">\r\n            <article>\r\n              <div class=\"atk-cells-spacing atk-align-top\">\r\n                <div class=\"atk-cell\"><a href=\"#\" style=\"width:48px;height:48px\" class=\"atk-shape-circle atk-overflow atk-swatch-gray atk-text-font--clear\"><img src=\"temp/kanye.jpg\" width=\"48\" height=\"\"></a></div>\r\n                  <div class=\"atk-cell\">\r\n                    <div class=\"atk-box atk-swatch-gray atk-margin-bottom--s atk-padding--s atk-popover-left-top\">\r\n                      <div class=\"atk-popoverArrow\"></div>\r\n                      <div class=\"atk-margin-bottom--xs atk-text-baseline--single\"><span class=\"atk-text-bold atk-margin-right--xs\">Kanye West</span><span class=\"atk-comment\"><a href=\"#\">@kanyewest</a> ⋅ Feb 10</span></div>\r\n                      <div>I\'m sorry Michael Jordan    I love and respect you. My beef was with Mark Parker. I respect you so much!</div>\r\n                    </div>\r\n                    <div class=\"atk-cells-spacing--l\">\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Tweets</div><a href=\"#\" class=\"atk-text-size--3xl\">365</a>\r\n                      </div>\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Following</div><a href=\"#\" class=\"atk-text-size--3xl\">1</a>\r\n                      </div>\r\n                      <div class=\"atk-cell atk-expand\">\r\n                        <div class=\"atk-text-caps-size--xs\">Followers</div><a href=\"#\" class=\"atk-text-size--3xl\">18.6M</a>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </article>\r\n            <article>\r\n              <div class=\"atk-cells-spacing atk-align-top\">\r\n                <div class=\"atk-cell\"><a href=\"#\" style=\"width:48px;height:48px\" class=\"atk-shape-circle atk-overflow atk-swatch-gray atk-text-font--clear\"><img src=\"temp/kanye.jpg\" width=\"48\" height=\"\"></a></div>\r\n                  <div class=\"atk-cell\">\r\n                    <div class=\"atk-box atk-swatch-gray atk-margin-bottom--s atk-padding--s atk-popover-left-top\">\r\n                      <div class=\"atk-popoverArrow\"></div>\r\n                      <div class=\"atk-margin-bottom--xs atk-text-baseline--single\"><span class=\"atk-text-bold atk-margin-right--xs\">Kanye West</span><span class=\"atk-comment\"><a href=\"#\">@kanyewest</a> ⋅ Feb 10</span></div>\r\n                      <div>I\'m sorry Michael Jordan    I love and respect you. My beef was with Mark Parker. I respect you so much!</div>\r\n                    </div>\r\n                    <div class=\"atk-cells-spacing--l\">\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Tweets</div><a href=\"#\" class=\"atk-text-size--3xl\">365</a>\r\n                      </div>\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Following</div><a href=\"#\" class=\"atk-text-size--3xl\">1</a>\r\n                      </div>\r\n                      <div class=\"atk-cell atk-expand\">\r\n                        <div class=\"atk-text-caps-size--xs\">Followers</div><a href=\"#\" class=\"atk-text-size--3xl\">18.6M</a>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </article>\r\n            <article>\r\n              <div class=\"atk-cells-spacing atk-align-top\">\r\n                <div class=\"atk-cell\"><a href=\"#\" style=\"width:48px;height:48px\" class=\"atk-shape-circle atk-overflow atk-swatch-gray atk-text-font--clear\"><img src=\"temp/kanye.jpg\" width=\"48\" height=\"\"></a></div>\r\n                  <div class=\"atk-cell\">\r\n                    <div class=\"atk-box atk-swatch-gray atk-margin-bottom--s atk-padding--s atk-popover-left-top\">\r\n                      <div class=\"atk-popoverArrow\"></div>\r\n                      <div class=\"atk-margin-bottom--xs atk-text-baseline--single\"><span class=\"atk-text-bold atk-margin-right--xs\">Kanye West</span><span class=\"atk-comment\"><a href=\"#\">@kanyewest</a> ⋅ Feb 10</span></div>\r\n                      <div>I\'m sorry Michael Jordan    I love and respect you. My beef was with Mark Parker. I respect you so much!</div>\r\n                    </div>\r\n                    <div class=\"atk-cells-spacing--l\">\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Tweets</div><a href=\"#\" class=\"atk-text-size--3xl\">365</a>\r\n                      </div>\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Following</div><a href=\"#\" class=\"atk-text-size--3xl\">1</a>\r\n                      </div>\r\n                      <div class=\"atk-cell atk-expand\">\r\n                        <div class=\"atk-text-caps-size--xs\">Followers</div><a href=\"#\" class=\"atk-text-size--3xl\">18.6M</a>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </article>\r\n            <article>\r\n              <div class=\"atk-cells-spacing atk-align-top\">\r\n                <div class=\"atk-cell\"><a href=\"#\" style=\"width:48px;height:48px\" class=\"atk-shape-circle atk-overflow atk-swatch-gray atk-text-font--clear\"><img src=\"temp/kanye.jpg\" width=\"48\" height=\"\"></a></div>\r\n                  <div class=\"atk-cell\">\r\n                    <div class=\"atk-box atk-swatch-gray atk-margin-bottom--s atk-padding--s atk-popover-left-top\">\r\n                      <div class=\"atk-popoverArrow\"></div>\r\n                      <div class=\"atk-margin-bottom--xs atk-text-baseline--single\"><span class=\"atk-text-bold atk-margin-right--xs\">Kanye West</span><span class=\"atk-comment\"><a href=\"#\">@kanyewest</a> ⋅ Feb 10</span></div>\r\n                      <div>I\'m sorry Michael Jordan    I love and respect you. My beef was with Mark Parker. I respect you so much!</div>\r\n                    </div>\r\n                    <div class=\"atk-cells-spacing--l\">\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Tweets</div><a href=\"#\" class=\"atk-text-size--3xl\">365</a>\r\n                      </div>\r\n                      <div class=\"atk-cell\">\r\n                        <div class=\"atk-text-caps-size--xs\">Following</div><a href=\"#\" class=\"atk-text-size--3xl\">1</a>\r\n                      </div>\r\n                      <div class=\"atk-cell atk-expand\">\r\n                        <div class=\"atk-text-caps-size--xs\">Followers</div><a href=\"#\" class=\"atk-text-size--3xl\">18.6M</a>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </article>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>','0','red'),
	(2,'Login Form','2016-02-17','login-form',NULL,'0','blue');

/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
