# Transcripción de la Reunión: Cupones de Descuento en Checkout

## Participantes:

* Laura (Product Owner - PO)
* Marcos (Developer - Dev)
* Sofía (QA)


## Transcripción

Laura (PO): ¡Hola a todos! Gracias por unirse. Hoy quiero que hablemos de la implementación de cupones de descuento. Es una funcionalidad que los usuarios nos piden mucho y el equipo de marketing la necesita urgentemente para las campañas de Black Friday que se nos vienen encima.

Marcos (Dev): Entendido, Laura. ¿Tienes alguna idea inicial de cómo debería funcionar el flujo? Lo digo para ir pensando en la complejidad técnica.

Laura (PO): Sí, la idea principal es que los usuarios, al llegar al carrito de compras o en la página de checkout, puedan ingresar un código de cupón y que este se aplique al total del pedido. Queremos que sea muy visible y fácil de usar. Por ejemplo, un campo de texto con un botón "Aplicar".

Sofía (QA): Ok, me parece bien. Ya estoy pensando en los posibles errores. ¿Qué pasa si el cupón no existe? ¿O si ya caducó? ¿O si no cumple las condiciones, por ejemplo, un mínimo de compra?

Laura (PO): Justo a eso iba, Sofía. Si el cupón no es válido por cualquier razón, el sistema debería mostrar un mensaje claro al usuario indicando el motivo. Algo como "Cupón inválido", "Cupón caducado" o "Este cupón requiere una compra mínima de X euros".

Marcos (Dev): Para la validación del cupón, Laura, ¿la haremos en el frontend o en el backend? Supongo que la lógica fuerte, como la validación de las condiciones y el cálculo del descuento, tiene que ir en el backend para evitar manipulaciones.

Laura (PO): Sí, la validación principal y la aplicación del descuento deben ser en el backend por seguridad. El frontend solo presentaría el campo y mostraría los mensajes de error que el backend devuelva. Y una vez aplicado, el resumen del pedido debería reflejar el descuento y el nuevo total.

Sofía (QA): Y si un usuario aplica un cupón, luego quita un producto y el total baja por debajo del mínimo del cupón, ¿qué pasa? ¿Se quita el descuento automáticamente o se le avisa?

Laura (PO): Buena pregunta, Sofía. Debería quitarse automáticamente el descuento y, si es posible, mostrar un aviso de que el cupón ya no aplica por los cambios en el carrito. Sería ideal si el usuario ve por qué el descuento desapareció.

Marcos (Dev): Eso añade un poco más de complejidad en la lógica del carrito, porque cada vez que se modifique, habría que revalidar el cupón. Necesitaremos un endpoint que reciba el código del cupón y el estado actual del carrito para calcular el descuento.

Laura (PO): Exacto. Y otra cosa importante: si el cupón se aplica con éxito, el usuario debería ver claramente el descuento aplicado en el desglose del pedido. Algo como "Descuento por cupón: -X€". Y el total final, claro.

Sofía (QA): ¿Y qué pasa con la persistencia? Si el usuario aplica un cupón y luego navega a otra página y vuelve, ¿el cupón debería seguir aplicado?

Laura (PO): Sí, el cupón debería persistir en la sesión del usuario una vez aplicado, al menos mientras dure su sesión o hasta que lo quite manualmente. No queremos que los usuarios tengan que reingresar el cupón cada vez que cambian de página.

Marcos (Dev): Persistencia en sesión, anotado. Esto probablemente implique guardar el código del cupón y el estado de su aplicación en la sesión del usuario en el backend.

Laura (PO): Y hablando de quitarlo manualmente, ¿deberíamos ofrecer una opción para eliminar el cupón aplicado? A veces los usuarios prueban varios y quieren cambiar.

Marcos (Dev): Sí, un pequeño botón "Eliminar" o una "X" junto al descuento aplicado sería lo más intuitivo.

Sofía (QA): Sí, y yo probaría que al eliminarlo, el precio vuelva al original y que se limpie el campo del cupón. También, ¿permitiremos múltiples cupones o solo uno por pedido?

Laura (PO): Por ahora, solo un cupón por pedido. Si en el futuro necesitamos más, lo vemos. Mantengamos esto simple para la primera iteración.

Marcos (Dev): Un único cupón, perfecto. Eso simplifica bastante la lógica de cálculo.

Laura (PO): Y finalmente, necesitamos que el equipo de marketing pueda gestionar estos cupones a través de nuestro panel de administración. Crear nuevos cupones, definir las condiciones (porcentaje, cantidad fija, mínimo de compra, fechas de validez), etc. Pero eso es una historia aparte para la gestión de cupones, no para el checkout, ¿verdad?

Marcos (Dev): Correcto, Laura. Esa parte de administración es un módulo diferente. Aquí nos centramos en la experiencia del usuario al aplicar el cupón en el checkout.

Sofía (QA): Me parece bien. Entonces, para resumir mis pruebas: validación de códigos correctos e incorrectos, mensajes de error claros, manejo de condiciones (mínimo de compra), revalidación al cambiar el carrito, persistencia y la opción de quitar el cupón. También verificar que el cálculo del descuento sea correcto y se refleje bien en el total.

Laura (PO): Excelente resumen, Sofía. Marcos, ¿tienes alguna duda técnica más o crees que tenemos lo suficiente para empezar a desglosar las tareas?

Marcos (Dev): Creo que tenemos la base. Necesito investigar un poco la integración con el procesador de pagos para asegurarme de que el descuento se refleje correctamente antes de la transacción final. Pero el flujo general de aplicación del cupón está claro.

Laura (PO): Perfecto. Pues con esto, creo que tenemos la base para definir los requisitos y empezar a trabajar en las historias de usuario para esta funcionalidad. ¡Gracias a los dos!

