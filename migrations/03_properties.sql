CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,

  title VARCHAR (255) NOT NULL,
  description text,
  thumbnail_photo_url text NOT NULL,
  cover_photo_url text NOT NULL,
  cost_per_night integer NOT NULL DEFAULT 0,
  parking_spaces integer NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER NOT NULL DEFAULT 0,

  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  provinc11e VARCHAR(255) NOT NULL,
  post_code VARCHAR(225) NOT NULL,

  active BOOLEAN DEFAULT TRUE
);