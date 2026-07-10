## Seat_availability

-- Problem: Seat Availability
-- Platform: Newton School
-- Topic: Self Join
-- Difficulty: Hard

## Problem

Find adjacent available seats that can be purchased together.

## Solution

SELECT
    a1.seat_number AS available_seat1,
    a2.seat_number AS available_seat2
FROM theater_seatmap sm
JOIN theater_availability a1
    ON sm.seat_number = a1.seat_number
JOIN theater_availability a2
    ON sm.seat_right = a2.seat_number
WHERE a1.is_available = 1
  AND a2.is_available = 1;
