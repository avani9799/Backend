-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2021 at 02:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Avni_ECommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(10) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Avni', 'avani@gmail.com', '123'),
(2, 'Swati', 'swati@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL,
  `pro_id` bigint(10) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_price` bigint(10) NOT NULL,
  `pro_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pro_id`, `pro_name`, `pro_price`, `pro_image`) VALUES
(1, 4, ' Georgette A-Line Dress', 60, 'images/minidress.jpg'),
(2, 4, ' Georgette A-Line Dress', 60, 'images/minidress.jpg'),
(3, 4, ' Georgette A-Line Dress', 60, 'images/minidress.jpg'),
(4, 8, 'Long Sleeve Stylish Tops', 120, 'images/westerntop.jpg'),
(5, 8, 'Long Sleeve Stylish Tops', 120, 'images/westerntop.jpg'),
(6, 8, 'Long Sleeve Stylish Tops', 120, 'images/westerntop.jpg'),
(7, 8, 'Long Sleeve Stylish Tops', 120, 'images/westerntop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `c_id` bigint(20) NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`c_id`, `c_name`) VALUES
(1, 'women'),
(2, 'men'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `p_id` bigint(20) NOT NULL,
  `p_name` varchar(70) NOT NULL,
  `p_price` bigint(20) NOT NULL,
  `p_description` text NOT NULL,
  `p_image` varchar(100) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `is_active` bigint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`p_id`, `p_name`, `p_price`, `p_description`, `p_image`, `c_name`, `is_active`) VALUES
(1, 'Buttons tweed blazer', 59, 'Tweed fabric. Fabric with cotton. Double button design. Straight design. Lapel-collar V-neck collar. Lapel with notch. Long sleeve. Two pockets with flaps on the front. Inner lining. Button fastening on the front section.', 'images/product-2.jpg', 'men', 1),
(2, 'Floral print dress', 50, 'Committed Collection. Flowy fabric. Sheer fabric. Midi design. Flared design. V-neck. Long sleeve with buttoned cuffs. Elastic panel. Zip and button fastening. Lined buttons.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact. ', 'images/product-1.jpg', 'women', 1),
(3, 'Tropical Printed Dress', 70, 'Committed Collection. Flowy fabric. Sheer fabric. Midi design. Flared design. V-neck. Long sleeve with buttoned cuffs. Elastic panel. Zip and button fastening. Lined buttons.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact. ', 'images/offshoulderdress.jpg', 'women', 1),
(4, ' Georgette A-Line Dress', 60, 'Flowy fabric. Satin finish. Straight design. Short design. Rounded neck. Long buttoned sleeve. Drawstring waist. One button fastening.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/minidress.jpg', 'women', 1),
(5, 'Wool suit blazer', 100, 'Viscose fabric. Fabric with wool. Structured. Straight design. Short design. Lapel-collar V-neck collar. Long sleeve. Two pockets with flaps. One button fastening. Inner lining. Total look.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/blazerwomen.jpg', 'women', 1),
(6, 'Double-breasted wool coat', 250, 'Committed Collection. Wool mix fabric. Double button design. Long design. Lapel-collar V-neck collar. Lapel with notch. Long sleeve with buttoned cuffs. Two pockets with flaps on the front. Back-slit hem. Inner lining. Button fastening on the front section', 'images/Doublebreastedwoolcoat.jpg', 'women', 1),
(7, 'Denim crop dungarees', 150, '100% Cotton. Denim fabric. Cropped design. Straight design. Straight neck. Wide straps. Adjustable straps. Chest pocket. Side pockets. Cuffed hem. Contrasting seams.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/dungarees.jpg', 'women', 1),
(8, 'Long Sleeve Stylish Tops', 120, 'Light fabric. Straight design. Rounded neck. Long sleeve.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/westerntop.jpg', 'women', 1),
(10, 'Floral Girls Party Wear Dress', 50, 'A Fail Safe Embellished Party Dress For Your Cute Little Fashionista. A Shimmery Embellished Yoke Being The Highlight Of This Sleeveless One-Piece Dress, The High Neck And Fit And Flare Design Are Too Good To Miss. Style With Some Fancy Hairpins And Shoes To Finish Her Look.', 'images/kid1.jpg_1088Wx1632H', 'kids', 1),
(11, 'Gold Plated Pearl Choker', 200, 'contains : 1 necklace + 1 pair of earring\r\ndimension : necklace pendant length - 65 cm, necklace width - 25 cm, earring length - 3 cm, earring width - 3 cm\r\nsuperior quality & skin friendly: high quality as per international standards it has been made from toxic free materials anti-allergic and safe for skin it can be worn over long time periods without any complains of ach and swelling', 'images/access1.jpg', 'accessories', 1),
(12, 'Belt wrap dress', 89, 'Suit style. Wrap detail. Straight design. Short design. Lapel-collar V-neck collar. Long sleeve. Flap pockets. Adjustable belt. Inner lining.', 'images/Beltwrapdress.jpg', 'women', 1),
(13, 'Yellow A-line Peplum Sleeve Dress', 90, 'Yellow solid woven A-Line dress, has a round neck, long sleeves, flared hem\r\n\r\nSize & Fit\r\nSemi-Fit\r\nThe model (height 5\'8\") is wearing a size S\r\n\r\nMaterial & Care\r\nPolyester\r\nMachine-wash', 'images/Aline.jpg', 'women', 1),
(14, 'Solid Maxi Dress', 78, 'Maroon solid woven maxi dress, has shoulder straps, sleeveless, concealed zip closure, and flared hem\r\n\r\nSize & Fit\r\nSemi-Fit\r\nThe model (height 5\'8\") is wearing a size S\r\n\r\nMaterial & Care\r\nMaterial: Polyester\r\nMachine Wash', 'images/maxi.jpg', 'women', 1),
(15, 'Black and White Polka Dots Top with Skirt', 50, 'This two-piece set consists of top and skirt\r\nBlack and white polka dots top, has a off-shoulder, sleeveless\r\nBlackand white polka dots skirt, has a zip closure\r\n\r\nSize & Fit\r\nThe model (height 5\'8\") is wearing a size S\r\n\r\nMaterial & Care\r\nTop fabric: Polyester\r\nBottom fabric: Polyester\r\nMachine-wash', 'images/women-11.jpg', 'women', 1),
(16, 'Maroon Solid Bardot Top', 40, 'Maroon solid woven bardot top, has an off-shoulder neck, short sleeves\r\n\r\nMaterial & Care\r\nPolyester\r\nMachine-wash', 'images/women-12.jpg', 'women', 1),
(17, 'Black Solid High-Low Top', 35, 'Black solid woven high-low top, has a mandarin collar, long sleeves, button closure\r\n\r\nMaterial & Care\r\nPolyester\r\nMachine-wash', 'images/women-13.jpg', 'women', 1),
(18, 'Yellow Solid Ruffled Jumpsuit', 60, 'Yellow solid basic jumpsuit, has a shoulder straps, sleeveless\r\n\r\nSize & Fit\r\nThe model (height 5\'8\'\') is wearing a size S\r\n\r\nMaterial & Care\r\nMaterial: Polyester\r\nMachine Wash', 'images/women-14.jpg', 'women', 1),
(19, 'Green & Blue Floral Printed Flared Maxi Skirt', 40, 'Green and blue floral printed flared maxi skirt with layered detail, has an elasticated waistband with tie-up belt, slip-on closure, flared hem.\r\n\r\nSize & Fit\r\nThe model(height 5\'8\") Is wearing size 28\r\n\r\nMaterial & Care\r\nPolyester\r\nMachine wash', 'images/women-15.jpg', 'women', 1),
(20, 'Mint men\'s casual full sleeves pullover', 60, 'They\'re lighter than your usual pullovers, but weighty enough to keep you comfortable as temperatures start to drop. Layer it however you want: over, under or just. Experience comfort every time, every wear.', 'images/men-2.jpg', 'men', 1),
(21, 'Mustard men\'s casual shirt', 80, 'if you’re the type of person who likes to escape once in a while, this shirt is made for you. Designed and built for journeys with loosely defined goals. Robust, versatile and made in a loose twill weave fabric that is slightly flowy and also rugged.\r\n\r\nIt’s the perfect companion to bring along whenever you are charting new territory.', 'images/men-3.jpg', 'men', 1),
(22, 'Blue men\'s formal full sleeves shirt', 100, 'It’s all about business comfort with this timeless formal shirt made from the world’s finest cotton, Egyptian Giza cotton. Experience excellence in craftsmanship with a straight point collar and cuffs with our insignia waves embroidery.', 'images/men-4.jpg', 'men', 1),
(23, 'Black men\'s casual polo', 76, 'Presenting a polo in pique fabric. Pique is made in an open weave construction and is very porous, allowing air to flow easily. Made in a relaxed fit for easy movement so you’re comfortable, all day long.', 'images/men-5.jpg', 'men', 1),
(24, 'Rust men\'s casual crew neck', 35, 'Alternating stripes of mustard and white, in one of the most unique constructions - a luxurious jacquard where the threads have been dyed (unlike a print) at the yarn stage. Made from the best cotton in the world, 100% certified supima cotton which gives the tee a superior, soft handfeel and lustre. This is a rare find, especially created for folks passionate about their style.', 'images/men-6.jpg', 'men', 1),
(25, 'Grey men\'s casual full sleeves pullover\r\n\r\n', 44, 'Our fastest selling styles, back in new colours. Beautifully textured garments that are crafted to be snug and relaxed, our iconic pullovers are easy to wear and hard to wear out.\r\n\r\nThey\'re lighter than your usual pullovers, but weighty enough to keep you comfortable as temperatures start to drop. Layer it however you want: over, under or just. Experience comfort every time, every wear.', 'images/men-7.jpg', 'men', 1),
(26, 'Navy men\'s casual full sleeves pullover', 45, 'Our fastest selling styles, back in new colours. Beautifully textured garments that are crafted to be snug and relaxed, our iconic pullovers are easy to wear and hard to wear out.\r\n\r\nThey\'re lighter than your usual pullovers, but weighty enough to keep you comfortable as temperatures start to drop. Layer it however you want: over, under or just. Experience comfort every time, every wear.', 'images/men-8.jpg', 'men', 1),
(27, 'Navy men\'s casual popover shirt', 70, 'Enjoy the beautifully evolved texture and aesthetic of this popover, crafted from one of Earth\'s friendliest fibers, Belgian linen. Linen from Belgian flax is softer and more durable. This style is gorgeously coloured and also features handcrafted potli buttons for a true heritage look. It ages beautifully with you, becoming softer with each wash. Also features the mark of Andamen, Rajan the swimming elephant.', 'images/men-9.jpg', 'men', 1),
(28, 'Beige men\'s casual mandarin shirt', 55, 'A part of the Sexy Saddy range, this iconic popover is crafted from one of Earth\'s friendliest fibers, Belgian linen. Linen from Belgian flax is softer and more durable. All traits of Andamen detailing, the handcrafted potli buttons, a welt pocket and a stylised back, come together beautifully to complete this masterpiece. Also features the mark of Andamen, Rajan the swimming elephant.', 'images/men-10.jpg', 'men', 1),
(29, 'Indigo men\'s mandarin shirt', 90, 'The richness of Indigo in a mandarin collar. This shirt is crafted from the luxuriously soft, Indigo cotton in a mid-weight fabric. The natural Indigo dye will fade out over time, making the shirt better, softer, bluer over wears and washes. Accentuated with natural wooden buttons that give each button a rustic variance. Also features the mark of Andamen, Rajan the swimming elephant.', 'images/men-11.jpg', 'men', 1),
(30, 'White Men\'s occasion Mandarin collar shirt', 150, 'One of our most beloved shirts, The Mandala Mandarin, now in a new version. Made from a unique tri-blend fabric, constructed for an ideal stretch and superior drape. The Mandarin collar’s relaxed yet refined look will breathe new life into your casual look.', 'images/men-12.jpg', 'men', 1),
(31, 'Burgundy Men\'s Occasion Check Shirt', 70, 'We’re back with a new style in our iconic ‘Air Twill 95’ range of exquisite evening shirts. The ‘Air Twill 95’ shirts are reconstructed to a precise single 70s count with a GSM of 95 (fabrics very rarely are less than 115 GSM) making them very light with a superior and soft handle. Enjoy a zero seam French placket construction with perfectly constructed slim collars and cuffs.', 'images/men-13.jpg', 'men', 1),
(32, 'Grey check men\'s casual overshirt', 200, 'Manchitra. A radar. The team begins to follow the signals and chart their path.\r\n\r\nLeisure and luxury collide in our very first over-shirt. White and grey checks encapsulate the galaxy over-shirt while green embroidery stitches provide an interesting dimension and depth. Perfect for transitionary weather and travels.', 'images/men-14.jpg', 'men', 1),
(33, 'Coral men\'s casual crew neck', 46, 'ndulge in an ultra-fine interlock crewneck. Made from world’s finest cotton, Supima, whose fibres are twisted more than 2x as traditional threads to create the right softness and drape. Experience the smoothest possible construction in a knit fabric.\r\n', 'images/men-15.jpg', 'men', 1),
(34, 'Beige men\'s casual mandarin shirt', 70, 'A part of the Sexy Saddy range, this iconic popover is crafted from one of Earth\'s friendliest fibers, Belgian linen. Linen from Belgian flax is softer and more durable. All traits of Andamen detailing, the handcrafted potli buttons, a welt pocket and a stylised back, come together beautifully to complete this masterpiece. Also features the mark of Andamen, Rajan the swimming elephant.', 'images/men-11.jpg', 'men', 1),
(35, 'Piccolo Solid Shirt And Skirt (set Of 2) - Off White (5-6 YEARS)', 40, 'Product Color: Off White\r\nBrighten up your little ones wardrobe with something stylish this season. Your princess will stand boldly in grace and beauty with this trendy outfit.\r\n\r\nProduct Material: Leather\r\n\r\nCare Instructions: Gentle wash', 'images/kids-2.jpg', 'kids', 1),
(36, 'Piccolo Maroon Solid Mini Dress (2-3 Years)\r\n(2-3 Years)', 69, 'Product Color: Maroon\r\nBrighten up your little ones wardrobe with something stylish this season. Your princess will stand boldly in grace and beauty with this trendy outfit.\r\n\r\nProduct Material: Organza\r\n\r\nCare Instructions: Gentle wash\r\n\r\n\r\n', 'images/kids-3.jpg', 'kids\r\n', 1),
(37, 'Piccolo White Floral Printed Top With Skirt (Set of 2) (2-3 Years)\r\n(2', 55, 'Product Color: White\r\nBrighten up your little ones wardrobe with something stylish this season. Your princess will stand boldly in grace and beauty with this trendy outfit.\r\n\r\nProduct Material: Corduroy\r\n\r\nCare Instructions: Gentle wash', 'images/kids-4.jpg', 'kids', 1),
(38, 'Piccolo Black Solid Top With Pants (Set of 2) (1-2 Years)\r\n(1-2 Years)', 66, 'Product Color: Black\r\nBrighten up your little ones wardrobe with something stylish this season. Your princess will stand boldly in grace and beauty with this trendy outfit.\r\nProduct Material: Corduroy\r\nCare Instructions: Gentle wash', 'images/kids-5.jpg', 'kids', 1),
(39, 'Piccolo Green Floral One Shoulder Dress (1-2 Years)\r\n(1-2 Years)', 45, 'Product Color: Green\r\nBrighten up your little ones wardrobe with something stylish this season. Your princess will stand boldly in grace and beauty with this trendy outfit.\r\nProduct Material: Organza\r\nCare Instructions: Gentle wash', 'images/kids-6.jpg', 'kids', 1),
(40, 'PICCOLO Off White Kurta Pajama Enhance with Floral Print (Set of 2)', 89, 'Give your little tot\'s ethnic collection a fashionable twist with this kurta set from PICCOLO. Tailored in satin, the floral printed kurta features a mandarin neckline and is paired with a pajama. It is ideal and adorable piece for festive occasions. Style it with juttis to complete your munchkin\'s look.', 'images/kids-7.jpg', 'kids', 1),
(41, 'Cotton Dhoti Kurta with Jacket Red and Beige (Set of 3)', 100, 'Bownbee cotton dhoti kurta with jacket- yellow\r\nProduct Details\r\nType:Dhoti Sets\r\nMaterial:Cotton\r\nPattern:Printed\r\nType of Work:Printed', 'images/kids-8.jpg', 'kids', 1),
(42, 'Frock Bloomer Infant with Hairband-Green (Set of 3)', 44, 'Description\r\nBownbee frock bloomer infant set with hairband- green\r\nProduct Details\r\nMaterial:Cotton\r\nPattern:Printed\r\nOccasion:Casual\r\nType of Work:Printed', 'images/kids-9.jpg', 'kids', 1),
(43, 'STEVEN’S TODDLER BOYS SETS', 50, 'Material: COTTON\r\nGender: Boys\r\nAge Range: 7-12m\r\nAge Range: 13-24m\r\nAge Range: 25-36m\r\nAge Range: 4-6y\r\nStyle: Fashion\r\nSeason: Summer\r\nCollar: Turn-down Collar', 'images/kids-10.jpg', 'kids', 1),
(44, ' DENIM BEAR OVERALLS COLLECTION', 34, 'Let\'s have some fun with this adorable cotton polyester blend denim overall jumpsuit that\'s stylish and oh so fashionable. Dress up or down and have fun with this bear denim collection. ', 'images/kids-11.jpg', 'kids', 1),
(45, 'AJ DEZINES Boys\' Clothing', 35, 'Care Instructions: Normal Wash\r\n𝗙𝗮𝗯𝗿𝗶𝗰 𝗗𝗲𝗮𝘁𝗮𝗶𝗹𝘀 : Shirt - Cotton Blend, Jeans - Denim, Jacket - Denim. Soft and Comfortable For Kids, Cotton is both natural and easy on the skin, Cotton donot rash kids skin.\r\nPackage Contents- Shirt, Jeans and Jacket', 'images/kids-12.jpg', 'kids', 1),
(46, 'Boys Green Blazer with Attached T-Shirt and Pant Set', 68, 'Fit Type: Regular\r\nT-Shirt and Pant Set\r\nMaterial is Cotton\r\nColour is Green and white', 'images/kids-13.jpg', 'kids', 1),
(47, 'Aarika Georgette Dress', 0, 'Care Instructions: Machine Wash\r\nFit Type: Regular\r\nMaterial: Georgette\r\nRound neck\r\nCeremony wear\r\nMachine wash', 'images/kids-14.jpg', 'kids', 1),
(48, 'ULTRA TREND Girl\'s A-Line Knee Length Dress', 55, 'Care Instructions: Dry Clean Only\r\nFit Type: Regular\r\nWestern Wear\r\nLightweight\r\nGood quality\r\nUnique design\r\nBest Price', 'images/kids-15.jpg', 'kids', 1),
(49, 'Silver Ethnic Handcrafted Mirror Work Choker Necklace For Women', 20, 'Fida Silver Sheesh Mahal Mirror Choker Necklace for Women. The Perfect Gift : Ideal for the Woman who loves products that are Handmade In India and artisinal. All occassion jewelery for through out the year from Valentines Day ,a Special Birthday or an Anniversary gift for your specia', '	 images/accessories-2.jpg', 'accessories\r\n', 1),
(50, 'Silver Double Link Chain Necklace', 34, 'This necklace is perfect if you\'re looking for a timeless chain that will make a statement, yet go with everything in your closet. Style this versatile piece with your favorite denims or your go-to LBD to complete your look.', 'images/accessories-3.jpg', 'accessories', 1),
(51, 'Gold-Toned Elegant Finger Ring Set', 25, 'Showcasing a chic design, this pair of gold-toned elegant finger ring set from Pipa Bella is sure to make a style statement. This piece is very light in weight and exudes an attractive design that will accentuate your look. Grab attention by styling this beauty with a slit kurta, palazzo, and cone heel.', 'images/accessories-4.jpg', 'accessories', 1),
(52, 'Hiara Jewels 925 Sterling silver Queenly solitaire', 50, 'The Queenly Solitaire ring features the tiny Swarovski stones which are embedded in the band whereas a round Swarovski crystal is studded in the centre making it look alluring. The classy appeal of the ring makes it more desirable.', 'images/accessories-5.jpg', 'accessories', 1),
(53, 'Hiara Jewels 925 Sterling silver Le amour', 60, 'Specially created for a charming and ever-luminescent statement, the Le Amour Cubic Zirconia Ring will add a certain allure to the hands. Propose with the Halo beauty as an Engagement Ring or wear this exclusive piece as the daily statement jewellery.\r\n', 'images/accessories-6.jpg', 'accessories', 1),
(54, 'Silver Sterling Silver Earrings', 90, 'the Bella luce solitaire stud is embedded with the tiny zirconia crystals all over, giving it anelegant look. The pair of the earring is made of sterling silver and a zirconia stone is placed in the epicentre', 'images/accessories-7.jpg', 'accessories', 1),
(55, 'Silver Sterling Silver Earrings', 100, 'Adding additional sparkle while still being comfortable for everyday wear, the svelte quad stud earring feature cleverly positioned white Zirconia that complements the design perfectly.', 'images/accessories-8.jpg', 'accessories', 1),
(56, 'Hiara Jewels The Hollow Heart Necklace', 100, 'The Dainty hollow heart necklace is the perfect look with a subtle glimmer. It is striking and minimal all at once. Studded with stunning 5A grade cubic zirconia set on 925 sterling silver. The hollow heart is a perfect show of love to a loved one or ourselves.', 'images/accessories-9.jpg', 'accessories', 1),
(57, 'Sterling Silver Two Hearts One Soul Bracelet P19B0278', 60, 'Once in a while, a love comes to you which makes your heart rejoice with happiness. it seems as if both your souls are one. this sterling silver bracelet is inspired by this romantic thought. two delicate hearts are intertwined in a warm embrace. wear this bracelet for a date night with a feminine dress. gift this bracelet as a valentines gift to your better half.', 'images/accessories-10.jpg', 'accessories', 1),
(58, 'Sterling Silver Mother Of Pearl Bracelet', 80, 'An eye catchy flower motif made from mother of pearl is combined with multigrain on it\'s borders. a flower\'s most gorgeous look is depicted here with a full bloom flower. gift this bracelet to the flower of your life, who makes everything better with her presence. pair the bracelet with other delicate sterling silver bracelets for a chic look.', 'images/accessories-11.jpg', 'accessories', 1),
(59, 'Sterling Silver Mother\'s Love Charm platted in Yellow Gold', 120, 'A mother\'s love knows no bounds. Her heart is the purest of them all. This sterling Silver heart Pendant with \'Mom\' engraved on it is the best way to show your love towards your mom. The versatility of the Pendant makes this a great gift for a new mom as well!', 'images/accessories-12.jpg', 'accessories', 1),
(60, 'Delicate Butterfly Earrings platted in Yellow Gold.', 44, 'The majestic butterfly has been the epitome of change, hope and a beautiful life. A delicate sterling silver butterfly is paired with a long chain and at the bottom a prominent diamond stud to complete the look.', 'images/accessories-13.jpg', 'accessories', 1),
(61, 'Sterling Silver Geometry Drop Earrings for women', 79, 'Store the jewellery in GIVA Jewellery box provided by us, or in plastic ziplock bag. Prevent contact from Perfumes, Soaps, Water, Humidity, Moisture, Extreme temperature or anything acidic.', 'images/accessories-14.jpg', 'accessories', 1),
(62, 'Sterling Silver Dare To Dazzle Earrings ', 99, 'Create a stellar impression by flaunting these stud earrings from Praavy. Fashioned in sterling silver, these earrings feature silver plating with an unique design. Pair these with a floral maxi dress and stilettos to finish off the ensemble.', 'images/accessories-15.jpg', 'accessories', 1),
(63, 'Sterling Silver Rhomb Couple Band Adjustable Ring for Men & Women', 120, 'This Silver Zircon Curl Ring has been handcrafted with love, especially for YOU! With dazzling zircons nestled in a curled sterling silver frame, this ring emanates love and calm.', 'images/accessories-16.jpg', 'accessories', 1),
(64, 'Sterling Silver Classic Couple Band Adjustable Ring for Men & Women ', 150, 'Store the jewellery in GIVA Jewellery box provided by us, or in plastic ziplock bag. Prevent contact from Perfumes, Soaps, Water, Humidity, Moisture, Extreme temperature or anything acidic.', 'images/accessories-17.jpg', 'accessories', 1),
(65, 'Matte Attack Transferproof Lipstick\r\n', 20, 'For red carpet ready, \'ooh là là’ lips, look no further than our SUGAR Matte Attack Transferproof Lipsticks that are now available in new highly pigmented bold and edgy shades to give your lips some love and a oomph factor with every swipe.\r\n\r\n', 'images/cosmetic-2.jpg', 'cosmetic', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `p_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
