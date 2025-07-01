Quiero crear una nueva feature para poder aplicar cupones de descuento durante el proceso de checkout en el carrito de la compra

[Facilitador] Muchas gracias por la introducción. Comenzaremos explorando esta funcionalidad.

[Product Owner] ¿Podrías darme una breve descripción del objetivo de negocio para la funcionalidad de aplicar cupones de descuento en el checkout? ¿Cuál es el valor que se espera aportar?

A través de campañas de marketing daremos descuentos a usuarios, esto aumentará las ventas y esperamos obtener un beneficio mayor global por cantidad

[Facilitador] Excelente. Ahora, pasemos al siguiente rol.

[Developer] Desde una perspectiva técnica, ¿qué tipo de cupones de descuento planeas permitir? ¿Serán porcentuales, de cantidad fija, o ambos? ¿Existen restricciones en cuanto a productos específicos o categorías que puedan ser aplicados con cupones?

Descuentos porcentuales, aplicados a productos individualmente previamente seleccionados

[Facilitador] Gracias por la aclaración. Continuemos con el siguiente rol.

[QA] Para poder validar esta funcionalidad, es importante tener claridad sobre el comportamiento funcional esperado. ¿Cómo debe reaccionar el sistema si un cupon no es válido o ha expirado? ¿Qué mensajes de error deberían mostrarse al usuario en esos casos?

Se mostrará un mensaje de error y no se aplicará el cupón

[Facilitador] Entendido. Ahora volvamos al rol de Product Owner.

[Product Owner] Siguiendo con lo que hemos discutido, ¿podrías identificar algunos casos de uso principales para esta funcionalidad? ¿Qué pasos debe seguir un usuario para aplicar un cupón durante el proceso de checkout?

justo antes de pagar, aparecerá una opción para rellenar el cupón. Si este es válido, se mostrará el descuento que se aplicará así como el resultado total de haberlo aplicado

[Facilitador] Perfecto. Ahora, pasemos al siguiente rol.

[Developer] Gracias por la descripción. Ahora me gustaría profundizar en las reglas de negocio que regulan la aplicación de los cupones. Por ejemplo, ¿habrá límites en la cantidad de cupones que un usuario puede aplicar en una sola transacción? Además, ¿habrá algún requisito de usuario, como estar registrado o ser un usuario nuevo?

sólo se puede aplicar un cupón por pedido, no hay restricciones en cuanto a los usuarios

[Facilitador] Gracias por la aclaración. Vamos a continuar con el rol de QA.

[QA] Perfecto. Con base en lo que hemos discutido hasta ahora, es necesario definir los criterios de aceptación para esta funcionalidad. ¿Podrías ayudarme a estructurarlos en el formato Given-When-Then? Por ejemplo, un caso automático podría ser "Dado que un usuario tiene un cupón válido, cuando introduce el código del cupón y hace clic en aplicar, entonces el descuento se debe aplicar correctamente al total del pedido". ¿Qué otros criterios de aceptación consideras que son importantes?

te dejo a ti que generes los ejemplos

[Facilitador] Claro, aquí hay algunos ejemplos de criterios de aceptación utilizando el formato Given-When-Then:

Validar un cupón válido:

Dado que un usuario tiene un cupón válido,
Cuando introduce el código del cupón en el campo correspondiente y hace clic en aplicar,
Entonces el descuento debe aplicarse correctamente al total del pedido y se debe mostrar el nuevo total.
Cupón no válido:

Dado que un usuario introduce un código de cupón que no es válido,
Cuando hace clic en aplicar,
Entonces se debe mostrar un mensaje de error indicando que el cupón no es válido.
Cupón expirado:

Dado que un usuario introduce un código de cupón que ha expirado,
Cuando hace clic en aplicar,
Entonces se debe mostrar un mensaje de error indicando que el cupón ha expirado.
Aplicar más de un cupón:

Dado que un usuario ya ha aplicado un cupón válido a su pedido,
Cuando intenta introducir otro código de cupón,
Entonces se debe mostrar un mensaje indicando que sólo se puede aplicar un cupón por pedido.
Mostrar el descuento:

