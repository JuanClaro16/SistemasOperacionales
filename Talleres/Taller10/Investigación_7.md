**Investigación\_7**
# <a name="pregunta-1"></a>**Pregunta 1**
Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.
## <a name="respuesta"></a>**Respuesta**
***1. Exclusión mutua:*** En la imagen, cada vehículo ocupa un carril exclusivo y no puede ser compartido.

***2. Espera de retención:*** Los vehículos mantienen un carril mientras esperan acceso a otro.

***3. No interrupción:*** Los vehículos no pueden ser obligados a liberar los carriles que ocupan.

***4. Espera circular:*** Cada vehículo está en espera de que otro libere un recurso. Esta situación se aprecia claramente en la imagen con los autos esperando a que el vehículo anterior se mueva.
# <a name="pregunta-2"></a>**Pregunta 2**
Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.
## <a name="respuesta-1"></a>**Respuesta**
Para evitar interbloqueos en este sistema, se podría implementar una medida preventiva consistente en la introducción de un semáforo o una señal de control. Esta regulación permitiría que solo un carril avance a la vez, evitando así la posibilidad de que los vehículos queden bloqueados entre sí.
# <a name="pregunta-3"></a>**Pregunta 3**
Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.
## <a name="respuesta-2"></a>**Respuesta**
Las condiciones básicas de interbloqueo que deben cumplirse en el problema de la cena de los filósofos son las siguientes:

***Adquisición simultánea:*** Para evitar el interbloqueo, se requiere que todos los filósofos adquieran los tenedores de manera simultánea. Esto significa que un filósofo no puede tomar un tenedor si el otro tenedor adyacente está siendo utilizado por otro filósofo.

***Exclusión mutua:*** Solo un filósofo puede tener acceso a un tenedor en un momento dado. Esto evita que varios filósofos intenten tomar el mismo tenedor al mismo tiempo. Si un filósofo adquiere un tenedor, debe esperar a que el tenedor adyacente esté disponible antes de intentar adquirirlo.

***No espera circular:*** Se debe evitar la espera circular para prevenir el interbloqueo. Esto significa que un filósofo no debe quedarse esperando indefinidamente para adquirir el segundo tenedor mientras otro filósofo tiene el primero. Si todos los filósofos toman su tenedor izquierdo antes que el derecho, se puede producir un interbloqueo.

Existen diferentes soluciones al problema de la cena de los filósofos que cumplen estas condiciones básicas de interbloqueo. Algunas de las soluciones más conocidas incluyen algoritmos como el “algoritmo del camarero”, donde se introduce un coordinador externo para manejar la asignación de los tenedores, o el “algoritmo de Chandy/Misra”, donde se utiliza la comunicación asincrónica para coordinar el acceso a los tenedores.
# <a name="pregunta-4"></a>**Pregunta 4**
Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.
## <a name="respuesta-3"></a>**Respuesta**
Para evitar el interbloqueo en el problema de la cena de los filósofos, se puede modificar una de las condiciones básicas para romper el ciclo que lleva al interbloqueo. A continuación, explicaré cómo podríamos evitar el interbloqueo al impedir que se cumpla la condición de “espera circular”:

En el problema original de la cena de los filósofos, los filósofos toman los tenedores de manera secuencial: primero el tenedor izquierdo y luego el derecho. Esto puede llevar a una situación en la que cada filósofo toma su tenedor izquierdo y espera indefinidamente por su tenedor derecho, creando un ciclo de espera circular y provocando el interbloqueo.

Para evitar esto, se puede establecer una regla que rompa la espera circular. Por ejemplo, se puede modificar el comportamiento de un filósofo para que tome los tenedores en orden inverso, es decir, primero el tenedor derecho y luego el izquierdo. Esto rompería el ciclo de espera circular y evitaría el interbloqueo.

Con esta modificación, cada filósofo intentará tomar el tenedor derecho primero. Si está disponible, lo adquirirá y luego intentará tomar el tenedor izquierdo. Si el tenedor izquierdo no está disponible, el filósofo lo liberará y volverá a intentarlo más tarde. Esto evita que los filósofos queden atrapados en un ciclo de espera y garantiza que eventualmente podrán adquirir ambos tenedores para comer.

Es importante destacar que esta modificación rompe la exclusión mutua, ya que varios filósofos pueden tener acceso simultáneo a un tenedor. Sin embargo, en este caso, no se produce el interbloqueo, ya que se evita la espera circular.

