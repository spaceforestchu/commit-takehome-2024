INSERT INTO
    "Restaurants" (
        "name",
        "description",
        "phoneNumber",
        "openingTime",
        "closingTime",
        "cuisine",
        "price",
        "location",
        "tables"
    )
VALUES
    (
        'La Sucre',
        'French restaurant with beautfiul desserts in a cozy setting. This restaurant''s french cuisine brings Paris right to your city.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'French',
        '$$$',
        'New York City',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        'McDonald''s',
        'This American classic features a variety of awesome burgers and sandwiches at an amazing price. Each location offers its own unique flare so it''s always worthwhile to make another trip.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '00:00:00',
        '24:00:00',
        'American',
        '$',
        'New York City',
        '{"twoPersonTables":5, "fourPersonTables":20, "eightPersonTables":0}' :: jsonb
    ),
    (
        'Doma Restaurant',
        '“Doma” means a cutting board in Korean and every food is coming from the cutting board. We prepare even a small dish with the best ingredients and reasonable prices to satisfy your food adventure. We offer a taste of authenthic Korean comfort food as known as Bunsik, so customers can taste the perfect home-cooked meal with high-quality at affordable prices. Our Doma chefs have exceptional skills with over thirty years of experience cooking in restaurants in Korea and New York. We obtain our ingredients locally and daily, ensuring that our food is as fresh as possible. Doma restaurant is located in Sunnyside in Queens, so people who don’t live in K-towns or who seek for well-prepared Korean food, can visit us for our delicious food and enjoy',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Korean',
        '$$',
        'Queens',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        'Mizu',
        'Brick walls & a display of sake bottles create a sleek setting for sushi & other Japanese dishes.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Japanese',
        '$$$',
        'Brooklyn',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        'De Mole',
        'This duo of mom-&-pop joints serves signature mole sauce & Mexican standards in a casual setting.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Mexican',
        '$$',
        'Queens',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        'Hero Thai (Formerly Three E Taste of Thai)',
        'This warm, colorful neighborhood eatery provides classic Thai cuisine, plus beer & wine.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Thai',
        '$$',
        'New York City',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        '3Greeks Grill',
        'High quality Greek Gyro and Souvlaki platters and sandwiches as well as other Greek specialty foods...',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Greek',
        '$$',
        'New York City',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    ),
    (
        'Roberta''s Pizza',
        'French restaurant with beautfiul desserts in a cozy setting. This restaurant''s french cuisine brings Paris right to your city.',
        CAST(
            1000000000 + floor(random() * 9000000000) AS bigint
        ),
        '10:00:00',
        '22:00:00',
        'Pizza',
        '$$',
        'New York City',
        '{"twoPersonTables":5, "fourPersonTables":5, "eightPersonTables":5}' :: jsonb
    );

INSERT INTO
    "Reservations" (
        "restaurantId",
        "firstName",
        "lastName",
        "phoneNumber",
        "time",
        "numGuests"
    )
SELECT
    "id",
    'Billy',
    'Taggart',
    CAST(
        1000000000 + floor(random() * 9000000000) AS bigint
    ),
    '2022-05-11 18:00:00',
    4
FROM
    "Restaurants"
FETCH FIRST
    ROW ONLY;

INSERT INTO
    "Reservations" (
        "restaurantId",
        "firstName",
        "lastName",
        "phoneNumber",
        "time",
        "numGuests"
    )
SELECT
    "id",
    'Will',
    'Kenney',
    CAST(
        1000000000 + floor(random() * 9000000000) AS bigint
    ),
    '2022-05-12 19:00:00',
    2
FROM
    "Restaurants"
FETCH FIRST
    ROW ONLY;