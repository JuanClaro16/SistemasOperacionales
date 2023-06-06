Investigación N°8

Juan Diego Claro - 2192508
# <a name="pregunta-1"></a>***Pregunta 1***
Explique la diferencia entre los conceptos de fragmentación interna y externa.
## <a name="respuesta"></a>**Respuesta:**
Existen dos tipos principales de fragmentación: fragmentación interna y fragmentación externa.

**Fragmentación interna:** Ocurre cuando hay espacio desperdiciado dentro de un bloque de memoria asignado. En los sistemas operativos, la memoria se divide en bloques o páginas de un tamaño específico para alojar procesos o datos. Cuando un bloque se asigna a un proceso, es posible que el tamaño del proceso sea menor que el tamaño del bloque. Como resultado, el espacio no utilizado dentro del bloque se desperdicia y se produce fragmentación interna.

La fragmentación interna es más común en sistemas que utilizan asignación de memoria basada en particiones fijas, donde la memoria se divide en bloques de tamaño fijo y se asigna a los procesos. También puede ocurrir en sistemas de asignación dinámica de memoria cuando se asignan bloques más grandes de lo necesario.

**Fragmentación externa:** Se produce cuando hay suficiente espacio libre total en la memoria, pero no está disponible en un solo bloque continuo para satisfacer las solicitudes de asignación de memoria. Esto puede deberse a la presencia de bloques pequeños e intercalados de memoria no utilizada entre los bloques asignados. Aunque la cantidad total de memoria libre puede ser suficiente para satisfacer una solicitud, la fragmentación externa impide la asignación de memoria contigua y, por lo tanto, puede resultar en un rendimiento subóptimo del sistema. La fragmentación externa es más común en sistemas que utilizan asignación de memoria basada en particiones variables o en sistemas de asignación dinámica de memoria. A medida que los procesos se cargan y liberan de la memoria, los bloques de memoria se dividen y se fragmentan en unidades más pequeñas, lo que puede dificultar la asignación de bloques contiguos de memoria.

En conclusión, la fragmentación interna se refiere al desperdicio de espacio dentro de un bloque de memoria asignado, mientras que la fragmentación externa se refiere a la falta de bloques de memoria contiguos, a pesar de que hay suficiente espacio libre total en el sistema. Ambos tipos de fragmentación pueden afectar negativamente el rendimiento y la eficiencia de un sistema operativo.
# <a name="pregunta-2"></a>***Pregunta 2***
¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?
## <a name="respuesta-1"></a>**Respuesta:**
El editor de ensamblador, también conocido como ensamblador, es una herramienta que se utiliza para convertir el código fuente escrito en lenguaje ensamblador a código ejecutable en lenguaje de máquina. El ensamblador realiza esta tarea asignando direcciones de memoria a las instrucciones y los datos del programa.

El ensamblador cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria de la siguiente manera:

**Traducción de mnemotécnicos a códigos de operación:** El ensamblador toma las instrucciones escritas en lenguaje ensamblador, que utilizan mnemotécnicos (por ejemplo, “ADD” para sumar) y los traduce a los códigos de operación correspondientes en lenguaje de máquina. Cada instrucción tiene un código de operación único que representa la operación específica que se debe realizar.

**Asignación de direcciones de memoria:** Una vez que se ha traducido el código fuente a códigos de operación, el ensamblador asigna direcciones de memoria a cada instrucción y dato del programa. Esto implica asignar una dirección única en la memoria del sistema a cada instrucción y dato para que puedan ser localizados y ejecutados correctamente.

El ensamblador utiliza un contador de programa (PC) para realizar el seguimiento de las direcciones de memoria a medida que va asignando las instrucciones y los datos. El PC se incrementa secuencialmente a medida que se asignan las instrucciones y los datos, asegurando así que cada uno tenga una dirección única.

El cambio en el acoplamiento de las instrucciones y los datos a direcciones de memoria es esencial para que el procesador pueda ejecutar el programa. Las instrucciones deben estar ubicadas en las direcciones de memoria adecuadas para que el procesador las encuentre y las ejecute en el orden correcto. Del mismo modo, los datos deben estar en las direcciones de memoria correspondientes para que las instrucciones puedan acceder a ellos correctamente durante la ejecución del programa.
# <a name="pregunta-3"></a>***Pregunta 3***
¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?
## <a name="respuesta-2"></a>**Respuesta:**
Para facilitar el acoplamiento de memoria, el compilador debe proporcionar al editor de montaje la siguiente información:

**1. Código objeto o archivo intermedio:** El compilador genera un código objeto o un archivo intermedio que contiene el código fuente traducido a lenguaje de máquina, pero aún no está en formato ejecutable. Este archivo incluye las instrucciones y los datos del programa, así como información adicional necesaria para el ensamblador.

**2. Tabla de símbolos:** La tabla de símbolos es una estructura de datos que contiene la información sobre los símbolos utilizados en el programa, como nombres de variables y funciones. Esta tabla proporciona al ensamblador información sobre las direcciones de memoria asociadas a cada símbolo y su tipo (por ejemplo, variable o función).

**3. Información de reubicación:** La información de reubicación indica al ensamblador qué partes del código objeto necesitan ser ajustadas o “reubicadas” una vez que se cargan en la memoria para su ejecución. Esta información permite al ensamblador modificar las direcciones de memoria relativas a direcciones absolutas, para que el programa se ejecute correctamente en cualquier ubicación de memoria.

**4. Información de bibliotecas y enlaces externos:** Si el programa utiliza bibliotecas externas o tiene enlaces con otros módulos, el compilador debe proporcionar información sobre estos enlaces al ensamblador. Esto incluye la ubicación de las bibliotecas externas y cómo se deben resolver las referencias a símbolos externos durante el proceso de enlace.

Al proporcionar esta información al editor de montaje, el compilador facilita el acoplamiento de memoria al asegurar que las instrucciones y los datos se asignen correctamente a las direcciones de memoria correspondientes. La tabla de símbolos y la información de reubicación son especialmente importantes para garantizar que los símbolos se resuelvan correctamente y que las direcciones de memoria sean ajustadas según sea necesario durante el proceso de ensamblaje. Esto permite que el programa se ejecute correctamente en cualquier ubicación de memoria sin errores de acoplamiento.
# <a name="pregunta-4"></a>***Pregunta 4***
En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?
## <a name="respuesta-3"></a>**Respuesta:**
Para determinar cómo se situarían los procesos en memoria utilizando los algoritmos de primer ajuste, mejor ajuste y peor ajuste, y determinar qué algoritmo hace un uso más eficiente de la memoria, analicemos cada uno de ellos en función de las particiones de memoria dadas:

Particiones de memoria: 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB.

Procesos a situar: 212 KB, 417 KB, 112 KB, y 426 KB.

**1. Primer ajuste (First Fit):**

*-*El primer proceso de 212 KB se asignaría a la partición de 500 KB (quedando 288 KB libres).

*-*El segundo proceso de 417 KB no cabe en ninguna partición existente, por lo que se busca la siguiente partición disponible y se asigna a la partición de 600 KB (quedando 183 KB libres).

*-*El tercer proceso de 112 KB se asignaría a la partición de 200 KB (quedando 88 KB libres).

*-*El cuarto proceso de 426 KB no cabe en ninguna partición existente, por lo que se busca la siguiente partición disponible y se asigna a la partición de 600 KB (quedando 174 KB libres).

**2. Mejor ajuste (Best Fit):**

*-*El primer proceso de 212 KB se asignaría a la partición de 300 KB (quedando 88 KB libres).

*-*El segundo proceso de 417 KB se asignaría a la partición de 500 KB (quedando 83 KB libres).

*-*El tercer proceso de 112 KB se asignaría a la partición de 200 KB (quedando 88 KB libres).

*-*El cuarto proceso de 426 KB se asignaría a la partición de 600 KB (quedando 174 KB libres).

**3. Peor ajuste (Worst Fit):**

*-*El primer proceso de 212 KB se asignaría a la partición de 600 KB (quedando 388 KB libres).

*-*El segundo proceso de 417 KB se asignaría a la partición de 600 KB (quedando 171 KB libres).

*-*El tercer proceso de 112 KB se asignaría a la partición de 300 KB (quedando 188 KB libres).

*-*El cuarto proceso de 426 KB se asignaría a la partición de 500 KB (quedando 74 KB libres).

En términos de eficiencia de la memoria, el algoritmo de mejor ajuste tiende a hacer un uso más eficiente de la memoria, ya que busca la partición más ajustada al tamaño del proceso. Sin embargo, en el escenario específico de estas particiones y procesos, el primer ajuste también resulta en un uso eficiente de la memoria, ya que no queda mucha memoria no utilizada.

En general, la elección del algoritmo de ajuste depende del caso específico y las características de los procesos y particiones. En algunos casos, el primer ajuste puede ser más rápido, mientras que en otros casos el mejor ajuste puede ser más eficiente en el uso de la memoria.
# <a name="pregunta-5"></a>***Pregunta 5***
La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas? 

*1.* Asignación contigua de memoria.

*2.* Segmentación pura.