Cabe mencionar que existen otras estrategias y modificaciones posibles para evitar el interbloqueo en el problema de la cena de los filósofos. Esta es solo una de las formas en que se puede romper el ciclo de espera circular.
# <a name="pregunta-5"></a>**Pregunta 5**
Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.
## <a name="respuesta-4"></a>**Respuesta**
Al comparar el esquema de espera circular con los esquemas de evasión de interbloqueos en términos de tiempo de ejecución adicional necesario, podemos observar lo siguiente:

**Esquema de espera circular:**

***Tiempo de ejecución adicional:*** En el esquema de espera circular, no se requiere un tiempo de ejecución adicional específico para evitar el interbloqueo. Sin embargo, existe el riesgo de que se produzca un bloqueo infinito si todos los filósofos toman su tenedor izquierdo y esperan por su tenedor derecho. En ese caso, el sistema no avanzaría y no habría un progreso efectivo en las tareas.

**Esquemas de evasión de interbloqueos:**

***Tiempo de ejecución adicional:*** Los esquemas de evasión de interbloqueos generalmente implican la aplicación de algoritmos y técnicas adicionales para prevenir o detectar el interbloqueo. Estos mecanismos pueden requerir un tiempo de ejecución adicional para realizar verificaciones, monitorear el sistema o tomar medidas correctivas.

**1. Prevención de interbloqueos:**

***Tiempo de ejecución adicional:*** La prevención de interbloqueos puede requerir un tiempo de ejecución adicional durante la asignación de recursos y la planificación del sistema. Se deben establecer políticas y algoritmos para garantizar que no se cumplan las condiciones necesarias para el interbloqueo. Esto puede implicar la implementación de reglas específicas para la adquisición de recursos y la asignación ordenada.

**2. Detección y recuperación de interbloqueos:**

***Tiempo de ejecución adicional:*** Los esquemas de detección y recuperación de interbloqueos pueden requerir un tiempo de ejecución adicional para monitorear el sistema y realizar comprobaciones periódicas en busca de situaciones de interbloqueo. Además, cuando se detecta un interbloqueo, se deben tomar acciones correctivas, como liberar recursos o reorganizar la asignación de recursos. Estas acciones también pueden requerir tiempo adicional.
# <a name="pregunta-6"></a>**Pregunta 6**
Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.
## <a name="respuesta-5"></a>**Respuesta**
Al comparar el esquema de espera circular con los esquemas de evasión de interbloqueos en términos de tasa de procesamiento del sistema, se pueden observar las siguientes diferencias:

**Esquema de espera circular:**

***Tasa de procesamiento del sistema:*** El esquema de espera circular puede llevar a un bloqueo completo del sistema si se produce un ciclo de espera circular, lo que resulta en una tasa de procesamiento de cero. Esto ocurre cuando todos los filósofos toman su tenedor izquierdo y esperan indefinidamente por su tenedor derecho. En esta situación, ninguna tarea puede avanzar y el sistema queda inactivo.

**Esquemas de evasión de interbloqueos:**

***Tasa de procesamiento del sistema:*** Los esquemas de evasión de interbloqueos se centran en evitar o recuperarse del interbloqueo para mantener una tasa de procesamiento más alta en el sistema.

***1.*** **Prevención de interbloqueos:**

***Tasa de procesamiento del sistema:*** La prevención de interbloqueos puede ayudar a mantener una alta tasa de procesamiento del sistema. Al utilizar políticas y algoritmos de asignación de recursos ordenados, se evitan las condiciones necesarias para el interbloqueo. Esto permite que las tareas se ejecuten sin interrupciones, maximizando la tasa de procesamiento.

***2.*** **Detección y recuperación de interbloqueos:**

***Tasa de procesamiento del sistema:***Los esquemas de detección y recuperación de interbloqueos están diseñados para detectar y solucionar situaciones de interbloqueo. Si bien pueden implicar un tiempo de ejecución adicional para monitorear y verificar el estado del sistema, una vez que se detecta un interbloqueo, se toman medidas correctivas para evitar un bloqueo completo. Esto permite que el sistema continúe procesando tareas y, por lo tanto, mantiene una tasa de procesamiento más alta en comparación con un bloqueo completo.
# <a name="pregunta-7"></a>**Pregunta 7**
Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos
## <a name="respuesta-6"></a>**Respuesta**
Para demostrar que el sistema está libre de interbloqueos en este escenario, podemos realizar un análisis exhaustivo de las asignaciones de recursos posibles para los tres procesos.

Dado que hay cuatro recursos disponibles y cada proceso necesita como máximo dos recursos, podemos asignar los recursos de la siguiente manera:

***1. Asignar dos recursos al primer proceso:*** En este caso, todavía quedan dos recursos disponibles.

***2. Asignar dos recursos al segundo proceso:*** Ahora no quedan recursos disponibles, ya que los cuatro están asignados.