Dado que un usuario ha aplicado un cupón válido,
Cuando se aplica el descuento,
Entonces se debe mostrar el monto del descuento y el total actualizado del pedido.
[Facilitador] Ahora que hemos abordado los criterios de aceptación, volvamos al rol de QA para discutir cómo manejaremos los errores y validaciones. ¿Cómo debería el sistema manejar errores inesperados durante el proceso de validación del cupón, como problemas de comunicación con el servidor? ¿Qué mensajes se deberían mostrar al usuario?

Simplemente se muestra un mensaje de cupón no válido y se da la opción al usuario de que lo pueda cambiar

[Facilitador] Entendido. Ahora, cambiemos nuevamente al rol de Developer.

[Developer] Considerando todo lo discutido hasta ahora, me gustaría preguntar sobre los edge cases. ¿Hay algún escenario particular que crees que debería ser considerado, como el uso de cupones en productos en oferta o el comportamiento del sistema si el usuario intenta aplicar un código de cupón en una transacción de devolución o cambio?

Cuando se realiza una devolución, se hará por el importe total que el cliente ha pagado. El cupón se queda marcado como usado y no se podrá reutilizar

[Facilitador] Gracias por esa aclaración sobre el manejo de cupones en devoluciones. Esto también es importante para asegurar que las reglas de negocio sean claras.

[QA] Para cerrar, ¿hay algún otro aspecto que necesitemos discutir o definir? Por ejemplo, ¿tienes alguna preocupación sobre la integración de la funcionalidad de los cupones con otros sistemas o componentes de la aplicación?

Los cupones se crean en la herramienta de backoffice (nombre, descripción, porcentaje de descuento y fecha máxima de validez). Una vez creados se les podrá asignar a varios productos

[Facilitador] Gracias por esa información adicional sobre la herramienta de backoffice y cómo se gestionan los cupones. Esto es clave para alinear al equipo sobre el flujo de trabajo.

Con esto hemos cubierto muchos de los aspectos importantes para la funcionalidad de aplicar cupones de descuento. Si no hay más dudas o puntos que discutir, me gustaría hacer un resumen de lo conversado:

Resumen de la funcionalidad:
Funcionalidad: Implementar una funcionalidad para aplicar cupones de descuento durante el proceso de checkout en el carrito de la compra.

Objetivo de negocio: Aumentar las ventas mediante campañas de marketing que ofrezcan descuentos a los usuarios, logrando un beneficio mayor global por cantidad.

Reglas de negocio:

Descuentos porcentuales aplicados a productos individualmente seleccionados.
Solo se puede aplicar un cupón por pedido.
Los cupones son creados en una herramienta de backoffice, donde se especifican nombre, descripción, porcentaje de descuento y fecha máxima de validez. Pueden ser asignados a varios productos.
En caso de devolución, el cupón se marca como usado y no se puede reutilizar.
Casos principales:

Un usuario aplica un cupón válido y se muestra el nuevo total.
Un usuario intenta aplicar un cupón no válido y recibe un mensaje de error.
Un usuario intenta aplicar un cupón expirado y recibe un mensaje de error.
Un usuario ya ha aplicado un cupón y intenta aplicar otro, recibiendo un mensaje de advertencia.
Casos alternativos/errores:

Error inesperado durante la validación del cupón, mostrando mensaje de "cupón no válido".
Criterios de aceptación:

Dado que un usuario tiene un cupón válido, cuando lo aplica, se muestra el nuevo total.
Dado que un usuario introduce un código no válido, se muestra un mensaje de error.
Dado que un usuario introduce un código expirado, se muestra un mensaje de error.
Dado que un usuario ya aplicó un cupón, cuando intenta aplicar otro, se muestra un mensaje correspondiente.
Dado que se aplica un cupón válido, se muestra el descuento y el total actualizado.
Preguntas abiertas o ambigüedades identificadas:

No se han identificado ambigüedades relevantes en la conversación.
¿Hay algo más que te gustaría agregar o discutir?

todo correcto

[Facilitador] Perfecto, me alegra que estemos alineados. Si en el futuro tienes más preguntas o necesitas discutir más funcionalidades, no dudes en contactarme. ¡Gracias a todos por su participación y excelente colaboración en esta reunión "3 Amigos"!

¡Que tengan un gran día!

