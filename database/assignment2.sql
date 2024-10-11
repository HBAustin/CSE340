-- Insert record

INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starknet.com', 'Iam1ronM@n');

-- Update account

UPDATE public.account
SET account_type = 'Admin'
WHERE account_email = 'tony@starknet.com';

-- Delete record

DELETE FROM public.account
WHERE account_email = 'tony@starknet.com';

-- Update record

UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- Select car

SELECT inv.inv_make, inv.inv_model, cls.classification_name
FROM public.inventory inv
INNER JOIN public.classification cls ON inv.classification_id = cls.classification_id
WHERE cls.classification_name = "Sport";

-- Update inventory

UPDATE public.inventory
SET inv_image = REPLACE(inv_image, 'public/images/', 'public/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, 'public/images/', 'public/images/vehicles/');