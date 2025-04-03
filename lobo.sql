CREATE TABLE rooms(room_id INT NOT NULL, room_type VARCHAR(50), price_per_night INT,label VARCHAR(50), PRIMARY KEY(room_id)); 
-- room id format will be like 4444 , 7777, 8888, 9090, 4030
-- room label -- executive, deluxe, regular, business suite

CREATE TABLE roomBookings(booking_id INT NOT NULL AUTO_INCREMENT, client_name VARCHAR(100), client_email VARCHAR(100), phone_number VARCHAR(15), number_of_nights INT, room INT, checkin_date DATE, booking_status VARCHAR(50), PRIMARY KEY(booking_id), FOREIGN KEY(room) REFERENCES rooms(room_id) );

CREATE TABLE spots(spot_id VARCHAR(20) NOT NULL, capacity_range VARCHAR(20), price INT, label VARCHAR(100), PRIMARY KEY(spot_id));
-- spot id - use animal names e.g. kangaroo, kifau, twiga
-- spot labels - family , conference, friends, cooperate, wedding hall

CREATE TABLE spotBookings(booking_id INT NOT NULL AUTO_INCREMENT, client_name VARCHAR(100), client_email VARCHAR(100), phone_number VARCHAR(15), checkin_datetime DATETIME, meals VARCHAR(60), spot VARCHAR(20) , PRIMARY KEY(booking_id), FOREIGN KEY (spot) REFERENCES spots(spot_id));

-- meals - breakfast, lunch, dinner, breakfast-lunch, lunch-dinner, breakfast-dinner, all

CREATE TABLE reviews(review_id INT NOT NULL AUTO_INCREMENT, service_type VARCHAR(20), comment TEXT, rating INT, PRIMARY KEY(review_id));
-- service type - room or spot