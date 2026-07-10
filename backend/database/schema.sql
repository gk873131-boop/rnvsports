-- RNV Sports Database Schema
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS tbl_category (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL,
  category_slug VARCHAR(255) UNIQUE,
  category_number INT DEFAULT 0,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_brand (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  slug VARCHAR(255) UNIQUE,
  image VARCHAR(500),
  description TEXT,
  seo_title VARCHAR(255),
  seo_description TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_product (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  product_slug VARCHAR(255) UNIQUE,
  product_code VARCHAR(100),
  category_id INT,
  brand_id INT,
  regular_price DECIMAL(10,2),
  sale_price DECIMAL(10,2),
  discount_price DECIMAL(10,2),
  featured_image VARCHAR(500),
  size_chart VARCHAR(500),
  gst INT DEFAULT 5,
  shipping_price DECIMAL(10,2) DEFAULT 0,
  opening_stock INT DEFAULT 0,
  special TINYINT DEFAULT 0,
  featured_product TINYINT DEFAULT 0,
  new_arraival TINYINT DEFAULT 0,
  category_list TINYINT DEFAULT 0,
  short_description TEXT,
  description LONGTEXT,
  specification LONGTEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES tbl_category(category_id) ON DELETE SET NULL,
  FOREIGN KEY (brand_id) REFERENCES tbl_brand(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_product_gallery (
  gallery_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  image VARCHAR(500),
  status TINYINT DEFAULT 1,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_price (
  price_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  age VARCHAR(100),
  regular_price DECIMAL(10,2),
  price DECIMAL(10,2),
  update_date DATE,
  price_status TINYINT DEFAULT 1,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_color (
  color_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  color_name VARCHAR(100),
  color VARCHAR(500),
  status TINYINT DEFAULT 1,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_customer (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_fname VARCHAR(100),
  customer_lname VARCHAR(100),
  customer_email VARCHAR(255) UNIQUE,
  customer_password VARCHAR(255),
  customer_password1 VARCHAR(255),
  customer_mobile VARCHAR(20),
  customer_company VARCHAR(255),
  customer_address1 TEXT,
  apartment VARCHAR(255),
  customer_city VARCHAR(100),
  customer_pincode VARCHAR(20),
  customer_country VARCHAR(100) DEFAULT 'India',
  customer_state VARCHAR(100),
  gender VARCHAR(20),
  profile VARCHAR(500),
  customer_status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_cart (
  cart_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  product_id INT,
  product_qty INT DEFAULT 1,
  product_cookie VARCHAR(255),
  cart_price DECIMAL(10,2),
  size VARCHAR(100),
  size_id INT,
  product_color VARCHAR(100),
  color_id INT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_wishlist (
  wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  product_id INT,
  wishlist_qty INT DEFAULT 1,
  whislist_price DECIMAL(10,2),
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_order_management (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  order_no VARCHAR(50),
  client_name VARCHAR(255),
  user_id INT,
  product_id INT,
  qty INT,
  product_price DECIMAL(10,2),
  total_amt DECIMAL(10,2),
  payment_mode VARCHAR(50),
  address TEXT,
  order_status VARCHAR(50) DEFAULT 'Pending',
  date DATE,
  mobile VARCHAR(20),
  email VARCHAR(255),
  landmark VARCHAR(255),
  pin VARCHAR(20),
  state VARCHAR(100),
  company_name VARCHAR(255),
  city VARCHAR(100),
  payment_status TINYINT DEFAULT 0,
  invoice_number VARCHAR(50),
  ship_country VARCHAR(100) DEFAULT 'India',
  ship_fname VARCHAR(100),
  ship_lname VARCHAR(100),
  ship_company VARCHAR(255),
  ship_Address TEXT,
  ship_apartment VARCHAR(255),
  ship_city VARCHAR(100),
  ship_state VARCHAR(100),
  ship_zipcode VARCHAR(20),
  ship_email VARCHAR(255),
  ship_mobile VARCHAR(20),
  shipp_address TEXT,
  total_discount DECIMAL(10,2) DEFAULT 0,
  promo_id INT,
  size VARCHAR(100),
  product_color VARCHAR(100),
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_promo (
  promo_id INT AUTO_INCREMENT PRIMARY KEY,
  promo_code VARCHAR(100) UNIQUE,
  discount DECIMAL(10,2),
  expiry_date DATE,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_offer (
  offer_id INT AUTO_INCREMENT PRIMARY KEY,
  offer_type VARCHAR(100),
  expiry_date DATE,
  amount DECIMAL(10,2),
  discount DECIMAL(10,2),
  first_product INT,
  product_qty INT,
  rate_after_qty DECIMAL(10,2),
  attach_product INT,
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_home_banner (
  banner_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(500),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_left_banner (
  id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(500),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_right_banner (
  id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(500),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_extra_banner (
  extra_id INT AUTO_INCREMENT PRIMARY KEY,
  image VARCHAR(500),
  type INT DEFAULT 1,
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_blog (
  blog_id INT AUTO_INCREMENT PRIMARY KEY,
  blog_name VARCHAR(255),
  slug VARCHAR(255) UNIQUE,
  author_name VARCHAR(255),
  blog_image VARCHAR(500),
  short_des TEXT,
  blog_description LONGTEXT,
  seo_title VARCHAR(255),
  seo_description TEXT,
  blog_date DATE,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_service (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  image VARCHAR(500),
  description LONGTEXT,
  seo_title VARCHAR(255),
  seo_description TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_service_enquiry (
  id INT AUTO_INCREMENT PRIMARY KEY,
  service_id INT,
  name VARCHAR(255),
  email VARCHAR(255),
  number VARCHAR(20),
  location VARCHAR(255),
  message TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_adm_review (
  review_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  image VARCHAR(500),
  description TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_enquiry (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  subject VARCHAR(255),
  message TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_product_enquiry (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  name VARCHAR(255),
  email VARCHAR(255),
  number VARCHAR(20),
  address TEXT,
  message TEXT,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_newsletter (
  newsletter_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  status TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_video (
  id INT AUTO_INCREMENT PRIMARY KEY,
  video1 VARCHAR(500),
  video2 VARCHAR(500)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_employee (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  employee_name VARCHAR(255),
  employee_contact VARCHAR(20),
  employee_email VARCHAR(255),
  employee_type VARCHAR(50),
  user_id VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  employee_address TEXT,
  emp_status VARCHAR(20) DEFAULT 'Active',
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_department (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(255),
  printer_name VARCHAR(255),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_supplier (
  supplier_id INT AUTO_INCREMENT PRIMARY KEY,
  supplier_name VARCHAR(255),
  supplier_address TEXT,
  supplier_contact VARCHAR(20),
  supplier_email VARCHAR(255),
  contact_person VARCHAR(255),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_purchase (
  purchase_id INT AUTO_INCREMENT PRIMARY KEY,
  supplier_id INT,
  item_id INT,
  qty INT,
  rate DECIMAL(10,2),
  amount DECIMAL(10,2),
  purchase_date DATE,
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_location (
  location_id INT AUTO_INCREMENT PRIMARY KEY,
  location_name VARCHAR(255),
  latitude VARCHAR(100),
  longitude VARCHAR(100),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_pin (
  pin_id INT AUTO_INCREMENT PRIMARY KEY,
  pin_code VARCHAR(20),
  shipping_charge DECIMAL(10,2),
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_location_map (
  mapping_id INT AUTO_INCREMENT PRIMARY KEY,
  emp_id INT,
  location_id INT,
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tbl_delivery_assign (
  delivery_assign_id INT AUTO_INCREMENT PRIMARY KEY,
  pickup_employee_id INT,
  rider_employee_id INT,
  order_id INT,
  status TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
