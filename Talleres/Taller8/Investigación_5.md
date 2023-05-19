Investigación N°5

Juan Diego Claro - 2192508

## *Pregunta 1*

Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

### Respuesta:

Es importante que un planificador diferencie entre un programa limitado por I/O (entrada/salida) y por CPU (unidad central de procesamiento) porque estos tipos de programas tienen características y requisitos diferentes, y su gestión eficiente puede mejorar el rendimiento general del sistema. Algunas razones claves son:

**Optimización del tiempo de respuesta:** Los programas limitados por I/O suelen requerir tiempos de espera significativos para completar operaciones de lectura/escritura en dispositivos de E/S, como discos duros o redes. Estos programas pasan la mayor parte de su tiempo esperando la finalización de las operaciones de E/S en lugar de utilizar activamente la CPU. Por otro lado, los programas limitados por CPU requieren una mayor cantidad de tiempo de ejecución en la CPU. Al diferenciar entre ambos tipos, el planificador puede asignar los recursos de manera más eficiente y dar prioridad a los programas que necesitan más tiempo de CPU para maximizar el rendimiento global del sistema.

**Reducción del tiempo de bloqueo:** Cuando un programa está esperando una operación de E/S, puede bloquear recursos como la CPU o la memoria, impidiendo que otros programas se ejecuten. Al identificar programas limitados por I/O, el planificador puede realizar una planificación adecuada para asignar recursos a otros programas que puedan aprovechar la CPU y evitar bloqueos innecesarios. Esto mejora la capacidad de respuesta del sistema al permitir que otros procesos se ejecuten y utilicen la CPU mientras se espera la finalización de las operaciones de E/S.

**Gestión eficiente de la concurrencia:** Algunos sistemas operativos y planificadores utilizan técnicas de concurrencia, como la multitarea, para permitir la ejecución simultánea de múltiples procesos. Al diferenciar entre programas limitados por I/O y por CPU, se pueden aplicar diferentes estrategias de planificación y asignación de recursos. Por ejemplo, se pueden asignar procesos limitados por I/O a hilos de ejecución o procesos en segundo plano, mientras que los programas limitados por CPU pueden recibir una mayor prioridad para aprovechar al máximo la capacidad de procesamiento.

**Optimización del rendimiento global:** Al distinguir entre programas limitados por I/O y por CPU, el planificador puede optimizar la utilización de recursos y minimizar los tiempos de espera innecesarios. Esto resulta en un mejor rendimiento global del sistema, ya que se pueden realizar más operaciones de E/S en paralelo y se pueden ejecutar más procesos en la CPU, maximizando la eficiencia de ambos tipos de programas.

## *Pregunta 2*

Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

### Respuesta:

En determinadas configuraciones, la utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto debido a la asignación ineficiente de recursos o a la competencia entre diferentes procesos o tareas.

Cuando la CPU está completamente utilizada por un proceso intensivo en términos de cómputo, es posible que otros procesos que requieren tiempo de CPU experimenten retrasos en su ejecución. Esto puede resultar en un tiempo de respuesta más lento para esos procesos, lo que afecta negativamente la capacidad de respuesta general del sistema.

Además, si se asigna una cantidad excesiva de tiempo de CPU a un proceso intensivo en términos de cómputo, otros procesos que no requieren tanto tiempo de CPU pueden experimentar un tiempo de respuesta más rápido del esperado. Esto puede llevar a una utilización ineficiente de los recursos de la CPU, ya que se le da más tiempo de CPU a un proceso de lo necesario, mientras que otros procesos pueden estar esperando para ejecutarse.

Otro factor que puede generar conflicto entre la utilización de la CPU y el tiempo de respuesta es la planificación de tareas. Si el planificador no asigna correctamente los tiempos de CPU de cada tarea, puede dar lugar a situaciones en las que procesos críticos tengan que esperar más tiempo de lo necesario para recibir tiempo de CPU, lo que afecta su tiempo de respuesta. Esto puede ocurrir cuando se utilizan algoritmos de planificación ineficientes o cuando no se priorizan adecuadamente las tareas según su importancia o prioridad.

## *Pregunta 3*

Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

### Respuesta:

En determinadas configuraciones, el tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto debido a la asignación de recursos y la planificación de tareas.

