Hola

¡Hola! Bienvenido a la reunión "3 amigos". Para comenzar, me gustaría que el Product Owner nos diera una breve descripción de la funcionalidad que queremos discutir hoy.

[Facilitador]
[Product Owner]
Vamos asignar a los diferentes usuarios una categoría (PATINUM, GOLD, SILVER, BRONZE) de forma que más adelante podamos usar estas categorías para, por ejemplo crear campañas de marketing

[Facilitador] Muchas gracias por la descripción, Product Owner. Ahora, quisiera profundizar en el objetivo de negocio detrás de esta funcionalidad.

[Developer] Product Owner, ¿podrías explicar cómo esta categorización va a impactar en nuestro negocio y qué resultados esperas obtener al implementar esta funcionalidad?

Al tener segmentados los usuarios, podemos crear campañas específicas para cada grupo aumentando las ventas, así pues, podemos crear ofertas muy atractivas a los clientes PLATINUM con grandes descuentos, mientras por ejemplo asignar ofertas a productos que no se vendan mucho a clientes BRONZE

[Facilitador] Excelente, gracias por esa explicación. Ahora, desde la perspectiva de desarrollo, me gustaría entender cómo se podría implementar la lógica para asignar estas categorías a los usuarios.

[Developer] ¿Podrías contarnos un poco más sobre cómo se determina la categoría que va a recibir cada usuario? ¿Hay algún criterio específico o requisitos que debemos tener en cuenta al asignar estas categorías?

Podemos usar el número de pedidos que ha hecho el cliente durante el último año, pero deberemos tener en cuenta que deben ser pedidos completados satisfactoriamente, sin devoluciones ni quejas.

[Facilitador] Muchas gracias por la claridad en los criterios. Ahora, desde la perspectiva de QA, es fundamental entender cómo se validará esta funcionalidad.

[QA] Product Owner, ¿cuáles serán los criterios específicos que se utilizarán para verificar que un usuario ha sido categorizado correctamente? ¿Podrías describir cómo podremos verificar que se cumplen los criterios de número de pedidos y satisfacción del cliente?

PLATINUM: 20+ pedidos GOLD: 15-20 pedidos SILVER: 10-15 pedidos BRONZE: 5-10 pedidos

Un pedido es satisfactorio si no tiene ninguna incidencia asociada (devolución o queja)

[Facilitador] Entendido, gracias por esos detalles. A continuación, volviendo al Developer, me gustaría saber sobre el comportamiento esperado y cómo se manejarán los casos de uso.

[Developer] Ahora que tenemos las categorías definidas, ¿podrías describir cómo debería comportarse el sistema cuando un cliente cumple con los criterios para ser categorizado? ¿Qué debería suceder en la interfaz y cómo queréis que se notifiquen estas categorías a los usuarios?

Cada vez que el cliente realiza un pedido, se comprueban los últimos pedidos hecho por ese cliente en el último año. Si el número de pedidos coincide con una de las categorías, se le asigna automáticamente y se envía un email al cliente felicitándolo por el upgrade.

Si un pedido es anulado, habrá que recalcular de nuevo la categoría y si es necesario hacer un downgrade, se le enviará un email al cliente avisando de lo ocurrido

[Facilitador] Muy bien, eso aclara el flujo de funcionamiento. Ahora, volviendo al QA, es importante cubrir todas las validaciones y los errores posibles.

[QA] Ahora que tenemos claro el proceso, ¿podrías indicarnos qué validaciones adicionales debe realizar el sistema? Por ejemplo, ¿qué debe suceder si un cliente intenta hacer un pedido pero no cumple con la categoría? ¿Y si hay errores en el envío del email? Además, si se da un downgrade, ¿cómo se manejará el mensaje de notificación en esos casos?

Si no se cumple ningún criterio, no se hará nada. Todo este proceso debe ser asíncrono y no influir en el flujo normal de compras. Al ser un proceso separado, se aplicarán políticas de reintentos

[Facilitador] Gracias por esa aclaración sobre el manejo de errores y validaciones. Ahora, volvamos al Developer para asegurarnos de que tenemos todos los detalles necesarios para la implementación.

[Developer] Para finalizar con la parte técnica, me gustaría clarificar qué reglas de negocio deben establecerse. ¿Existen restricciones adicionales que debamos considerar en cuanto a los pedidos que se cuentan para la categorización, como temporalidad o excepciones que debemos tener en cuenta?

de momento no se me ocurre ninguna restricción

[Facilitador] Perfecto, gracias por la información. Ahora, para consolidar todo lo que hemos hablado, voy a hacer un resumen estructurado de la funcionalidad que estamos desarrollando.
Funcionalidad:
Asignación de categorías a usuarios (PLATINUM, GOLD, SILVER, BRONZE) basada en el número de pedidos realizados durante el último año.

Objetivo:
Segmentar a los usuarios para crear campañas de marketing específicas que aumenten las ventas mediante ofertas atractivas.

Reglas de negocio:
PLATINUM: 20+ pedidos (satisfactorios)
GOLD: 15-20 pedidos (satisfactorios)
SILVER: 10-15 pedidos (satisfactorios)
BRONZE: 5-10 pedidos (satisfactorios)
Se considera un pedido satisfactorio si no tiene devoluciones ni quejas.
Casos principales:
Al realizar un pedido, se verifican los últimos pedidos completados.
Si se cumple con los criterios, se asigna la categoría y se envía un email al cliente notificando el upgrade.
Si un pedido es anulado, se recalcula la categoría y, si es necesario, se envía un email notificando un downgrade.
Casos alternativos/errores:
Si un cliente no cumple ningún criterio, no se realiza ninguna acción.
El proceso de categorización es asíncrono y no interfiere en el flujo normal de compras.
Se aplican políticas de reintentos en caso de fallos en el envío de correos.
Criterios de aceptación:
Given un cliente que ha realizado X pedidos en el último año,
When se realiza un nuevo pedido,
Then el sistema debe categorizarlo adecuadamente y enviar el correo correspondiente.
Preguntas abiertas o ambigüedades:
No se han identificado restricciones adicionales al proceso de categorización.
¿Hay algo más que quieran agregar o aclarar antes de cerrar esta conversación?

