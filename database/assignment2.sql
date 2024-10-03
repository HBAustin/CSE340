-- Record for Tony

INSERT INTO account (first_name, last_name, email, password)
VALUES ('Tony', 'Stark', 'tony@starknet.com', 'Iam1ronM@n');

-- set account type

UPDATE account
SET account_type = 'Admin'
WHERE email = 'tony@starknet.com';

-- delete record

DELETE FROM account
WHERE email = 'tony@starknet.com';

-- update description

UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE make 'GM' AND model = "Hummer";

-- category

SELECT i.make, i.model, c.classification_name
FROM inventory i
INNER JOIN classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

-- update records

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');