El tiempo medio de procesamiento se refiere al promedio de tiempo que tarda un proceso en completarse desde el momento en que se inicia hasta que se finaliza. Este tiempo se ve influenciado por varios factores, como la capacidad de procesamiento de la CPU, la carga de trabajo del sistema y la eficiencia del algoritmo de planificación.

El tiempo máximo de espera se refiere al tiempo máximo que un proceso está dispuesto a esperar para recibir tiempo de CPU y ser atendido. Cuando un proceso supera este tiempo máximo de espera, puede considerarse que ha ocurrido un incumplimiento del tiempo límite o una situación de bloqueo.

El conflicto entre el tiempo medio de procesamiento y el tiempo máximo de espera surge cuando se busca optimizar uno de estos factores a expensas del otro. Por ejemplo, si se prioriza el tiempo medio de procesamiento y se asignan más recursos de CPU a los procesos para acelerar su finalización, es posible que algunos procesos tengan que esperar más tiempo en la cola de espera, aumentando el tiempo máximo de espera para ellos.

Por otro lado, si se da prioridad al tiempo máximo de espera y se asigna tiempo de CPU de manera más equitativa entre los procesos, es probable que el tiempo medio de procesamiento aumente, ya que los procesos pueden experimentar retrasos debido a la espera en la cola de ejecución.

La optimización entre el tiempo medio de procesamiento y el tiempo máximo de espera depende del tipo de sistema y los requisitos específicos. En algunos casos, puede ser aceptable sacrificar un poco del tiempo medio de procesamiento para garantizar que los procesos no superen un límite de espera crítico. En otros casos, es posible que se priorice el rendimiento general y se permita que algunos procesos experimenten tiempos de espera más largos a cambio de una mayor eficiencia promedio de procesamiento.

## *Pregunta 4*

Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

### Respuesta:

En determinadas configuraciones, la utilización de los dispositivos de entrada/salida (I/O) y la utilización de la CPU pueden entrar en conflicto debido a la naturaleza diferente de estas operaciones y la capacidad de procesamiento del sistema.

Los dispositivos I/O, como discos duros, redes o periféricos, tienen velocidades de transferencia de datos mucho más lentas en comparación con la CPU. Cuando un programa realiza operaciones de entrada/salida, como leer o escribir datos en disco o enviar y recibir datos a través de una red, se produce una espera significativa mientras se llevan a cabo estas operaciones.

Si un programa realiza muchas operaciones de I/O y la CPU se encuentra ociosa durante esos períodos de espera, puede haber un subaprovechamiento de los recursos de la CPU. La CPU tiene capacidad de procesamiento adicional que no se está utilizando, lo que puede ralentizar el rendimiento general del sistema.

Por otro lado, si la CPU está altamente utilizada por procesos intensivos en términos de cómputo y se realizan operaciones de I/O, puede haber conflictos en el rendimiento. Las operaciones de I/O pueden requerir tiempo de CPU para procesar y gestionar los datos, lo que puede afectar la capacidad de la CPU para atender a otros procesos que también necesitan tiempo de CPU. Esto puede provocar una disminución en la velocidad de respuesta y un aumento en los tiempos de espera de los procesos.

Para manejar este conflicto, es importante implementar técnicas de administración de recursos y planificación adecuadas. Algunas estrategias incluyen:

**Priorizar la asignación de recursos:** Es importante asignar de manera equitativa los recursos de la CPU entre los procesos intensivos en I/O y los procesos intensivos en cómputo. Esto puede requerir una planificación adecuada y un equilibrio entre las tareas de I/O y las tareas de CPU.

**Utilizar técnicas de E/S asíncronas:** En lugar de esperar activamente a que se completen las operaciones de I/O, se pueden implementar técnicas asíncronas para realizar operaciones de manera concurrente mientras se continúa con otras tareas de CPU. Esto permite un mejor aprovechamiento de la CPU durante los períodos de espera de I/O.

**Utilizar múltiples hilos o procesos:** Al dividir las tareas en múltiples hilos o procesos, se puede aprovechar mejor la capacidad de procesamiento de la CPU mientras se realizan operaciones de I/O en paralelo. Esto permite que la CPU atienda a otros hilos o procesos mientras uno está esperando una operación de I/O.