*3.* Paginación pura.
## <a name="respuesta-4"></a>**Respuesta:**
Para soportar la asignación dinámica de memoria en los esquemas de asignación contigua de memoria y segmentación pura, se necesitarían ciertos elementos y técnicas adicionales. A continuación se mostrarán:

**1. Asignación contigua de memoria:** En el esquema de asignación contigua de memoria, se asignan bloques de memoria contiguos a los procesos. Para habilitar la asignación dinámica de memoria en este esquema, se requiere lo siguiente:

*-*Un mecanismo para solicitar y liberar memoria durante la ejecución del programa. Esto implica proporcionar funciones o llamadas al sistema que permitan a los programas solicitar memoria adicional cuando la necesiten y liberarla cuando ya no la necesiten.

*-*Un administrador de memoria que controle y gestione las asignaciones y liberaciones de memoria dinámica. Este administrador debe llevar un seguimiento de los bloques de memoria asignados y libres, y asignar nuevos bloques a medida que se soliciten.

*-*Mecanismos de reubicación y reubicación dinámica para ajustar las direcciones de memoria de los procesos y los datos en tiempo de ejecución. Esto es necesario ya que la asignación de memoria dinámica puede requerir la reorganización de los bloques existentes para hacer espacio para los nuevos bloques asignados.

*-*Técnicas de gestión de fragmentación para manejar la fragmentación interna y externa que puede ocurrir debido a las asignaciones y liberaciones de memoria dinámica. Esto puede incluir técnicas como compactación, reasignación de bloques y estrategias de combinación para reducir la fragmentación y optimizar el uso de la memoria.

**2. Segmentación pura:** En el esquema de segmentación pura, los procesos se dividen en segmentos lógicos más pequeños, como segmentos de código, datos y pila. Para admitir la asignación dinámica de memoria en este esquema, se requiere lo siguiente:

*-*Un mecanismo para solicitar y liberar segmentos de memoria durante la ejecución del programa. Esto implica proporcionar funciones o llamadas al sistema que permitan a los programas solicitar segmentos de memoria adicionales cuando los necesiten y liberarlos cuando ya no los necesiten.

*-*Un administrador de memoria segmentada que controle y gestione las asignaciones y liberaciones de segmentos de memoria dinámica. Este administrador debe llevar un seguimiento de los segmentos asignados y libres, y asignar nuevos segmentos a medida que se soliciten.

*-*Mecanismos de reubicación y reubicación dinámica para ajustar las direcciones de los segmentos de memoria asignados en tiempo de ejecución. Esto es necesario ya que la asignación dinámica de segmentos puede requerir cambios en las direcciones base y límite de los segmentos existentes y la asignación de nuevos segmentos.

*-*Técnicas de gestión de fragmentación segmentada para manejar la fragmentación que puede ocurrir debido a las asignaciones y liberaciones de segmentos dinámicos. Esto puede incluir técnicas como la compactación de segmentos y la asignación estratégica de segmentos para minimizar la fragmentación y optimizar el uso de la memoria.

**3. Paginación pura:**

*-*Un mecanismo para solicitar y liberar páginas de memoria durante la ejecución del programa. Esto implica proporcionar funciones o llamadas al sistema que permitan a los programas solicitar páginas de memoria adicionales cuando las necesiten y liberarlas cuando ya no las necesiten.

*-*Un administrador de memoria paginada que controle y gestione las asignaciones y liberaciones de páginas de memoria dinámica. Este administrador debe llevar un seguimiento de las páginas asignadas y libres, y asignar nuevas páginas a medida que se soliciten.

*-*Mecanismos de asignación y reubicación de marcos de página. Los marcos de página son las unidades básicas de asignación de memoria en el esquema de paginación. Se requiere un mecanismo para asignar marcos de página física a las páginas virtuales de los procesos y reubicar los marcos de página en tiempo de ejecución, ya que las asignaciones de memoria dinámica pueden requerir cambios en los marcos de página asignados.

*-*Una tabla de páginas o tabla de asignación de páginas para cada proceso, que mapea las páginas virtuales a los marcos de página física asignados. Esta tabla debe actualizarse dinámicamente a medida que se realicen asignaciones y liberaciones de páginas.

*-*Mecanismos de gestión de memoria virtual y paginación sobresaliente. La asignación dinámica de memoria en paginación pura puede requerir el uso de técnicas como la paginación sobresaliente (swapping) para mover páginas entre la memoria principal y el almacenamiento secundario, según sea necesario, para administrar la cantidad limitada de memoria física disponible.

