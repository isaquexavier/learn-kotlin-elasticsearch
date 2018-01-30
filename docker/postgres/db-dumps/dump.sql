--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE "user" (
  id        integer NOT NULL,
  user_name text NOT NULL
);

ALTER TABLE "user" OWNER TO app_rw;

ALTER TABLE ONLY "user"
  ADD CONSTRAINT user_pkey PRIMARY KEY (id);

CREATE TABLE tweet (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    message text NOT NULL,
    comment text NULL,
    user_id integer NOT NULL
);


ALTER TABLE tweet OWNER TO app_rw;

ALTER TABLE ONLY tweet
    ADD CONSTRAINT tweet_pkey PRIMARY KEY (id);

ALTER TABLE ONLY tweet
  ADD CONSTRAINT user_fkey FOREIGN KEY (user_id) REFERENCES "user"(id);

--
-- INSERTING DATA
--

INSERT INTO "user" VALUES ('1', 'User A');
INSERT INTO "user" VALUES ('2', 'User B');
INSERT INTO "user" VALUES ('3', 'User C');
INSERT INTO "user" VALUES ('4', 'User D');
INSERT INTO "user" VALUES ('5', 'User E');

--


INSERT INTO tweet VALUES (0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 0', 'content of the comment 0', 1);
INSERT INTO tweet VALUES (1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 1', 'content of the comment 1', 1);
INSERT INTO tweet VALUES (2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 2', 'content of the comment 2', 1);
INSERT INTO tweet VALUES (3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 3', 'content of the comment 3', 1);
INSERT INTO tweet VALUES (4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 4', 'content of the comment 4', 1);
INSERT INTO tweet VALUES (5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 5', 'content of the comment 5', 1);
INSERT INTO tweet VALUES (6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 6', 'content of the comment 6', 1);
INSERT INTO tweet VALUES (7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 7', 'content of the comment 7', 1);
INSERT INTO tweet VALUES (8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 8', 'content of the comment 8', 1);
INSERT INTO tweet VALUES (9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 9', 'content of the comment 9', 1);

INSERT INTO tweet VALUES (10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 10', 'content of the comment ', 2);
INSERT INTO tweet VALUES (11, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 11', 'content of the comment ', 2);
INSERT INTO tweet VALUES (12, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 12', 'content of the comment ', 2);
INSERT INTO tweet VALUES (13, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 13', 'content of the comment ', 2);
INSERT INTO tweet VALUES (14, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 14', 'content of the comment ', 2);
INSERT INTO tweet VALUES (15, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 15', 'content of the comment ', 2);
INSERT INTO tweet VALUES (16, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 16', 'content of the comment ', 2);
INSERT INTO tweet VALUES (17, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 17', 'content of the comment ', 2);
INSERT INTO tweet VALUES (18, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 18', 'content of the comment ', 2);
INSERT INTO tweet VALUES (19, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 19', 'content of the comment ', 2);

INSERT INTO tweet VALUES (20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 20', 'content of the comment ', 3);
INSERT INTO tweet VALUES (21, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 21', 'content of the comment ', 3);
INSERT INTO tweet VALUES (22, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 22', 'content of the comment ', 3);
INSERT INTO tweet VALUES (23, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 23', 'content of the comment ', 3);
INSERT INTO tweet VALUES (24, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 24', 'content of the comment ', 3);
INSERT INTO tweet VALUES (25, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 25', 'content of the comment ', 3);
INSERT INTO tweet VALUES (26, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 26', 'content of the comment ', 3);
INSERT INTO tweet VALUES (27, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 27', 'content of the comment ', 3);
INSERT INTO tweet VALUES (28, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 28', 'content of the comment ', 3);
INSERT INTO tweet VALUES (29, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 29', 'content of the comment ', 3);

INSERT INTO tweet VALUES (30, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 30', 'content of the comment ', 4);
INSERT INTO tweet VALUES (31, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 31', 'content of the comment ', 4);
INSERT INTO tweet VALUES (32, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 32', 'content of the comment ', 4);
INSERT INTO tweet VALUES (33, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 33', 'content of the comment ', 4);
INSERT INTO tweet VALUES (34, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 34', 'content of the comment ', 4);
INSERT INTO tweet VALUES (35, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 35', 'content of the comment ', 4);
INSERT INTO tweet VALUES (36, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 36', 'content of the comment ', 4);
INSERT INTO tweet VALUES (37, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 37', 'content of the comment ', 4);
INSERT INTO tweet VALUES (38, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 38', 'content of the comment ', 4);
INSERT INTO tweet VALUES (39, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 39', 'content of the comment ', 4);

INSERT INTO tweet VALUES (40, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 40', 'content of the comment ', 5);
INSERT INTO tweet VALUES (41, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 41', 'content of the comment ', 5);
INSERT INTO tweet VALUES (42, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 42', 'content of the comment ', 5);
INSERT INTO tweet VALUES (43, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 43', 'content of the comment ', 5);
INSERT INTO tweet VALUES (44, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 44', 'content of the comment ', 5);
INSERT INTO tweet VALUES (45, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 45', 'content of the comment ', 5);
INSERT INTO tweet VALUES (46, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 46', 'content of the comment ', 5);
INSERT INTO tweet VALUES (47, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 47', 'content of the comment ', 5);
INSERT INTO tweet VALUES (48, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 48', 'content of the comment ', 5);
INSERT INTO tweet VALUES (49, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'content of message 49', 'content of the comment ', 5);

--
-- PostgreSQL database dump complete
--