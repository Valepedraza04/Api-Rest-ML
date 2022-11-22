INSERT INTO tbl_categories(id, name) VALUES(1, 'shoes');
INSERT INTO tbl_categories(id, name) VALUES(2, 'books');
INSERT INTO tbl_categories(id, name) VALUES(3, 'electronics');

INSERT INTO tbl_products (id, create_at, descripcion,name,precio,status,stock,category_id)
VALUES (1,'2022-11-15','Walk in the air in the black','adidas Cloudfoam Ultimate',178.89,'CREATED',5,1);

INSERT INTO tbl_products (id, create_at, descripcion,name,precio,status,stock,category_id)
VALUES (2,'2022-11-15','Libro de fantasía','Harry Potter',150.67,'CREATED',10,2);

INSERT INTO tbl_products (id, create_at, descripcion,name,precio,status,stock,category_id)
VALUES (3,'2022-11-15','Computador de 14 pulgadas','Lenovo',800,'CREATED',3,3);