DROP TABLE IF EXISTS bounties;

CREATE TABLE bounties(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  species VARCHAR(255),
  bounty_value INT2,
  last_known_location VARCHAR(255)
);











-- DROP TABLE IF EXISTS pizza_orders;
--
-- CREATE TABLE pizza_orders(
--   id SERIAL8 PRIMARY KEY,
--   first_name VARCHAR(255),
--   last_name VARCHAR(255),
--   topping VARCHAR(255),
--   quantity INT2
-- );
