Investigación N°9

Juan Diego Claro - 2192508
# <a name="pregunta-1"></a>**Pregunta 1**
Explique el soporte por hardware requerido para implementar la paginación bajo demanda.
## <a name="respuesta"></a>**Respuesta:**
La paginación bajo demanda es una técnica utilizada en sistemas operativos y sistemas de gestión de memoria para administrar eficientemente la memoria virtual. Esta técnica permite que las aplicaciones accedan a un espacio de direcciones más grande que la memoria física disponible, al mover partes de la memoria que no están siendo utilizadas actualmente hacia el almacenamiento secundario, como el disco duro, y traerlas de vuelta a la memoria cuando sea necesario.

Para implementar la paginación bajo demanda, se requiere el soporte adecuado tanto a nivel de hardware como de software. A continuación, se describen los aspectos del soporte por hardware necesario para implementar esta técnica:

**Unidad de gestión de memoria (MMU):** La MMU es un componente crucial en la arquitectura de un sistema operativo que se encarga de la traducción de direcciones virtuales a direcciones físicas. La MMU utiliza tablas de paginación para mapear las páginas virtuales a las páginas físicas correspondientes. Este mapeo permite que el sistema operativo realice la gestión de la memoria virtual de manera transparente para las aplicaciones.

**Tablas de páginas:** Las tablas de páginas son estructuras de datos utilizadas por la MMU para realizar la traducción de direcciones virtuales a direcciones físicas. Estas tablas contienen entradas que describen las características de cada página virtual, como su ubicación en la memoria física, los permisos de acceso y los atributos de la página.

**Bit de validez/inválida:** Cada entrada en las tablas de páginas generalmente incluye un bit de validez o inválida que indica si una página virtual está actualmente en memoria física o se encuentra en almacenamiento secundario. Este bit es utilizado por la MMU para determinar si se debe cargar una página desde el almacenamiento secundario cuando se accede a ella.

**Almacenamiento secundario:** La paginación bajo demanda requiere que el sistema tenga un almacenamiento secundario, como un disco duro, para almacenar las páginas que no están en uso en un momento dado. Cuando se necesita acceder a una página que está actualmente en el almacenamiento secundario, se realiza una operación de intercambio (swap) para traerla de vuelta a la memoria física.

Estos son los aspectos básicos del soporte por hardware necesario para implementar la paginación bajo demanda. Es importante tener en cuenta que la implementación y los detalles exactos pueden variar dependiendo del sistema operativo y la arquitectura del hardware utilizado.
# <a name="pregunta-2"></a>**Pregunta 2**
¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?
## <a name="respuesta-1"></a>**Respuesta:**
La característica de “copia durante la escritura” (Copy-on-Write en inglés) es una técnica utilizada en sistemas operativos y sistemas de gestión de memoria para optimizar el rendimiento y la eficiencia al trabajar con estructuras de datos compartidas.

En circunstancias normales, cuando dos o más procesos comparten un mismo recurso, como una página de memoria o un archivo, cada proceso tendría su propia copia independiente de los datos. Sin embargo, con la técnica de copia durante la escritura, inicialmente se comparte la misma copia de los datos entre los procesos y solo se realiza una copia adicional cuando se modifica o escribe en ese recurso compartido.

Cuando se utiliza la característica de copia durante la escritura, se siguen los siguientes pasos:

**1. Compartir:** Cuando se crea un recurso compartido, como una página de memoria, se asigna a los procesos que lo requieren y se comparte entre ellos. No se realizan copias iniciales de los datos.

**2. Copia:** Si un proceso intenta modificar o escribir en el recurso compartido, se realiza una copia de los datos en ese momento. Esto se hace para garantizar que el proceso tenga su propia copia modificable y no afecte a otros procesos que puedan seguir utilizando la versión original.

La ventaja principal de utilizar la característica de copia durante la escritura es la reducción de la sobrecarga en términos de tiempo y recursos asociados con la duplicación innecesaria de datos compartidos. Al retrasar la copia hasta que sea necesaria, se evita la necesidad de copiar los datos inicialmente, lo que ahorra tiempo y espacio de memoria.

Además, esta técnica también permite un mayor grado de eficiencia en situaciones en las que muchos procesos comparten recursos grandes o donde los recursos compartidos se leen con mayor frecuencia que se escriben. En tales circunstancias, se minimiza la cantidad de copias realizadas y se reduce el uso de memoria adicional para mantener múltiples copias de los mismos datos.
# <a name="pregunta-3"></a>**Pregunta 3**
¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?
## <a name="respuesta-2"></a>**Respuesta:**
La característica de copia durante la escritura (Copy-on-Write) se basa principalmente en la gestión de la memoria y la administración de los recursos compartidos entre procesos. No hay un soporte de hardware específico requerido para implementar esta característica, ya que está más relacionada con el diseño y la implementación del sistema operativo y el software.

