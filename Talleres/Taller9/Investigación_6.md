*Investigación N°6*

*Juan Diego Claro - 2192508*
# <a name="pregunta-1"></a>***Pregunta 1***
Cual es significado del termino espera activa en los sistemas operacionales?
## <a name="respuesta"></a>**Respuesta:**
El término “espera activa” se refiere a una técnica en la cual un proceso o hilo de ejecución se mantiene ocupado de forma activa mientras espera que ocurra algún evento o se cumpla alguna condición. En lugar de bloquearse o quedarse inactivo durante ese tiempo, el proceso realiza una serie de instrucciones repetitivas que verifican periódicamente si el evento esperado ha ocurrido.

La espera activa se utiliza comúnmente en situaciones en las que el tiempo de espera es relativamente corto y el proceso necesita responder rápidamente cuando el evento ocurre. En lugar de suspender el proceso y liberar la CPU para que otros procesos la utilicen, el proceso continúa ejecutando un bucle que verifica la condición o evento esperado. Una vez que el evento ocurre, el proceso puede realizar las acciones necesarias de inmediato.

Sin embargo, la espera activa también tiene algunas limitaciones y consideraciones importantes. En primer lugar, esta técnica puede consumir una cantidad significativa de recursos de CPU, ya que el proceso está constantemente verificando la condición en lugar de liberar la CPU para que otros procesos la utilicen. Esto puede afectar negativamente el rendimiento general del sistema si se abusa de la espera activa.

Además, la espera activa puede generar un mayor consumo de energía en dispositivos móviles o sistemas embebidos, ya que el procesador se mantiene ocupado constantemente en lugar de entrar en estados de bajo consumo de energía durante los períodos de espera. Esto puede reducir la duración de la batería en dispositivos portátiles.
# <a name="pregunta-2"></a>***Pregunta 2***
De que manera se puede evitar la espera activa?
## <a name="respuesta-1"></a>**Respuesta:**
Hay algunas alternativas para evitar la espera activa en sistemas operativos como lo son:

**Espera pasiva:** En lugar de mantener un bucle de espera activa, puedes utilizar mecanismos de espera pasiva, como las interrupciones o los eventos del sistema operativo. Esto permite que el proceso o hilo se suspenda y se reanude automáticamente cuando se cumpla la condición o evento deseado.

**Sincronización y bloqueo:** Utiliza mecanismos de sincronización y bloqueo provistos por el sistema operativo o el lenguaje de programación para coordinar la ejecución de los procesos o hilos. Estos mecanismos permiten que los procesos o hilos se bloqueen hasta que se cumpla una condición específica, evitando así la necesidad de esperar activamente.

**Semáforos y variables de condición:** Los semáforos y las variables de condición son herramientas de sincronización que permiten a los procesos o hilos comunicarse y coordinarse entre sí. Puedes utilizarlos para que un proceso o hilo se bloquee hasta que se produzca una señal o evento específico, en lugar de esperar activamente.

**Temporización y planificación:** En lugar de esperar activamente por un evento, puedes utilizar mecanismos de temporización y planificación para programar la ejecución de un proceso o hilo en un momento específico. De esta manera, puedes evitar la espera activa y hacer un uso más eficiente de los recursos del sistema.

**Comunicación asíncrona:** En algunos casos, puedes utilizar mecanismos de comunicación asíncrona, como colas de mensajes o canales de comunicación, para enviar y recibir información entre procesos o hilos. Esto permite que un proceso o hilo continúe su ejecución sin esperar activamente una respuesta inmediata, mejorando así la eficiencia del sistema.
# <a name="pregunta-3"></a>***Pregunta 3***
Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.
## <a name="respuesta-2"></a>**Respuesta:**
Los bloqueos mediante bucle sin fin, también conocidos como espera activa o busy-waiting, consisten en que un proceso o hilo de ejecución se queda en un bucle infinito mientras espera a que se cumpla una condición o evento. Durante esta espera activa, el proceso consume recursos del sistema, como la capacidad de procesamiento de la CPU, sin realizar ninguna tarea útil.

En un sistema monoprocesador, donde solo hay una única unidad de procesamiento, el uso de bloqueos mediante bucle sin fin no es apropiado debido a que consume recursos valiosos de la CPU sin beneficiarse realmente. La espera activa en un bucle sin fin puede llevar a una utilización ineficiente del procesador, ya que el proceso en espera continúa consumiendo ciclos de CPU sin avanzar en su tarea. Esto puede resultar en un desperdicio de recursos y afectar negativamente el rendimiento del sistema en su conjunto.