***3. Intentar asignar dos recursos al tercer proceso:*** Dado que ya no hay suficientes recursos disponibles, este proceso se mantendría en espera hasta que se liberen recursos.

Sin embargo, dado que el tercer proceso necesita como máximo dos recursos y solo hay dos recursos disponibles, no es posible que el tercer proceso adquiera los dos recursos restantes. Por lo tanto, el tercer proceso no podrá alcanzar una condición de espera circular, ya que siempre estará esperando por recursos adicionales que no están disponibles.

Este escenario específico garantiza que no se produzca un interbloqueo, ya que ninguno de los procesos quedará atrapado esperando recursos adicionales que no puedan ser liberados por otros procesos. Por lo tanto, podemos concluir que el sistema está libre de interbloqueos en esta configuración particular.
# <a name="pregunta-8"></a>**Pregunta 8**
Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos
## <a name="respuesta-7"></a>**Respuesta**
En el problema de los filósofos, una regla simple para determinar si una solicitud de palillos podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos, es verificar si todos los palillos necesarios para que un filósofo pueda comer están disponibles. Si todos los palillos requeridos están disponibles, entonces se puede satisfacer la solicitud sin interbloqueos.

Para ilustrar esta regla, consideremos un escenario con cinco filósofos numerados del 1 al 5 y cinco palillos colocados en el centro de la mesa. Cada filósofo necesita dos palillos para poder comer.

Supongamos que los palillos están asignados de la siguiente manera:

***Filósofo 1***: Palillo 1 y Palillo 2. 

***Filósofo 2***: Palillo 2 y Palillo 3 

***Filósofo 3***: Palillo 3 y Palillo 4 

***Filósofo 4***: Palillo 4 y Palillo 5 

***Filósofo 5***: Palillo 5 y Palillo 1 

Ahora, si un filósofo realiza una solicitud para tomar un palillo específico, podemos verificar si esa solicitud podría ser satisfecha sin generar un interbloqueo. Por ejemplo, si el Filósofo 1 solicita el Palillo 3, podemos ver que no sería posible satisfacer su solicitud ya que el Palillo 3 ya está asignado al Filósofo 2. En este caso, si el Filósofo 1 insiste en esperar por el Palillo 3, se generaría un interbloqueo ya que el Filósofo 1 está esperando por el Palillo 3 mientras que el Filósofo 2 está esperando por el Palillo 2.

Sin embargo, si el Filósofo 1 solicita el Palillo 5, podemos ver que su solicitud podría ser satisfecha ya que el Palillo 5 no está asignado a ningún otro filósofo. En este caso, no se generaría un interbloqueo si el Filósofo 1 espera por el Palillo 5, ya que ningún otro filósofo está esperando por el Palillo 1.

En conclusión, la regla simple para determinar si una solicitud de palillos podría ser satisfecha sin dar lugar a interbloqueos es verificar si todos los palillos requeridos están disponibles. Si todos los palillos necesarios para que un filósofo pueda comer están disponibles, entonces se puede satisfacer la solicitud sin generar un interbloqueo.
# <a name="pregunta-9"></a>**Pregunta 9**
Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?
## <a name="respuesta-8"></a>**Respuesta**
Esta suposición optimista puede violarse en el siguiente escenario:

***Solicitudes excesivas de recursos:*** Un proceso puede realizar solicitudes excesivas de recursos más allá de sus necesidades reales. Por ejemplo, si un proceso solicita más recursos de los que realmente necesita, podría agotar los recursos del sistema y causar un interbloqueo.

***Solicitudes maliciosas de recursos:*** Un proceso puede realizar solicitudes maliciosas de recursos con el objetivo de provocar un interbloqueo en el sistema. Por ejemplo, un proceso podría solicitar recursos y retenerlos sin liberarlos intencionalmente, lo que causaría una escasez de recursos para otros procesos y llevaría a un interbloqueo.

***Secuencias de solicitudes inapropiadas:*** Si los procesos solicitan y liberan los recursos de manera inapropiada, violando las restricciones de asignación de recursos, también se puede violar la suposición optimista. Por ejemplo, si un proceso solicita recursos en un orden incorrecto o no libera los recursos en el momento adecuado, podría generar un interbloqueo.

En conclusión, la suposición optimista en el algoritmo de detección de interbloqueos es que los procesos actuarán de manera cooperativa y seguirán las restricciones de asignación de recursos. Sin embargo, esta suposición puede violarse cuando los procesos realizan solicitudes excesivas o maliciosas de recursos, o cuando no siguen secuencias apropiadas de solicitudes y liberaciones de recursos.
