USE myshoppingcart10;

CREATE TABLE `products_backup` (
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

INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (1, 'Air Zoom Pegasus Field', '[\"L\", \"XL\"]', '$', 'USD', 'Yeah cover anything where.', 12, FALSE, 34.62, 6749333138242647, 'Lifestyle', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (2, 'Zoom Freak Relate', '[\"S\", \"M\"]', '$', 'USD', 'Land subject charge training.', 5, TRUE, 74.71, 3483689833213557, 'Running', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (3, 'Zoom Freak Usually', '[\"L\"]', '€', 'USD', 'Kid write rock deep whether focus.', 6, TRUE, 147.33, 3387716182865695, 'Basketball', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (4, 'Air Max Available', '[\"S\", \"M\"]', '€', 'USD', 'Expect kitchen sometimes here.', 1, TRUE, 80.23, 6507531001369779, 'Training', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (5, 'React Infinity Employee', '[\"M\"]', '£', 'USD', 'Style despite song.', 10, FALSE, 77.13, 3967958609513460, 'Training', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (6, 'Air Zoom Pegasus Art', '[\"M\"]', '€', 'USD', 'Building evidence new consumer computer.', 11, FALSE, 200.0, 4921238673837970, 'Basketball', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (7, 'Joyride Dual Run Recent', '[\"XL\"]', '€', 'USD', 'Food write base career provide tax here.', 4, FALSE, 88.02, 1871189985308874, 'Lifestyle', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (8, 'Air Max Recognize', '[\"XL\"]', '€', 'USD', 'Sing guess record nature economic short.', 5, FALSE, 36.23, 8178727557355517, 'Basketball', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (9, 'Air Max The', '[\"L\"]', '£', 'USD', 'So Republican art pull prepare home.', 7, TRUE, 169.85, 3236404180387863, 'Running', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (10, 'Zoom Freak Whom', '[\"M\"]', '£', 'USD', 'Behind certainly instead onto.', 4, TRUE, 84.67, 3130849169796182, 'Sportswear', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (11, 'React Infinity Who', '[\"M\", \"L\", \"XL\"]', '£', 'USD', 'Article painting reveal focus customer lead.', 8, TRUE, 27.02, 4580687382842263, 'Lifestyle', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (12, 'Air Max Suddenly', '[\"S\", \"M\"]', '£', 'USD', 'Health determine bad former far hope level.', 9, TRUE, 89.01, 2407922629937017, 'Sportswear', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (13, 'Air Max Place', '[\"M\"]', '$', 'USD', 'Point hard democratic.', 10, TRUE, 148.74, 9772446602091259, 'Casual', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (14, 'Zoom Freak Quite', '[\"XL\"]', '€', 'USD', 'Stop themselves education.', 12, TRUE, 29.31, 4186257828675016, 'Sportswear', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (15, 'Nike Revolution Politics', '[\"S\"]', '$', 'USD', 'Recently crime learn individual high education.', 7, FALSE, 48.47, 8437314266335120, 'Casual', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (16, 'Joyride Dual Run Statement', '[\"S\"]', '$', 'USD', 'Protect too she apply art.', 10, TRUE, 133.52, 8480233583927255, 'Training', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (17, 'Air Zoom Pegasus Cup', '[\"XL\"]', '$', 'USD', 'Ground remain business election able himself possible.', 2, TRUE, 164.37, 4846221223465465, 'Basketball', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (18, 'Zoom Freak Against', '[\"L\", \"XL\"]', '£', 'USD', 'Break case school human.', 8, TRUE, 180.95, 3365590934269076, 'Basketball', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (19, 'Zoom Freak World', '[\"XS\"]', '£', 'USD', 'Create party occur chair before stage.', 1, TRUE, 67.89, 3518561791039078, 'Running', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (20, 'Nike Revolution Half', '[\"L\"]', '£', 'USD', 'Strong pass age music.', 3, TRUE, 80.12, 5964405285660510, 'Casual', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (21, 'Joyride Dual Run Quite', '[\"S\", \"M\"]', '$', 'USD', 'Prepare like environmental beautiful himself same tough.', 10, FALSE, 80.24, 7331142036479682, 'Lifestyle', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (22, 'React Infinity Situation', '[\"L\", \"XL\"]', '$', 'USD', 'Guy provide commercial.', 12, FALSE, 112.48, 9767161988904715, 'Training', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (23, 'React Infinity Yeah', '[\"S\", \"M\", \"L\"]', '£', 'USD', 'Voice white modern drop.', 4, FALSE, 51.37, 5732453093792023, 'Casual', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (24, 'Zoom Freak Onto', '[\"S\"]', '£', 'USD', 'Mind financial list save energy cause.', 1, TRUE, 60.27, 2761439625395390, 'Sportswear', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (25, 'Air Max Adult', '[\"XL\"]', '€', 'USD', 'Good between he really current expect hope population.', 6, TRUE, 95.55, 2236464957554056, 'Training', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (26, 'Nike Revolution Large', '[\"S\", \"M\"]', '€', 'USD', 'Discover total less bank pay media long.', 1, TRUE, 81.37, 6488277722248450, 'Basketball', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (27, 'Air Zoom Pegasus Beat', '[\"L\", \"XL\"]', '€', 'USD', 'Between human order certainly guy investment himself.', 2, TRUE, 151.9, 7177043865405518, 'Sportswear', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (28, 'React Infinity Onto', '[\"L\", \"XL\"]', '£', 'USD', 'Cause investment class.', 6, TRUE, 46.1, 3195005394707088, 'Sportswear', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (29, 'Air Zoom Pegasus Remain', '[\"XL\"]', '$', 'USD', 'People center happy speak.', 1, FALSE, 85.79, 6353518113185921, 'Training', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (30, 'Zoom Freak Late', '[\"S\"]', '$', 'USD', 'Leader meeting decide region cultural.', 3, FALSE, 74.47, 5967261199484208, 'Training', TRUE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (31, 'Zoom Freak Line', '[\"L\", \"XL\"]', '£', 'USD', 'Likely base if everyone final board risk.', 6, FALSE, 171.18, 8754990331235879, 'Running', FALSE);
    
INSERT INTO products_backup (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
VALUES (32, 'Nike Revolution Produce', '[\"S\"]', '€', 'USD', 'Provide draw apply boy reach born.', 6, FALSE, 30.96, 3456351923697884, 'Casual', FALSE);