Por otro lado, en los sistemas multiprocesador, donde hay múltiples núcleos de CPU disponibles, los bloqueos mediante bucle sin fin se utilizan con mayor frecuencia. En este caso, cuando un hilo se encuentra en espera activa, el núcleo de la CPU en el que se está ejecutando puede ser utilizado por otros hilos activos. Mientras tanto, el hilo en espera activa puede volver a ejecutarse inmediatamente tan pronto como se cumpla la condición deseada. En sistemas multiprocesador, la espera activa puede ser más eficiente, ya que permite una mejor utilización de los recursos de la CPU y minimiza la latencia asociada con el cambio de contexto entre hilos.

Sin embargo, es importante tener en cuenta que incluso en sistemas multiprocesador, el uso excesivo de la espera activa puede tener impactos negativos en el rendimiento global. El consumo excesivo de la CPU por parte de los bucles de espera activa puede limitar la capacidad del sistema para realizar otras tareas importantes y puede generar congestión en la comunicación y sincronización entre hilos.
# <a name="pregunta-4"></a>***Pregunta 4***
Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.
## <a name="respuesta-3"></a>**Respuesta:**
Las interrupciones son señales de eventos generadas por dispositivos externos o internos al sistema que requieren atención inmediata del procesador. En sistemas monoprocesador, las interrupciones se utilizan ampliamente para implementar primitivas de sincronización, como semáforos o variables de condición, ya que permiten una respuesta rápida a eventos y una gestión eficiente de la concurrencia.

Sin embargo, en sistemas multiprocesador, las interrupciones no son apropiadas para implementar primitivas de sincronización debido a los siguientes motivos:

**Exclusividad del recurso:** En un sistema multiprocesador, múltiples núcleos de CPU están ejecutando hilos de manera simultánea. Si una interrupción se utiliza para gestionar la sincronización de un recurso compartido, puede ocurrir que dos o más núcleos de CPU intenten acceder a ese recurso al mismo tiempo. Esto puede provocar condiciones de carrera y conflictos de acceso, lo que compromete la integridad y coherencia de los datos.

**Latencia y rendimiento:** Las interrupciones introducen latencia en la ejecución del código, ya que el procesador debe detener su ejecución actual y atender la interrupción. En un sistema multiprocesador, donde varios núcleos están ejecutando hilos simultáneamente, el uso de interrupciones para la sincronización puede generar una mayor cantidad de interrupciones y una mayor carga en el sistema. Esto puede afectar el rendimiento global del sistema y la capacidad de respuesta.

**Escalabilidad:** En sistemas multiprocesador, la sincronización eficiente y escalable es un desafío importante. El uso de interrupciones para implementar primitivas de sincronización puede dificultar la escalabilidad, ya que puede generar cuellos de botella en la gestión de interrupciones y conflictos de acceso a recursos compartidos.

En lugar de las interrupciones, en sistemas multiprocesador se utilizan otros mecanismos de sincronización y comunicación entre hilos, como semáforos, variables de condición, barreras, mutexes o locks, entre otros. Estos mecanismos están diseñados específicamente para lidiar con la concurrencia en sistemas multiprocesador, ofreciendo mayor control sobre la exclusión mutua y evitando problemas de acceso concurrente a los recursos compartidos.
# <a name="pregunta-5"></a>***Pregunta 5***
Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.
## <a name="respuesta-4"></a>**Respuesta:**
La instrucción swap() se utiliza para intercambiar el contenido de una variable con otro valor. Puede ser utilizada para implementar un mecanismo de exclusión mutua, como por ejemplo un mutex, que cumpla con el requisito de espera limitada. La espera limitada implica que un hilo en espera no debe quedarse esperando indefinidamente y debe tener la garantía de eventualmente acceder al recurso protegido.

Aquí hay un ejemplo de cómo se puede utilizar la instrucción swap() para implementar un mecanismo de exclusión mutua con espera limitada:

**1** Definir una variable compartida llamada “lock” que actuará como el recurso de exclusión mutua. Inicialmente, se puede establecer en un valor que represente que está desbloqueado, por ejemplo, 0.

**2** Cuando un hilo desea acceder a la sección crítica protegida por el mutex, sigue estos pasos: **a.** Intenta adquirir el mutex realizando una operación swap() en la variable “lock” y asignando un valor que represente el estado de bloqueo, por ejemplo, 1. **b**. Si el valor devuelto por swap() es igual a 0, significa que el hilo ha adquirido el mutex y puede proceder a ejecutar la sección crítica. **c**. Si el valor devuelto por swap() no es igual a 0, significa que otro hilo ya ha adquirido el mutex. En este caso, el hilo actual puede esperar un tiempo limitado y luego volver al paso a para intentar nuevamente adquirir el mutex.

