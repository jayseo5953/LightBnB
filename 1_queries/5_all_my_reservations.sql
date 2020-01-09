SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM properties
JOIN reservations
ON properties.id = property_id
JOIN property_reviews
ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 4 AND end_date < now():: date
GROUP BY properties.id,reservations.id
ORDER BY start_date DESC
LIMIT 10

