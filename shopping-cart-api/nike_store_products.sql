use myshoppingcart10;

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `available_sizes` json DEFAULT NULL,
  `currency_format` varchar(5) DEFAULT NULL,
  `currency_id` varchar(5) DEFAULT NULL,
  `description` text,
  `installments` int DEFAULT NULL,
  `is_free_shipping` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sku` bigint DEFAULT NULL,
  `style` text,
  `released` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Air Max Court','[\"M\", \"L\", \"XL\"]','$','USD','Basketball shoe for high-performance on the court',101,1,130.00,1000000000000011,'Basketball',1),(2,'HyperDunk Pro','[\"S\", \"M\", \"L\"]','$','USD','Dynamic design for basketball enthusiasts',102,0,140.50,1000000000000012,'Basketball',1),(3,'Air Supreme','[\"M\", \"L\", \"XL\"]','$','USD','Premium basketball shoe with advanced grip',103,1,145.75,1000000000000013,'Basketball',1),(4,'Mercurial Speed','[\"S\", \"M\", \"L\", \"XL\"]','$','USD','Soccer shoe with sleek design for agility',104,1,110.99,1000000000000014,'Soccer',1),(5,'Phantom VSN','[\"XS\", \"S\", \"M\"]','$','USD','Yellow and black soccer shoe with dynamic style',105,1,105.45,1000000000000015,'Soccer',1),(6,'Superfly Elite','[\"S\", \"M\", \"L\"]','$','USD','Soccer shoe in pink and white, designed for speed',106,0,120.75,1000000000000016,'Soccer',1),(7,'Zoom Ascend','[\"M\", \"L\"]','$','USD','High-top basketball shoe for stability on the court',107,1,125.00,1000000000000017,'Basketball',1),(8,'Flight Club','[\"XS\", \"S\", \"M\", \"L\"]','$','USD','Modern design, perfect for high jumps and quick moves',108,0,135.99,1000000000000018,'Basketball',0),(9,'Vapor Edge Pro','[\"S\", \"M\", \"L\", \"XL\"]','$','USD','Lightweight soccer shoe with a comfortable fit',109,1,115.30,1000000000000019,'Soccer',1),(10,'Phantom GT2','[\"S\", \"M\", \"L\"]','$','USD','Advanced grip and control for soccer play',110,1,118.99,1000000000000020,'Soccer',1),(11,'Air VaporMax','[\"M\", \"L\", \"XL\"]','$','USD','Breathable basketball shoe with excellent cushioning',111,0,138.45,1000000000000021,'Basketball',1),(12,'LeBron Soldier','[\"XS\", \"S\", \"M\"]','$','USD','Bold design with stability for basketball players',112,1,147.00,1000000000000022,'Basketball',1),(13,'React Gato','[\"S\", \"M\", \"L\"]','$','USD','Ideal for street soccer, durable and flexible',113,1,105.50,1000000000000023,'Soccer',1),(14,'Tiempo Legend','[\"S\", \"M\", \"L\", \"XL\"]','$','USD','Classic soccer shoe with modern performance',114,0,112.80,1000000000000024,'Soccer',1),(15,'HyperAdapt','[\"M\", \"L\", \"XL\"]','$','USD','Innovative design with adaptive fit technology',115,1,149.99,1000000000000025,'Basketball',1),(16,'Phantom Venom','[\"S\", \"M\"]','$','USD','Optimized for precision and control in soccer',116,1,99.75,1000000000000026,'Soccer',1),(17,'Zoom Freak 2','[\"XS\", \"S\", \"M\", \"L\"]','$','USD','High-performance basketball shoe with bold styling',117,1,129.99,1000000000000027,'Basketball',1),(18,'Flyknit Ultra','[\"M\", \"L\"]','$','USD','Lightweight soccer shoe with superior flexibility',118,0,120.00,1000000000000028,'Soccer',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 12:56:24