**3** Cuando un hilo haya terminado de ejecutar la sección crítica, debe liberar el mutex mediante una operación swap() que establezca el valor de “lock” de nuevo a 0, indicando que está desbloqueado. Esto permitirá que otro hilo pueda adquirir el mutex y acceder a la sección crítica.

El uso de la instrucción swap() en este mecanismo de exclusión mutua con espera limitada garantiza que los hilos no se queden esperando indefinidamente. Si un hilo no puede adquirir el mutex en su primer intento, realizará un bucle donde esperará un tiempo limitado antes de intentar nuevamente. Esto evita bloqueos permanentes y permite que los hilos tengan una oportunidad justa de acceder al recurso protegido.

Es importante tener en cuenta que este es solo un ejemplo básico y que la implementación real de un mecanismo de exclusión mutua con espera limitada puede requerir consideraciones adicionales, como la gestión de colas de espera, prioridades de los hilos y técnicas de temporización más sofisticadas.
# <a name="pregunta-6"></a>***Pregunta 6***
Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.
## <a name="respuesta-5"></a>**Respuesta:**
Un servidor puede utilizar semáforos para limitar el número de conexiones concurrentes de la siguiente manera:

**1. Definir un semáforo:** El servidor debe crear un semáforo que actúe como un contador para controlar el número de conexiones concurrentes permitidas. El valor inicial del semáforo se establecerá en el límite máximo de conexiones permitidas.

**2. Limitar el acceso al semáforo:** Antes de que un cliente intente establecer una conexión con el servidor, deberá solicitar el acceso al semáforo. Esto se hace mediante una operación wait() en el semáforo. Si el valor del semáforo es cero, lo que significa que se ha alcanzado el límite de conexiones concurrentes, el cliente tendrá que esperar hasta que haya una conexión disponible.

**3. Establecer la conexión:** Si el cliente recibe un acceso al semáforo (el valor del semáforo es mayor que cero), se le permite establecer una conexión con el servidor y comenzar a realizar sus operaciones.

**4. Liberar la conexión:** Una vez que el cliente haya terminado de usar la conexión y desee cerrarla, debe liberar el acceso al semáforo. Esto se hace mediante una operación signal() en el semáforo, lo que incrementará el valor del semáforo y permitirá que otro cliente acceda a una conexión.

**5. Controlar el límite máximo:** El servidor debe asegurarse de que el valor del semáforo nunca supere el límite máximo de conexiones permitidas. Esto se puede lograr implementando una verificación antes de realizar la operación signal(), para evitar incrementar el valor del semáforo más allá del límite establecido.

Al utilizar semáforos de esta manera, el servidor puede controlar y limitar el número de conexiones concurrentes permitidas. Los semáforos actúan como una barrera que restringe el acceso a las conexiones, asegurando que no se exceda el límite máximo establecido. Esto evita la sobrecarga del servidor y garantiza un rendimiento óptimo para cada conexión.

Es importante tener en cuenta que el uso de semáforos para limitar las conexiones concurrentes es solo una parte del diseño del servidor. Otros aspectos, como la gestión de las conexiones, la asignación de recursos y la atención a las solicitudes de los clientes, también deben ser considerados y pueden requerir el uso de otros mecanismos de sincronización y planificación.
# <a name="pregunta-7"></a>***Pregunta 7***
Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.
## <a name="respuesta-6"></a>**Respuesta:**
Los monitores y los semáforos son dos mecanismos de sincronización utilizados en programación concurrente, y aunque tienen diferencias en su implementación, pueden emplearse para resolver los mismos tipos de problemas de sincronización. Esto se debe a que ambos proporcionan las primitivas necesarias para lograr la exclusión mutua y la coordinación entre hilos o procesos.

A continuación, se muestra cómo los monitores y los semáforos pueden utilizarse para implementar algunos problemas de sincronización comunes:

**1. Problema del productor-consumidor:** Tanto los monitores como los semáforos pueden ser utilizados para implementar el problema del productor-consumidor. En un monitor, se puede definir una cola o buffer compartido y utilizar métodos de espera y señalización para asegurar que el productor y el consumidor accedan al buffer de manera excluyente. En el caso de los semáforos, se pueden utilizar semáforos contadores para controlar el acceso al buffer, utilizando operaciones wait() y signal() para sincronizar el productor y el consumidor.

**2. Problema de los lectores-escritores:** Los monitores y los semáforos también pueden utilizarse para implementar el problema de los lectores-escritores. En un monitor, se pueden utilizar variables de condición para manejar la exclusión mutua y la preferencia de los lectores o escritores. En el caso de los semáforos, se pueden utilizar semáforos binarios y contadores para asegurar que solo un escritor o varios lectores puedan acceder a un recurso compartido a la vez.

