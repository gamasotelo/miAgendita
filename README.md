# Descripción

Mi agendita es una aplicación que permite al usuario organizar sus actividades,
con mi agendita serás capaz de sincronizar las actividades de tu dia a dia con distintos dispositivos a traves de tu cuenta de google,  podrás recibir notificaciones para mantenerte al tanto las tus proximas actividades por realizar.

#### Contenido
1.  [Conceptos fundamentales](#Conceptos fundamentales)
2.  [Prototipo inicial](#Prototipo inicial)
3. [Herramientas utilizadas](#Herramientas utilizadas)
4. [Código](#Código)
5. [Ejecución de la aplicación](#Ejecución de la aplicación)


### Conceptos fundamentales
##### ¿Qué es flutter?

Flutter es un SDK desarrollado por Google para crear aplicaciones móviles tanto para Android como para iOS (Apple). Fue desarrollado como un software para uso interno dentro de la compañía pero vieron el potencial que tenia y decidieron lanzarlo como proyecto de código libre. Actualmente es uno de los proyectos de desarrollo de aplicaciones móviles que más está creciendo. Además, desde la última versión estable, también es posible realizar aplicaciones Web y de escritorio para Windows y Mac. Aunque en estas dos plataformas aún está en fase experimental (beta).
Estas son las tres principales ventajas que ofrece Flutter respecto a otras frameworks de desarrollo de aplicaciones multiplataforma:

Compila en nativo, tanto en Android como en iOS.
La creación interfaces gráficas es muy flexible, puedes combinar diferentes Widgets (elementos gráficos) para crear las vistas.
El desarrollo es muy rápido, permite ver el resultado de forma instantánea mientras se escribe el código.

##### ¿Qué es un widget?
Podemos considerar a los widgets como bloques de código reusables que describen la apariencia de la interfaz de usuario (UI). Esto lo hacen a partir de su estado que, como veremos más adelante, puede ser estático (no cambia) o dinámico (cambia con el tiempo).

Un widget no solo puede ser un botón, un texto, una imagen… algo que asociaríamos directamente a una apariencia gráfica, sino que también es todo aquello que permite definir esa apariencia, como el margen de un objeto o que lo podamos centrar en la interfaz.

##### ¿Qué es affordance
Término anglosajón utilizado por el diseñador Donald Norman para referirse, dentro del diseño de interacción, a las posibilidades de acción que son inmediatamente percibidas por el usuario ante una interfaz (un botón o un enlace, por ejemplo, en el caso de la usabilidad web). En la percepción del usuario sobre lo que puede o no puede hacer influyen sus capacidades físicas, pero también sus experiencias anteriores con interfaces similares, sus objetivos, el diseño del objeto


### Prototipo inicial
Para crear el prototipo inicial se tomo en cuenta los parametros de affordance fisico, cognitivo, funcional y sensorial, para garantizar una experiencia de usuario más optima.
##### Inicio de sesión 

![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/prototipo_sesion.png)

##### pantalla principal

![pantalla principal](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/proto_principal.png)

##### Agregar

![agregar](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/proto_agregar.png)

##### Eliminar

![pantalla principal](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/proto_eliminar.png)

### Herramientas utilizadas
##### Visual Studio Code
Visual Studio Code es un editor de código fuente desarrollado por Microsoft para Windows, Linux, macOS y Web. Incluye soporte para la depuración, control integrado de Git, resaltado de sintaxis, finalización inteligente de código, fragmentos y refactorización de código. También es personalizable, por lo que los usuarios pueden cambiar el tema del editor, los atajos de teclado y las preferencias. Es gratuito y de código abierto, aunque la descarga oficial está bajo software privativo e incluye características personalizadas por Microsoft.
![visual](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/visual.png)

##### Trello
Trello es un software de oficina diseñado para la gestión de actividades y la administración de proyectos de manera colectiva. Este programa informático está optimizado para organizar información en formatos visuales simples que facilitan la realización de tareas y el cumplimiento de objetivos. 


##### git y github
GitHub es un sitio web + infraestructura que proporciona un servidor Git más una serie de herramientas realmente útiles para trabajar con repositorios git individuales o en equipo, como informar problemas con el código, herramientas de revisión, características de administración de proyectos tal como asignación de tareas, estados de tareas, y más.

![github](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/github.png)

###Código
Con el siguiente código logramos colocar una imagen de fondo
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_imagen.png)

En la siguiente imagen mostramos el código utilizado para pintar un textfield y un texto
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_form.png)

En la siguiente imagen mostramos el código implementado para juntar una pantalla con otra
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_activity.png)

Con el siguiente fragmento de código logramos imprimir en pantalla la lista de las actividades
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_lista.png)

En la siguiente imagen se muestra el código utilizado para crear el bottomNavigationBar
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_bottom.png)

Con el siguiente código eliminamos un elemento de la lista de actividades
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_eliminar.png)

La siguiente imagen muestra la creación de un widget personalizado, utilizado para la creación de un elemento de lista personalizado
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/codigo_personalizado.png)



### Ejecución de la aplicación
En este apartado mostramos capturas de nuestra aplicación en ejecución, actualmente la aplicación aun no tiene funcionalidades, solo es la interfaz de usuario.
##### Inicio de sesión
![inicio sesion](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/final_sesion.jpeg)

##### pantalla principal

![pantalla principal](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/final_principal.jpeg)

##### Agregar

![agregar](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/final_agregar.jpeg)

##### Eliminar

![pantalla principal](https://raw.githubusercontent.com/gamasotelo/miAgendita/master/imagenes/final_eliminar.jpeg)