*-*Técnicas de gestión de fragmentación de páginas para minimizar la fragmentación y optimizar el uso de la memoria. Esto puede incluir técnicas como la compactación de páginas o la asignación estratégica de páginas para reducir la fragmentación interna y externa.
# <a name="pregunta-6"></a>***Pregunta 6***
Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:

*1.* Fragmentación externa.

*2.* Fragmentación interna.

*3.* Capacidad de compartir código.
## <a name="respuesta-5"></a>**Respuesta:**
**1. Fragmentación externa:**

*-*Asignación continua de memoria: Este esquema puede sufrir de fragmentación externa, ya que los bloques de memoria asignados a los procesos pueden dejar espacios vacíos entre ellos. A medida que se asignan y liberan procesos, estos espacios vacíos pueden acumularse y reducir la eficiencia en el uso de la memoria.

*-*Segmentación pura: En la segmentación pura, la fragmentación externa puede ser minimizada, ya que los procesos se dividen en segmentos lógicos más pequeños, y los segmentos se pueden asignar y liberar independientemente. Esto significa que los segmentos se pueden asignar en cualquier espacio disponible sin dejar grandes espacios vacíos, lo que reduce la fragmentación externa en comparación con la asignación continua de memoria.

*-*Paginación pura: La paginación pura también puede minimizar la fragmentación externa, ya que las páginas de memoria se asignan y liberan individualmente. Las páginas se pueden asignar en cualquier espacio disponible, lo que ayuda a evitar grandes espacios vacíos y reduce la fragmentación externa.

**2. Fragmentación interna:** 

*-*Asignación continua de memoria: Este esquema puede sufrir de fragmentación interna, ya que los procesos se asignan en bloques de memoria contiguos, y puede haber espacio no utilizado dentro de los bloques. Esto se debe a que los bloques de memoria se asignan en unidades fijas, y si un proceso no ocupa todo el espacio asignado, se produce desperdicio de memoria.

*-*Segmentación pura: En la segmentación pura, la fragmentación interna es mínima o inexistente. Cada segmento se asigna según el tamaño requerido para ese segmento específico, lo que evita el desperdicio de memoria causado por la fragmentación interna en la asignación continua de memoria.

*-*Paginación pura: La paginación pura también puede sufrir de fragmentación interna. Las páginas se asignan en unidades fijas y si un proceso no ocupa toda una página, se produce fragmentación interna en forma de espacio no utilizado en la última página asignada.

**3. Capacidad de compartir código:** 

*-*Asignación continua de memoria: En este esquema, la capacidad de compartir código es limitada, ya que los procesos se asignan en bloques de memoria contiguos y no se permite que varios procesos compartan la misma área de memoria.

*-*Segmentación pura: La segmentación pura permite una mejor capacidad de compartir código, ya que los segmentos de código pueden ser compartidos entre múltiples procesos. Los segmentos de código se asignan de forma independiente y se pueden compartir sin interferir con otros segmentos de datos o de pila.

*-*Paginación pura: La paginación pura también facilita la capacidad de compartir código. Las páginas de memoria se pueden compartir entre procesos, lo que permite que varias instancias de un programa compartan el mismo código.
# <a name="pregunta-7"></a>***Pregunta 7***
En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.

*1.* ¿Por qué?

*2*. ¿Como podía el OS permitir el acceso a otras zonas de memoria?

*3.* ¿Por qué debería o por qué no debería?
# <a name="respuesta-6"></a>**Respuesta:**
**1.** En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad debido a los mecanismos de protección de memoria implementados. La paginación se basa en la traducción de direcciones virtuales a direcciones físicas utilizando tablas de páginas. Cada proceso tiene su propia tabla de páginas que mapea las direcciones virtuales del proceso a las direcciones físicas correspondientes.

Cuando un proceso intenta acceder a una dirección virtual, el hardware del sistema operativo utiliza la tabla de páginas del proceso para traducir esa dirección a una dirección física. Si la dirección virtual no está mapeada en la tabla de páginas del proceso, se genera una excepción de violación de página o acceso no válido, lo que impide el acceso a una zona de memoria que no es propiedad del proceso.

**2.** El sistema operativo puede permitir el acceso a otras zonas de memoria mediante mecanismos de permisos y asignación controlada de memoria. Estos mecanismos podrían incluir:

*-*Uso de permisos de página: Cada entrada en la tabla de páginas puede tener bits de permisos que indican si una página es de solo lectura, de escritura, ejecutable o no accesible. El sistema operativo podría modificar estos permisos para permitir a un proceso acceder a ciertas zonas de memoria de solo lectura, por ejemplo, para compartir datos entre procesos.