Sin embargo, existen ciertos componentes y características a nivel de hardware que pueden facilitar y mejorar la implementación de la copia durante la escritura. Estos son algunos aspectos relacionados con el hardware que pueden ser beneficiosos para implementar eficientemente la copia durante la escritura:

**Soporte de protección de memoria:** Para implementar la copia durante la escritura, es necesario tener un sistema operativo que proporcione mecanismos de protección de memoria. Esto implica que el hardware debe ser capaz de ofrecer protección de acceso a nivel de página o segmento, permitiendo que el sistema operativo controle y gestione los permisos de acceso a las páginas de memoria.

**Unidad de gestión de memoria (MMU):** La MMU es un componente esencial en la implementación de la copia durante la escritura. La MMU se encarga de la traducción de direcciones virtuales a direcciones físicas, y es necesaria para mantener y controlar los mapeos de memoria compartida. La MMU debe ser capaz de realizar cambios en los mapeos de memoria a medida que se realizan copias adicionales de datos compartidos.

**Mecanismos de interrupción y notificación:** El hardware puede ofrecer mecanismos de interrupción y notificación para alertar al sistema operativo y a los procesos sobre los cambios en los recursos compartidos. Esto puede ser útil para garantizar la sincronización adecuada y asegurar que se realicen copias adicionales cuando sea necesario.

**Caché de memoria:** Los sistemas con una jerarquía de caché de memoria pueden mejorar el rendimiento de la copia durante la escritura. Al mantener una copia en caché de las páginas de memoria compartida, se puede acceder a ellas de manera más rápida y eficiente, evitando operaciones costosas de lectura y escritura en la memoria principal.

Es importante destacar que estos aspectos son generales y pueden variar dependiendo de la arquitectura y el diseño del sistema operativo y el hardware específico utilizado. La implementación de la copia durante la escritura depende en gran medida del software y su capacidad para aprovechar las características proporcionadas por el hardware subyacente.
# <a name="pregunta-4"></a>**Pregunta 4**
Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.
## <a name="respuesta-3"></a>**Respuesta:**
Una situación en la que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas (LFU, por sus siglas en inglés) genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas (LRU, por sus siglas en inglés) es cuando hay una gran cantidad de páginas que se utilizan de forma intermitente pero con alta frecuencia.

Supongamos que en un sistema hay un conjunto de páginas que se utilizan con mayor frecuencia durante períodos cortos, pero luego se vuelven inactivas durante períodos más largos. En este caso, el algoritmo LFU podría ser más efectivo que el algoritmo LRU.

El algoritmo LFU registra la frecuencia de uso de cada página y reemplaza aquellas que tienen la menor frecuencia. En esta situación, el algoritmo LFU puede detectar que las páginas que se utilizan con mayor frecuencia durante los períodos cortos son más importantes y se mantendrán en memoria, mientras que las páginas que se vuelven inactivas durante los períodos largos serán reemplazadas por otras más activas.

Por otro lado, el algoritmo LRU se basa en el principio de que las páginas que se han utilizado recientemente tienen más probabilidad de ser utilizadas nuevamente en el futuro. Sin embargo, en el escenario descrito anteriormente, las páginas que se utilizan con mayor frecuencia durante períodos cortos pero luego se vuelven inactivas no serán consideradas “recientes” según el algoritmo LRU. Esto puede resultar en una mayor cantidad de fallos de página, ya que estas páginas serán reemplazadas por otras que fueron utilizadas recientemente pero tienen una menor probabilidad de ser utilizadas nuevamente en el corto plazo.
# <a name="pregunta-5"></a>**Pregunta 5**
Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.
## <a name="respuesta-4"></a>**Respuesta:**
Una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas (MFU, por sus siglas en inglés) genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas (LRU, por sus siglas en inglés) es cuando existen páginas que son utilizadas intensivamente en momentos específicos y luego se vuelven inactivas.

Supongamos que en un sistema hay un conjunto de páginas que se utilizan con alta frecuencia en ciertos intervalos de tiempo, pero luego se vuelven inactivas durante períodos prolongados. En este caso, el algoritmo MFU podría ser más efectivo que el algoritmo LRU.

El algoritmo MFU se basa en la idea de que las páginas que han sido utilizadas con mayor frecuencia son más importantes y tienen más probabilidad de ser utilizadas nuevamente en el futuro. En esta situación, el algoritmo MFU puede identificar las páginas que han sido utilizadas intensivamente en los intervalos específicos y mantenerlas en memoria, lo que reduce la probabilidad de fallos de página cuando se vuelven a utilizar en esos momentos.

Por otro lado, el algoritmo LRU se basa en el principio de que las páginas que se han utilizado más recientemente tienen más probabilidad de ser utilizadas nuevamente en el futuro. Sin embargo, en el escenario descrito anteriormente, las páginas que fueron utilizadas intensivamente en momentos específicos pero luego se vuelven inactivas no serán consideradas “recientes” según el algoritmo LRU. Esto podría llevar a una mayor cantidad de fallos de página, ya que estas páginas pueden ser reemplazadas por otras que fueron utilizadas recientemente pero no son relevantes en el contexto de las páginas intensivamente utilizadas en los momentos específicos.
# <a name="pregunta-6"></a>**Pregunta 6**
Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:

- Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?
- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?
## <a name="respuesta-5"></a>**Respuesta:**
En el caso de que se produzca un fallo de página y la página solicitada se encuentre en el conjunto compartido de marcos libres gestionado con la política de sustitución menos recientemente utilizadas, se pueden dar las siguientes situaciones:

**1. Generar espacio libre para la nueva página solicitada:** Si la página solicitada se encuentra en el conjunto compartido de marcos libres, significa que ha sido utilizada recientemente y se considera candidata para su reutilización. En este caso, se puede generar espacio libre para la nueva página solicitada siguiendo los siguientes pasos:

- Se selecciona la página menos recientemente utilizada del conjunto compartido de marcos libres.
- Se retira esta página del conjunto compartido y se libera su marco de memoria.
- El marco liberado se asigna a la nueva página solicitada, que ahora se convierte en una página residente.

**2. Activar la página residente y gestionar el conjunto compartido de marcos libres:** Si la página solicitada se encuentra en el conjunto compartido de marcos libres, pero aún se necesita como una página residente, se pueden llevar a cabo los siguientes pasos:

- La página solicitada se activa, lo que significa que se carga desde el almacenamiento secundario a un marco de memoria disponible.
- La página activada se mueve del conjunto compartido de marcos libres al conjunto de páginas residentes.
- Para hacer espacio en el conjunto compartido, se puede aplicar la política de sustitución menos recientemente utilizadas para seleccionar la página menos recientemente utilizada en el conjunto compartido y reemplazarla por una página residente que necesita ser almacenada en el conjunto compartido.
# <a name="pregunta-7"></a>**Pregunta 7**
Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización: 

- Uso de CPU 20% 
- Paginación de disco 97,7% 
- Otros dispositivos de I/O 5% 

Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta.

- Instalar una CPU más rápida.
- Instalar un disco de paginación de mayor tamaño.
- Incrementar el grado de multiprogramación.
- Instalar mas memoria principal.
- Instalar un disco duro mas rápidos.
## <a name="respuesta-6"></a>**Respuesta:**
**1. Instalar una CPU más rápida:** Sí, instalar una CPU más rápida permitiría mejorar la tasa de utilización de la CPU. Una CPU más rápida puede procesar las instrucciones y tareas más eficientemente, lo que podría reducir el tiempo de ejecución de los procesos y aumentar la capacidad de procesamiento de la CPU. Esto puede resultar en una mayor utilización de la CPU y, potencialmente, en un mejor rendimiento general del sistema.

**2. Instalar un disco de paginación de mayor tamaño:** No, instalar un disco de paginación de mayor tamaño no mejorará directamente la tasa de utilización de la CPU. El tamaño del disco de paginación está más relacionado con la capacidad de almacenamiento y el rendimiento del sistema de paginación, que afecta principalmente a la eficiencia de la gestión de memoria y a la reducción de los fallos de página. Si bien una gestión de memoria más eficiente puede tener un impacto indirecto en la utilización de la CPU, el tamaño del disco de paginación en sí no está directamente relacionado con la tasa de utilización de la CPU.

**3. Incrementar el grado de multiprogramación:** Sí, incrementar el grado de multiprogramación puede permitir mejorar la tasa de utilización de la CPU. La multiprogramación se refiere a la capacidad del sistema operativo para ejecutar múltiples procesos al mismo tiempo. Al aumentar el grado de multiprogramación, se permite que más procesos se ejecuten simultáneamente, lo que puede aumentar la utilización de la CPU al proporcionarle más tareas para procesar en paralelo.

**4. Instalar más memoria principal:** Sí, instalar más memoria principal puede permitir mejorar la tasa de utilización de la CPU. Una mayor cantidad de memoria principal permite almacenar más páginas y datos en la memoria, lo que reduce la necesidad de acceder al disco de paginación con frecuencia. Esto reduce los tiempos de espera asociados a los accesos a disco y permite que los procesos accedan más rápidamente a los datos necesarios, lo que puede aumentar la eficiencia y utilización de la CPU.

**5. Instalar un disco duro más rápido:** Sí, instalar un disco duro más rápido puede permitir mejorar la tasa de utilización de la CPU. Un disco duro más rápido puede reducir los tiempos de acceso a disco, lo que beneficia al sistema de paginación y a la gestión de la memoria. Menores tiempos de acceso a disco significan que los datos pueden ser leídos y escritos más rápidamente, reduciendo las esperas y mejorando el rendimiento general del sistema. Esto a su vez puede permitir una mayor utilización de la CPU al reducir los cuellos de botella relacionados con los accesos a disco.