**3. Problema del barbero dormilón:** Tanto los monitores como los semáforos pueden implementar el problema del barbero dormilón. En un monitor, se pueden utilizar variables de condición para que los clientes esperen si el barbero está ocupado o duerma si no hay clientes. Con los semáforos, se pueden utilizar semáforos contadores para controlar el acceso al barbero y permitir que los clientes esperen o despierten al barbero según sea necesario.

La elección entre monitores y semáforos puede depender de las preferencias del programador, las características del lenguaje de programación o las necesidades específicas del problema a resolver.
# <a name="pregunta-8"></a>***Pregunta 8***
La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.
## <a name="respuesta-7"></a>**Respuesta:**
La exclusión mutua estricta en un monitor significa que solo un hilo puede ejecutar un método del monitor a la vez. En el contexto de un monitor de búfer limitado, esto implica que solo un hilo puede acceder al búfer a la vez, evitando conflictos y garantizando que no se produzcan condiciones de carrera.

Cuando se trata de porciones pequeñas, se refiere a que las operaciones que se realizan en el monitor son rápidas y no requieren mucho tiempo de ejecución. Por ejemplo, en un monitor de búfer limitado donde los métodos involucrados son simples, como insertar un elemento en el búfer o eliminar un elemento del búfer, la duración de la operación es corta.

La exclusión mutua estricta en un monitor es adecuada para porciones pequeñas porque minimiza el tiempo en el que un hilo bloquea a otros hilos. Cuando un hilo adquiere el monitor y comienza a ejecutar una operación en el búfer, ningún otro hilo puede acceder al monitor y al búfer hasta que el hilo actual haya terminado y liberado el monitor. Esto evita la posibilidad de que múltiples hilos intenten acceder al búfer al mismo tiempo, lo que podría causar condiciones de carrera y resultados incorrectos.

Sin embargo, es importante tener en cuenta que la exclusión mutua estricta puede tener un impacto negativo en el rendimiento si las porciones de código dentro del monitor son largas o computacionalmente intensivas. Si las operaciones en el monitor son complejas y requieren mucho tiempo de ejecución, puede haber una congestión de hilos esperando para acceder al monitor, lo que resulta en una baja utilización de los recursos y un rendimiento general más lento.
# <a name="pregunta-9"></a>***Pregunta 9***
Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?
## <a name="respuesta-8"></a>**Respuesta:**
Tanto Windows como Linux utilizan bloqueos mediante bucle sin fin (spin locks) como mecanismo de sincronización en sistemas multiprocesador y no en sistemas monoprocesador por las siguientes razones:

**Eficacia en sistemas multiprocesador:** Los bloqueos mediante bucle sin fin son especialmente eficientes en sistemas multiprocesador, donde hay múltiples núcleos de CPU ejecutando hilos de manera simultánea. En este contexto, utilizar un bucle sin fin para esperar activamente por la liberación del bloqueo puede ser más eficiente en términos de latencia y utilización del procesador que poner a dormir el hilo en espera. Esto se debe a que el bucle sin fin evita el costo adicional de poner y sacar al hilo del estado de espera y la posible migración entre núcleos.

**Evitar cambios de contexto innecesarios:** En sistemas monoprocesador, donde solo hay un núcleo de CPU, los bloqueos mediante bucle sin fin pueden ser menos eficientes y pueden provocar un uso excesivo de la CPU. Si un hilo está en un bucle esperando activamente por la liberación del bloqueo en un sistema monoprocesador, consumirá ciclos de CPU incluso cuando no haya progreso real. Esto puede resultar en una utilización ineficiente de los recursos y una degradación del rendimiento general del sistema.

**Disponibilidad de otros mecanismos en sistemas monoprocesador:** En sistemas monoprocesador, existen otros mecanismos de sincronización más adecuados que no implican un bucle sin fin, como los semáforos o los mutexes que permiten bloquear y desbloquear el hilo de manera más eficiente. Estos mecanismos utilizan técnicas de espera pasiva, donde el hilo se pone en espera hasta que sea notificado de la disponibilidad del recurso. En sistemas monoprocesador, donde solo hay un único núcleo de CPU, estos mecanismos son suficientes y no se requiere la eficiencia adicional de los bloqueos mediante bucle sin fin.

En conclusión, Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en sistemas multiprocesador debido a su eficacia en la gestión de concurrencia en esos entornos. En sistemas monoprocesador, se prefieren otros mecanismos de sincronización más adecuados, como semáforos o mutexes, que no implican un bucle sin fin y son más eficientes en términos de utilización de recursos y rendimiento general del sistema.
