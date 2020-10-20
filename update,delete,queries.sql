SELECT *
FROM developers;

SELECT *
FROM developers e
WHERE e.id = 34;


SELECT *
FROM developers e,
(SELECT *
FROM website_roles a
WHERE a.website_id = 234) AS subquery1;
WHERE e.id = subquery1.developer_id AND subquery1.role = 'admin' OR 'editor';

SELECT *
FROM developers f,
(SELECT *
FROM page_roles a,
(SELECT *
FROM page 
WHERE page.view < 300000 ) AS subquery2
WHERE a.page_id = subquery2.id AND a.role = 'reviewer' ) AS subquery3
WHERE f.id = subquery3.developer_id;


SELECT *
FROM developer f,
(SELECT *
FROM page_roles p,
(SELECT *
FROM widgets a
WHERE a.page_id = 123 AND a.type = 'heading') AS subquery4
WHERE p.page_id = subquery4.page_id) AS subquery5
WHERE subquery5.page_id = f.id;


SELECT *
  MIN(visit)
FROM websites

SELECT name 
FROM websites 
WHERE id = 678

SELECT *
FROM website w,
(SELECT *
FROM page_roles p,
(SELECT *
FROM widgets s
WHERE s.dtype = 'youtube') AS subquery7
WHERE p.website_id = subquery7.website_id AND p.role = 'reviwer' AND p.developer_id = 23) AS subquery6
WHERE w.id = subquery6.website_id; 

SELECT *
FROM websites w,
(SELECT *
FROM website_roles a
WHERE a.developer_id = 12 AND a.role = 'owner') AS subquery8
WHERE subquery8.id = w.id;

SELECT *
FROM websites w,
(SELECT *
FROM website_roles a
WHERE a.developer_id = 34 AND a.role = 'admin') AS subquery9
WHERE subquery8.id = w.id AND w.visits > 6000000;


SELECT *
FROM pages p
WHERE MAX(p.view);

SELECT p.title 
FROM pages p 
WHERE p.id = 234;

SELECT *
FROM pages g, 
(SELECT *
FROM page_roles p
WHERE p.role = 'editor' ) AS subquery9
WHERE g.id = 12; 

SELECT views
  SUM(views)
FROM pages,
(SELECT *
FROM page_roles p
WHERE p.website_id = 567) AS subquery10
WHERE pages.website_id = subquery10.website_id;

SELECT views
  AVER(views)
FROM pages,
(SELECT *
FROM page_roles p
WHERE p.website_id = 345) AS subquery11
WHERE pages.website_id = subquery11.website_id;

SELECT *
FROM widgets w
WHERE w.page_id = 123;

SELECT *
FROM widgets w, 
(SELECT *
FROM pages p
WHERE p.website_id = 456) AS subquery12
WHERE w.page_id = subquery12.id AND w.dtype = 'youtube';

SELECT *
FROM websites s,
(SELECT *
FROM website_priviledges w
WHERE w.developer_id = 23 AND w.priviledge = 'delete') AS subquery13
WHERE subquery13.website_id = s.id; 


SELECT *
FROM pages s,
(SELECT *
FROM page_priviledges w
WHERE w.developer_id = 34 AND w.priviledge = 'create') AS subquery14
WHERE subquery14.website_id = s.id; 

UPDATE phones p
SET p.phone = '333-444-5555' 
WHERE phones.phones_developer_id = 34 AND phones.primary = 1; 

UPDATE widgets w
SET w.order = 3
WHERE w.id = 345;

UPDATE widgets w
SET w.order = 1
WHERE w.id = 456;

UPDATE widgets w
SET w.order = 2
WHERE w.id = 567;

UPDATE pages p
SET p.title = 'CNET' 
WHERE p.website_id = 567;

UPDATE page_roles p
SET p.role = 'editor'
WHERE p.developer_id = 23 AND p.page_id = 123;

UPDATE page_roles p
SET p.role = 'reviewer'
WHERE p.developer_id = 34 AND p.page_id = 123;





DELETE FROM address a
WHERE a.developer_id = 12 AND a.primary = 1;

DELETE FROM widgets w
WHERE w.page_id = 345 AND w.order = 3;


DELETE FROM websites w
WHERE w.id = 567;




