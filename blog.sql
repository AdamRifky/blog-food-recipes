/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - db_food_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_food_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_food_blog`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `status` enum('draft','published') DEFAULT 'draft',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `fk_course` (`course_id`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`user_id`,`title`,`content`,`category_id`,`course_id`,`image_url`,`link`,`created_at`,`updated_at`,`status`) values 
(1,1,'Quick and Easy Instant Spice Mix Rendang Beef Recipe','Using instant rendang spice mix and a few additional ingredients, this recipe offers a flavorful, simplified approach to rendang beef. With a cooking time of around 2 hours, it\'s perfect for those who want a delicious homemade rendang without spending an entire day in the kitchen. Ideal for anyone looking to clear out some freezer space and enjoy a comforting, spiced meal with ease.\r\n\r\nNothing beats the aroma of slow-cooked rendang filling the kitchen. After seeing that beef sitting in the freezer, I decided it was time to put it to good use. With a bit of instant rendang spice mix and some extra ingredients, I whipped up a deliciously rich rendang without the usual hassle. This recipe is perfect for a relaxed cooking day at home!',5,2,'image/potrait-rendang.png','easy-instant-spice-mix-rendang-beef-recipe.php','2024-10-04','2024-10-04','published'),
(2,1,'Special Pindang Fried Rice','There’s something about the aroma of fried rice in the morning that makes it a comforting way to start the day. This Pindang Fried Rice is packed with flavors from the savory, slightly smoky fish and the delicious blend of spices. Inspired by traditional Indonesian flavors, this recipe combines fried pindang fish with a spicy, flavorful rice that’s sure to be a hit with anyone who loves bold tastes. A great choice for breakfast, lunch, or dinner, it’s the perfect dish to satisfy those cravings with its irresistible taste and texture. Whether you’re an experienced cook or just looking to try something new, this recipe is simple, satisfying, and unforgettable!',9,2,'image/special-pindang-fried-rice-1.png','special-pindang-fried-rice.php','2024-10-05','2024-10-05','published'),
(3,1,'Beef Burger','There\'s something undeniably satisfying about crafting your own beef burger at home. The aroma of sizzling patties, the crunch of fresh vegetables, and the gooey goodness of melted cheese come together to create a culinary masterpiece that\'s not only delicious but also customizable to your taste. Whether you\'re preparing a quick breakfast or a hearty lunch, a homemade burger allows you to experiment with flavors and textures, ensuring that every bite is a delightful experience. In this recipe, we\'ll guide you through the steps to create a mouthwatering beef burger, perfect for satisfying your cravings. So, gather your ingredients, and let’s get cooking!',6,2,'image/beef-burger-1.png','beef-burger.php','2024-10-07','2024-10-07','published'),
(4,1,'Fried Eggs with Soy Sauce','Telur ceplok kecap is a simple yet flavorful dish that combines the richness of fried eggs with a savory sauce made from sweet soy sauce, oyster sauce, and a hint of salt. This dish is not only quick to prepare but also packed with nutrients, making it a perfect choice for a wholesome meal. Whether you\'re looking for a quick breakfast, a satisfying lunch, or a comforting dinner, telur ceplok kecap offers a delicious solution that can be served with steamed rice or enjoyed on its own. Let’s dive into this easy recipe that promises to bring warmth and comfort to your table!',7,2,'image/telur-ceplok-kecap-1.png','telur-ceplok-kecap.php','2024-10-08','2024-10-08','published'),
(5,1,'Ground Chicken Soup Rice','Ground chicken soup rice is a comforting and nourishing dish perfect for those chilly days or when you\'re feeling under the weather. This hearty chicken soup, paired with warm rice, is not only delicious but also packed with nutrients from a variety of vegetables. The combination of tender chicken, fresh veggies, and aromatic spices creates a delightful flavor that warms the soul. Whether you\'re looking for a quick meal or something to soothe your senses, this dish is sure to hit the spot. Let’s explore how to make this delicious ground chicken soup rice that’s perfect for serving to family and friends!\r\n\r\n',2,2,'image/ground-chicken-soup-rice-1.png','ground-chicken-soup-rice.php','2024-10-10','2024-10-10','published'),
(6,1,'Acehnese Sour Bandeng Fish','Acehnese sour bandeng fish, or \"Ikan Bandeng Asam Keueng,\" is a delightful dish that showcases the unique flavors of Aceh cuisine. This dish is characterized by its vibrant yellow color and aromatic spices, making it a perfect representation of the rich culinary heritage of Indonesia. The combination of fresh bandeng fish, tangy belimbing wuluh (starfruit), and fragrant herbs creates a refreshing and slightly spicy flavor profile that is both simple and satisfying. If you\'re looking to explore the tastes of Aceh, this dish is a must-try!',3,2,'image/acehnese-sour-bandeng-fish-1.png','acehnese-sour-bandeng-fish.php','2024-10-11','2024-10-11','published'),
(7,1,'Stir-Fried Green Beans with Beef','Stir-fried green beans with beef is a simple yet flavorful dish that often graces family dinner tables. This delightful recipe combines the crispness of green beans with tender beef, creating a wonderful contrast in texture that is sure to please everyone. Green beans are not only delicious but also packed with fiber and vitamins, making them a healthy choice to complement your daily nutritional needs.\r\n\r\nThis dish is incredibly easy and quick to prepare, making it perfect for those who are short on time but still want to serve a delicious and nutritious meal. With just a few basic ingredients and a straightforward cooking technique, you can have this meal ready in under 30 minutes. Stir-fried green beans with beef is also quite versatile; you can adjust the seasonings and ingredients to suit your taste or use whatever you have on hand. Let’s get cooking!',5,2,'image/stir-fried-green-beans-with-beef-1.png','stir-fried-green-beans-with-beef.php','2024-11-12','2024-11-12','published'),
(8,1,'Practical Eggless Spaghetti Carbonara','This practical eggless spaghetti carbonara is a creamy and delicious pasta dish that is perfect for kids and adults alike! With a rich sauce made from milk and cheese, this version is easy to prepare and avoids the use of eggs, making it a great option for those with dietary restrictions. The addition of sausages adds savory flavor, making this dish a favorite for school lunches or a hearty breakfast. Let’s dive into this simple recipe that your family will love!',4,2,'image/practical-eggless-spaghetti-carbonara-1.png','practical-eggless-spaghetti-carbonara.php','2024-10-13','2024-10-13','published'),
(9,1,'Savory Cheese Pizza Toast','This savory cheese pizza toast is a delicious and easy-to-make snack or meal that is perfect for anyone following a vegan or dairy-free diet. Topped with flavorful Bolognese sauce, mushrooms, and dairy-free cheese, this dish is both satisfying and nutritious. It can be enjoyed as a quick lunch or a hearty appetizer. Let’s get started!',1,2,'image/savory-cheese-pizza-toast-1.png','savory-cheese-pizza-toast.php','2024-10-14','2024-10-14','published'),
(10,1,'Padang Satay','Padang Satay, or \"Sate Padang,\" is a delicious Indonesian dish that hails from the Minangkabau region of West Sumatra. Known for its rich and flavorful sauce, this satay is made with tender beef and a unique blend of spices that create a mouthwatering experience. The combination of spices, herbs, and the signature peanut sauce makes it a favorite among satay lovers. Whether enjoyed as a snack or a main dish, Padang Satay is sure to impress with its bold flavors and aromatic appeal.',8,2,'image/padang-satay-1.png','padang-satay.php','2024-10-15','2024-10-15','published');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`) values 
(1,'Vegetarian'),
(2,'Soups'),
(3,'Seafood'),
(4,'Pasta'),
(5,'Meat'),
(6,'Burger'),
(7,'Egg'),
(8,'Satay'),
(9,'Rice');

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `courses` */

insert  into `courses`(`id`,`name`) values 
(1,'Appetizer'),
(2,'Main Course'),
(3,'Dessert');

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `likes` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','author','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`role`,`created_at`) values 
(1,'adam','adam@gmail.com','123','admin','2024-11-10 02:06:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
