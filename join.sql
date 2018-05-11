SELECT 
	p.id,
	p.title,
	c.category
 FROM 
	categories c, 
	posts p, 
    posts_category_link pc
where 
	p.id = pc.pid and 
    c.id = pc.cid;
    
    
SELECT 
	u.firstname,
	p.title
 FROM 
	users u, 
	posts p
where 
	u.id = p.uid;
    
    
SELECT 
	u.firstname,
	c.category
FROM 
	categories c, 
	users u,
    posts_category_link pc,
	posts p
where 
	u.id = p.uid and
	p.id = pc.pid and 
    c.id = pc.cid;   
    
    
SELECT 
	p.id,
	p.title,
	c.category
 FROM 
	posts p
JOIN
    posts_category_link pc
	ON p.id = pc.pid
JOIN
	categories c
    ON c.id = pc.cid;
   
   
SELECT 
	u.firstname,
	p.title
 FROM 
	users u
JOIN
	posts p
	ON u.id = p.uid;

SELECT 
	u.firstname,
	c.category
FROM 
	users u
JOIN
	posts p
    ON u.id = p.uid
JOIN
	posts_category_link pc
    ON p.id = pc.pid
JOIN
	categories c
    ON c.id = pc.cid;
	
    