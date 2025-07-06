-- ===============================================
-- AirBnB Database Sample Data
-- File: seed_data.sql
-- Author: [Your Name]
-- Created: 2025-06-27
-- Description: Comprehensive sample data for AirBnB database
-- ===============================================

-- Clear existing data (in proper order to respect foreign keys)
DELETE FROM messages;
DELETE FROM reviews;
DELETE FROM payments;
DELETE FROM bookings;
DELETE FROM property_images;
DELETE FROM properties;
DELETE FROM users;

-- ===============================================
-- SAMPLE USERS DATA
-- ===============================================

INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Guests
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'James', 'Wilson', 'james.wilson@example.com', '$2a$10$rOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9c', '+12025551234', 'guest', '2024-01-15 08:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Sarah', 'Johnson', 'sarah.j@example.com', '$2a$10$sOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9d', '+14155559876', 'guest', '2024-01-20 14:22:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Michael', 'Brown', 'michael.b@example.com', '$2a$10$tOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9e', '+442071234567', 'guest', '2024-02-05 10:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Emily', 'Davis', 'emily.davis@example.com', '$2a$10$uOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9f', '+81312345678', 'guest', '2024-02-12 16:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'David', 'Wilson', 'david.wilson@example.com', '$2a$10$vOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9g', '+34612345678', 'guest', '2024-03-01 09:30:00'),

-- Hosts
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Robert', 'Martinez', 'robert.m@example.com', '$2a$10$xOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9i', '+12025551235', 'host', '2023-12-01 11:00:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'Jennifer', 'Brown', 'jennifer.b@example.com', '$2a$10$yOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9j', '+14155559877', 'host', '2023-11-15 15:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'James', 'Taylor', 'james.t@example.com', '$2a$10$zOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9k', '+442071234568', 'host', '2023-10-20 08:45:00'),

-- Admin
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'Admin', 'User', 'admin@airbnb.com', '$2a$10$fOiMz8Qv1YxKzV8wJH9aXOp7fKz3nJ2mL1qR9tS5uV6wX7yZ8aB9q', '+12025550000', 'admin', '2023-01-01 00:00:00');

-- ===============================================
-- SAMPLE PROPERTIES DATA
-- ===============================================

INSERT INTO properties (property_id, host_id, title, description, address, city, state_province, country, postal_code, latitude, longitude, price_per_night, bedrooms, bathrooms, max_guests, amenities, is_active, created_at) VALUES
-- Robert Martinez properties
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Cozy Downtown Apartment', 'Beautiful 2-bedroom apartment in the heart of downtown', '123 Main St', 'New York', 'NY', 'USA', '10001', 40.7128, -74.0060, 150.00, 2, 1, 4, '["WiFi", "Kitchen", "Washer", "Air conditioning"]', TRUE, '2023-12-05 10:30:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Luxury Penthouse Suite', 'Stunning penthouse with panoramic city views', '456 High St', 'New York', 'NY', 'USA', '10002', 40.7145, -74.0081, 350.00, 3, 2, 6, '["Pool", "Gym", "Parking", "Elevator"]', TRUE, '2024-01-20 15:45:00'),

-- Jennifer Brown properties
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'Beachfront Villa', 'Spectacular oceanfront villa with private beach access', '789 Beach Ave', 'Miami', 'FL', 'USA', '33139', 25.7617, -80.1918, 280.00, 4, 3, 8, '["Pool", "Beach access", "Gym", "Parking"]', TRUE, '2023-11-20 12:00:00'),

-- James Taylor properties
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'Mountain Cabin Retreat', 'Rustic log cabin nestled in the mountains', '101 Forest Rd', 'Aspen', 'CO', 'USA', '81611', 39.1911, -106.8175, 220.00, 2, 1, 4, '["Fireplace", "Hot tub", "Hiking trails", "BBQ grill"]', TRUE, '2023-10-25 14:15:00');

-- ===============================================
-- SAMPLE BOOKINGS DATA
-- ===============================================

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, adults, children, special_requests, created_at) VALUES
-- Confirmed bookings (past)
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2024-01-15', '2024-01-18', 450.00, 'completed', 2, 0, 'Please leave extra towels', '2024-01-10 14:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-02-01', '2024-02-07', 1680.00, 'completed', 4, 0, 'We will arrive late at night', '2024-01-25 16:45:00'),

