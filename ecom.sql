CREATE DATABASE ecom;
USE ecom;

CREATE TABLE `brand` (
  id int(11) NOT NULL,
  name varchar(40) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `catalog` (
  id int(11) NOT NULL,
  name VARCHAR(128) NOT NULL,
  parent_id INT(11) NOT NULL,
  sort_order TINYINT(4) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order` (
  id int(11) NOT NULL,
  transaction_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  qty int(11) NOT NULL,
  amount int(11) NOT NULL,
  data text,
  status tinyint(4) NOT NULL DEFAULT '0'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product` (
  id int(11) NOT NULL,
  catalog_id int(11) NOT NULL,
  brand_id int(11) NOT NULL,
  name varchar(100) NOT NULL,
  price int(11) NOT NULL,
  content text NOT NULL,
  discount int(11) NOT NULL,
  thumbnail varchar(255) NOT NULL,
  image_list text NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  view int(11) NOT NULL,
  instock tinyint(2) NOT NULL DEFAULT '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `transaction` (
  id int(11) NOT NULL,
  status tinyint(4) NOT NULL DEFAULT '0',
  user_id int(11) DEFAULT '0',
  user_name varchar(40) NOT NULL,
  user_email varchar(60) NOT NULL,
  user_phone varchar(11) NOT NULL,
  user_address varchar(255) NOT NULL,
  amount bigint(20) NOT NULL DEFAULT '0',
  message text,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  id int(11) NOT NULL,
  username varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  password_hash varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  password_reset_token varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  email varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  status smallint(6) NOT NULL DEFAULT '10',
  created_at int(11) NOT NULL,
  updated_at int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `brand`
  ADD PRIMARY KEY (id);

--
-- Indexes for table catalog
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (id),
  ADD KEY parent_id (parent_id);

--
-- Indexes for table order
--
ALTER TABLE `order`
  ADD PRIMARY KEY (id),
  ADD KEY transaction_id (transaction_id),
  ADD KEY product_id (product_id);

--
-- Indexes for table product
--
ALTER TABLE `product`
  ADD PRIMARY KEY (id),
  ADD KEY catalog_id (catalog_id),
  ADD KEY brand_id (brand_id);

--
-- Indexes for table transaction
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (id);

--
-- Indexes for table user
--
ALTER TABLE `user`
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY username (username),
  ADD UNIQUE KEY email (email),
  ADD UNIQUE KEY password_reset_token (password_reset_token);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table brand
--
ALTER TABLE `brand`
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table catalog
--
ALTER TABLE `catalog`
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table order
--
ALTER TABLE `order`
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table product
--
ALTER TABLE product
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table transaction
--
ALTER TABLE `transaction`
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table user
--
ALTER TABLE `user`
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

INSERT INTO brand VALUES (1,"DIEN THOAI");
INSERT INTO brand VALUES (2,"TAPLET");