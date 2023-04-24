CREATE TABLE category
(
   id INT PRIMARY KEY NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(100) NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL
)

CREATE TABLE currency
(
   id INT PRIMARY KEY NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(100) NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL
)

CREATE TABLE period
(
   id INT PRIMARY KEY NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(100) NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL
)

CREATE TABLE type_transaction
(
   id INT PRIMARY KEY NOT NULL,
   id_category INT NOT NULL,
   name VARCHAR(50) NOT NULL,
   description VARCHAR(100) NOT NULL,
   type VARCHAR(2) NOT NULL,
   font_color VARCHAR(10) NOT NULL,
   background_color VARCHAR(10) NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL,
   FOREIGN KEY (id_category) REFERENCES category(id)
)

CREATE TABLE [transaction]
(
   id INT PRIMARY KEY NOT NULL,
   id_currency INT NOT NULL,
   description VARCHAR(100) NOT NULL,
   amount decimal NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL,
   FOREIGN KEY (id_currency) REFERENCES currency(id)
)

CREATE TABLE type_transaction_transaction
(
   id INT PRIMARY KEY NOT NULL,
   id_type INT NOT NULL,
   id_period INT NOT NULL,
   id_transaction INT NOT NULL,
   description VARCHAR(100) NOT NULL,
   create_date datetime NOT NULL,
   modified_date datetime NULL,
   create_by_user datetime NOT NULL,
   modified_by_user datetime NULL,
   FOREIGN KEY (id_type) REFERENCES type_transaction(id),
   FOREIGN KEY (id_period) REFERENCES period(id),
   FOREIGN KEY (id_transaction) REFERENCES [transaction](id)
)