-- Current bookings
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', '2024-06-25', '2024-06-30', 1100.00, 'confirmed', 2, 1, 'Need a crib for our baby', '2024-06-20 11:45:00'),

-- Future bookings
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-07-10', '2024-07-15', 1750.00, 'confirmed', 2, 0, 'Celebrating our anniversary', '2024-06-25 15:20:00'),

-- Pending bookings
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2024-08-01', '2024-08-04', 450.00, 'pending', 2, 0, NULL, '2024-06-27 14:20:00');

-- ===============================================
-- SAMPLE PAYMENTS DATA
-- ===============================================

INSERT INTO payments (payment_id, booking_id, amount, currency, payment_method, transaction_id, status, payment_date) VALUES
-- Completed payments
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a41', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 450.00, 'USD', 'credit_card', 'ch_1Ij2X12eZvKYlo2C', 'completed', '2024-01-10 14:35:00'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a42', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 1680.00, 'USD', 'stripe', 'pi_3Kj4X12eZvKYlo2C', 'completed', '2024-01-25 16:50:00'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a43', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 1100.00, 'USD', 'paypal', 'PAYID-12345678', 'completed', '2024-06-20 11:50:00'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a44', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 1750.00, 'USD', 'credit_card', 'ch_1Ij2X12eZvKYlo2D', 'completed', '2024-06-25 15:25:00'),

-- Pending payment
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a45', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 450.00, 'USD', 'credit_card', NULL, 'pending', NULL);

-- ===============================================
-- SAMPLE REVIEWS DATA
-- ===============================================

INSERT INTO reviews (review_id, property_id, user_id, booking_id, cleanliness_rating, accuracy_rating, communication_rating, location_rating, value_rating, comment, created_at) VALUES
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a51', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 5, 4, 5, 5, 4, 'Great location and very clean. The host was responsive and helpful throughout our stay.', '2024-01-20 10:15:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a52', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 4, 5, 4, 5, 4, 'Beautiful beachfront property with stunning views. Could use some kitchen upgrades but overall great stay.', '2024-02-10 14:30:00');

-- ===============================================
-- SAMPLE MESSAGES DATA
-- ===============================================

INSERT INTO messages (message_id, conversation_id, sender_id, recipient_id, message_text, is_read, sent_at) VALUES
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a61', 'g0eebc99-9c0b-4ef8-bb6d-6bb9bd380a62', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Hi Robert, what time is check-in for the apartment?', TRUE, '2024-01-12 09:30:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a62', 'g0eebc99-9c0b-4ef8-bb6d-6bb9bd380a62', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Hello James! Check-in is flexible between 3-7 PM. I''ll send you the door code closer to arrival.', TRUE, '2024-01-12 11:45:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a63', 'g0eebc99-9c0b-4ef8-bb6d-6bb9bd380a63', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'Do you have any restaurant recommendations near the villa?', TRUE, '2024-01-28 16:20:00');

-- ===============================================
-- SAMPLE PROPERTY IMAGES DATA
-- ===============================================

INSERT INTO property_images (image_id, property_id, image_url, caption, is_primary, upload_order) VALUES
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a71', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'https://example.com/images/nyc_apt1.jpg', 'Living room view', TRUE, 1),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a72', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'https://example.com/images/nyc_apt2.jpg', 'Kitchen area', FALSE, 2),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a73', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'https://example.com/images/miami_villa1.jpg', 'Beachfront view', TRUE, 1);

-- ===============================================
-- VERIFICATION AND SUMMARY
-- ===============================================

-- Check record counts
SELECT 'Users' as table_name, COUNT(*) as record_count FROM users
UNION ALL
SELECT 'Properties', COUNT(*) FROM properties
UNION ALL  
SELECT 'Bookings', COUNT(*) FROM bookings
UNION ALL
SELECT 'Payments', COUNT(*) FROM payments
UNION ALL
SELECT 'Reviews', COUNT(*) FROM reviews
UNION ALL
SELECT 'Messages', COUNT(*) FROM messages
UNION ALL
SELECT 'Property Images', COUNT(*) FROM property_images;

-- ===============================================
-- END OF SAMPLE DATA SCRIPT
-- ===============================================
