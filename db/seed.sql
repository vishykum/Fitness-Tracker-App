-- seed.sql

USE ftdb;

-- Create a test user, the password is 'testpass'
INSERT INTO `users` (`username`, `password`) VALUES 
('test', '$2b$12$8yR4FcNINkh3NAdBmalUHeZSRbCUXKrDSHvUpkBm1uG/23T7r1a62');

-- Inserts test bodyfat and musclemass data for the user 'test'
-- The data is generated for the dates from 2025-03-29 to 2025-04-07

INSERT INTO `bodyfat` (`timestamp`, `username`, `value`) VALUES 
('2025-3-29', 'test', 15.5),
('2025-3-30', 'test', 15.4),
('2025-3-31', 'test', 15.3),
('2025-4-1', 'test', 15.2),
('2025-4-2', 'test', 15.1),
('2025-4-3', 'test', 15.0),
('2025-4-4', 'test', 14.9),
('2025-4-5', 'test', 14.8),
('2025-4-6', 'test', 14.7),
('2025-4-7', 'test', 14.6);

INSERT INTO `musclemass` (`timestamp`, `username`, `value`) VALUES 
('2025-3-29', 'test', 78.5),
('2025-3-30', 'test', 79.4),
('2025-3-31', 'test', 78.3),
('2025-4-1', 'test', 77.2),
('2025-4-2', 'test', 80.1),
('2025-4-3', 'test', 80.0),
('2025-4-4', 'test', 82.9),
('2025-4-5', 'test', 81.8),
('2025-4-6', 'test', 83.7),
('2025-4-7', 'test', 84.6);