## *Pregunta 5*

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (\# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

### Respuesta:

La iamgen se encuentra en otro archivo en esta misma carpeta.

## *Pregunta 6*

Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

### Respuesta:

Prioridades: P2: 1 ms P5: 5 ms P1: 10 ms P3: 2 ms P4: 1 ms Round Robin: P1: 9 ms P2: 1 ms P3: 2 ms P4: 1 ms P5: 5 ms SJF: P2: 1 ms P4: 1 ms P3: 2 ms P5: 5 ms P1: 10 ms FCFS según tiempo de ráfaga sin prioridades: P2: 1 ms P4: 1 ms P3: 2 ms P5: 5 ms P1: 10 ms FCFS: P1: 10 ms P2: 1 ms P3: 2 ms P4: 1 ms P5: 5 ms

## *Pregunta 7*

¿Cuál es el tiempo de espera de cada proceso para cada algoritmo?

### Respuesta:

FCFS: P1: 0 milisegundos P2: 10 milisegundos (tiempo de ejecución de P1) P3: 11 milisegundos (tiempo de ejecución de P1 y P2) P4: 13 milisegundos (tiempo de ejecución de P1, P2 y P3) P5: 14 milisegundos (tiempo de ejecución de P1, P2, P3 y P4) FCFS según tiempo de ráfaga (sin prioridades): P2: 0 milisegundos P4: 1 milisegundos (tiempo de ejecución de P2) P3: 2 milisegundos (tiempo de ejecución de P2 y P4) P5: 4 milisegundos (tiempo de ejecución de P2, P4 y P3) P1: 9 milisegundos (tiempo de ejecución de P2, P4, P3 y P5) SJF: P2: 0 milisegundos P4: 1 milisegundos (tiempo de ejecución de P2) P3: 2 milisegundos (tiempo de ejecución de P2 y P4) P5: 4 milisegundos (tiempo de ejecución de P2, P4 y P3) P1: 9 milisegundos (tiempo de ejecución de P2, P4, P3 y P5) Según Prioridad: P2: 0 ms P5: 1 ms (tiempo de ejecución de P2) P1: 6 ms (tiempo de ejecución de P2 y P5) P3: 16 ms (tiempo de ejecución de P2, P5 y P1) P4: 18 ms (tiempo de ejecución de P2, P5, P1 y P3) Round Robin: P1: Tiempo de espera: 0 ms P2: Tiempo de espera: 9 ms P3: Tiempo de espera: 10 ms P4: Tiempo de espera: 12 ms P5: Tiempo de espera: 13 ms

## *Pregunta 8*

¿Qué algoritmo puede dar lugar a bloqueos indefinidos?

### Respuesta:

Planificación por prioridades

## *Pregunta 9*

Considere un sistema que implementa una planificación por colas multinivel. ¿Qué estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

### Respuesta:

**Asignar una cola de alta prioridad al proceso del usuario:** El proceso del usuario se debe colocar en una cola de alta prioridad. Esto garantiza que el proceso tenga acceso rápido a los recursos de CPU y se ejecute antes que otros procesos de menor prioridad.

**Utilizar una política de planificación apropiada:** Seleccionar una política de planificación adecuada para la cola de alta prioridad puede ayudar a maximizar el tiempo de CPU asignado al proceso del usuario. Algunas políticas comunes son Round Robin, Shortest Job Next o Prioridad Expulsiva. Estas políticas pueden adaptarse a las necesidades específicas del sistema y garantizar una asignación justa y eficiente de los recursos de CPU.

**Evitar bloqueos y esperas innecesarias:** Es importante minimizar los bloqueos y las esperas innecesarias que puedan ocurrir durante la ejecución del proceso del usuario. Estos bloqueos y esperas pueden reducir el tiempo de CPU asignado al proceso. Se deben tomar medidas para evitar condiciones de carrera, bloqueos de recursos y esperas innecesarias.

**Considerar mecanismos de prelación y envejecimiento:** Si otros procesos de baja prioridad están utilizando mucho tiempo de CPU, se pueden utilizar mecanismos de prelación y envejecimiento para aumentar la prioridad del proceso del usuario. Esto garantiza que el proceso del usuario reciba una asignación adecuada de tiempo de CPU incluso cuando otros procesos consumen recursos.
