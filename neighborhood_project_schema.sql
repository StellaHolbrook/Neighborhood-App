-- schema for final project cs-gy 6083 sql class

CREATE TABLE Users(
    user_id SMALLINT Primary Key,
    first_name varchar(64), 
    last_name varchar(64),
    email varchar(64),
    password varchar(32),
    profile_description text,
    profile_picture_url text, 
    registration_date date,
    last_access_date date
);

CREATE TABLE Memberships(
    membership_id SMALLINT,
    user_id SMALLINT, 
    block_id SMALLINT, 
    join_date date,
    status varchar(16),
    -- put text constraint on status
);

CREATE TABLE Hoods(
    hood_id SMALLINT, 
    name varchar(64),
    description text
);


CREATE TABLE Blocks(
    block_id SMALLINT,
    hood_id SMALLINT,
    name varchar(64),
    description text,
    center_latitude numeric,
    cneter_longitude numeric
);

CREATE TABLE Friendships(
    friendship_id uuid,
    user1_id SMALLINT,
    user2_id SMALLINT, 
    
);

CREATE TABLE Threads(
    thread_id uuid,
    message_id uuid 
);

CREATE TABLE Recipients(
    message_id uuid,
    user_id uuid
);

CREATE TABLE Neighbors(
    neighbor_id uuid,
    user_id SMALLINT,
    neighbor_user_id
);

CREATE TABLE UserLocations(
    -- what is a location here?
    user_id uuid,
    location_id SMALLINT
);