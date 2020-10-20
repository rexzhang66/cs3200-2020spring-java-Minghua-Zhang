CREATE VIEW `developer_roles_and_priviledges` AS
SELECT e.firstname, e.lastname, e.username, e.email, a.name, a.visits, a.updated,
b.role, c.priviledge, d.title, d.veiws, d.updated, g.role, f.priviledge
FROM persons e, websites s, website_role b, website_priviledges c, pages d, page_roles g, page_priviledges f
WHERE e.id = s.developer_id AND e.id = b.developer_id AND e.id = c.developer_id AND s.id = d.website_id AND e.id = g.developer_id AND e.id = f.developer_id;