*-*Mapeo de memoria compartida: El sistema operativo puede permitir que varios procesos compartan una región de memoria física mapeándola en sus tablas de páginas respectivas. Esto permite que los procesos accedan y compartan la misma zona de memoria.

*-*Asignación explícita de memoria compartida: El sistema operativo podría proporcionar llamadas al sistema que permitan a los procesos solicitar y asignar regiones de memoria compartida de manera explícita. Esto permitiría el acceso controlado a zonas específicas de memoria compartida.

**3.**La decisión de permitir o no el acceso a otras zonas de memoria depende de los requisitos de seguridad y aislamiento del sistema. Permitir el acceso a otras zonas de memoria puede ser beneficioso en escenarios de memoria compartida y comunicación eficiente entre procesos. Sin embargo, también puede introducir riesgos de seguridad si no se implementan adecuadas medidas de protección. Permitir el acceso a zonas de memoria no autorizadas podría resultar en fugas de información, corrupción de datos o la ejecución de código malicioso.

Por lo tanto, es importante equilibrar la necesidad de acceso a otras zonas de memoria con los riesgos de seguridad y mantener un control estricto sobre los permisos y la asignación de memoria para garantizar un entorno de ejecución seguro y confiable.
# <a name="pregunta-8"></a>***Pregunta 8***
Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.
## <a name="respuesta-7"></a>**Respuesta:**
El mecanismo de paginación y el de segmentación difieren en la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas. A continuación, se presenta una comparación:

**1. Paginación:**

En la paginación, las direcciones virtuales se dividen en páginas de tamaño fijo y las direcciones físicas se dividen en marcos de página de tamaño igual al de las páginas. Para realizar la traducción de direcciones, se utiliza una tabla de páginas, que es una estructura de datos que mapea las páginas virtuales a los marcos de página física correspondientes.

La tabla de páginas debe mantenerse en memoria para que la traducción de direcciones sea eficiente. La cantidad de memoria requerida por la tabla de páginas depende del tamaño de la dirección virtual y del tamaño de página utilizado. La tabla de páginas contiene una entrada para cada página virtual en el espacio de direcciones del proceso. Por lo tanto, la cantidad de memoria requerida por la tabla de páginas es proporcional al número de páginas virtuales en el proceso.

**2. Segmentación:**

En la segmentación, las direcciones virtuales se dividen en segmentos lógicos, como segmento de código, segmento de datos, segmento de pila, etc. Cada segmento tiene un tamaño variable y no necesariamente es de tamaño fijo. Los segmentos virtuales se asignan a segmentos físicos correspondientes, que también pueden tener tamaños variables.

Para realizar la traducción de direcciones, se utiliza una tabla de segmentos, que mapea los segmentos virtuales a los segmentos físicos correspondientes. La tabla de segmentos contiene una entrada para cada segmento virtual en el espacio de direcciones del proceso. Similar a la tabla de páginas, la tabla de segmentos debe mantenerse en memoria para una traducción de direcciones eficiente.

La cantidad de memoria requerida por la tabla de segmentos depende del número de segmentos virtuales en el proceso y del tamaño de cada segmento. Dado que los segmentos pueden tener tamaños variables, la cantidad de memoria requerida por la tabla de segmentos puede ser mayor en comparación con la tabla de páginas de paginación.
# <a name="pregunta-9"></a>***Pregunta 9***
Considere la siguiente tabla de segmento:

¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?

   0. 430

   1. 10

   2. 500

   3. 400

   4. 112
## <a name="respuesta-8"></a>**Respuesta:**
**Dirección lógica: 0.430**

Segmento: 0

Desplazamiento: 430

Dirección física = Base del segmento 0 + Desplazamiento = 219 + 430 = 649

**Dirección lógica: 1.10**

Segmento: 1

Desplazamiento: 10

Dirección física = Base del segmento 1 + Desplazamiento = 2300 + 10 = 2310

**Dirección lógica: 2.500**

Segmento: 2

Desplazamiento: 500

Dirección física = Base del segmento 2 + Desplazamiento = 90 + 500 = 590

**Dirección lógica: 3.400**

Segmento: 3

Desplazamiento: 400

Dirección física = Base del segmento 3 + Desplazamiento = 1327 + 400 = 1727

**Dirección lógica: 4.112**

Segmento: 4

Desplazamiento: 112

Dirección física = Base del segmento 4 + Desplazamiento = 1952 + 112 = 2064

Finalmente, las direcciones físicas correspondientes son:

**-**Dirección física para 0.430: 649

**-** Dirección física para 1.10: 2310

**-** Dirección física para 2.500: 590

**-** Dirección física para 3.400: 1727

**-**Dirección física para 4.112: 2064
