# Api-Rest-ML
Proyecto desafio


Se realiza una arquitectura en lenguaje java, utilizando la herramienta SpringBoot para el desarrollo de un API REST en funcionamiento CRUD, con apoyo de una base de datos en memoria, a esto tenemos el postman con su respectiva configuración para interactuar como cliente.
La arquitectura que se implemento gracias a su diseño y funcionamiento, tiene la capacidad de soportar los requerimientos estipulados
Se usa para el funcionamiento de la misma los microservios, teniendo en cuenta esto se tienen las siguientes ventajas: 
VENTAJAS
Existe una separación del cliente/servidor, solo se comunican por un lenguaje en común, JSON
Si se debe refactorizar el backend o el frontend se puede hacer de forma independiente.
Con el API desarrollado se pueden ejecutar varios frontend
DESVENTAJA
Se debe implementar una propia infraestructura
En caso de tener varios servidores, se puede perder un poco el control de los mismos

BACKEND 
Para el funcionamiento de la aplicación se tiene en el primer servicio productos.

ENTITY: Donde definimos las categorias de la aplicación y los productos, con sus respectivos campos, como nombre, descripcion, etc, se usa la dependencia LOMBOK para generar getter setter y builder principalmente y mantener el código lo mas limpio posible. Alli podemos encontrar los MENSAJES DE ERROR, cuando existe un faltante en cualquier ingreso de parametros de pproducto

REPOSITORY: Donde encontramos el llamado a la lista de productos por medio de su categoria correspondiente

SERVICE: Nos encontramos con el service donde vamos a llamar las funciones a usar para el correcto funcionamiento de la aplicación
SERVICEIMPL: Con la implementación del service se define cada una de las funciones a usar con su respectivo return y su MANEJO DE RESPUESTAS en caso de no encontrar productos.

CONTROLLER: Tiene el respectivo consumo al @GET/@POST/@DELETE, que nos permiten el uso y la implementación del CRUD, con las respectivas validaciones de entrada (se valida si esta vacio), manejo de respuestas, donde existen excepciones en caso de no encontrar un producto (notfound, noContent)
Adicional a esto se tiene un consumo a una clase extra creada llamada ERRORMESAGGE, que nos va a permitir recibir el mensaje de error correspondiente para obtener una facil solución.

El aplicationproperties es convertido en .yml para poder obtener un funcionamiento por medio de Eureka que es un servicio rest que permite al resto de microservicios registrarse en su directorio, es un servicio que permite la conexión en spring cloud

Se tiene en cuenta la preferencia de cloud ya que se ofrecen mejores soluciones para gestionar los servidores virtuales, dependiendo del requerimiento, esta gestión no la puede brindar proveedores de cloud como lo es AWS

Por medio del postman se verifica el correcto funcionamiento del API
