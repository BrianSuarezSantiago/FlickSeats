<h1 align="center">🎞️ FlickSeats 🍿</h1>


¡Bienvenido a FlickSeats, la aplicación de reserva de películas!

Esta aplicación para iOS permite a los usuarios reservar entradas de cine de manera rápida y sencilla, sin ningún tipo de problemas, posibilitando la selección de sus horarios preferidos, añadir deliciosos aperitivos y guardar las entradas para acceder a ellas más tarde. La aplicación está desarrollada utilizando el potente framework UIKit del lenguaje de programación Swift de Apple 


# 📖 Tabla de contenidos

1. [Features](#Features)
2. [Tecnologías y Frameworks](#Tecnologías-y-Frameworks)
3. [Guía de Instalación](#Guía-de-Instalación)
4. [Consideraciones a tener en cuenta](#Consideraciones-a-tener-en-cuenta)
5. [Propuesta de Ampliación y Posibles Mejoras](#Propuesta-de-Ampliación-y-Posibles-Mejoras)
6. [Recursos Empleados](#Recursos-Empleados)


# 👨🏻‍💻 Features <a name="Features"></a>

- Explorar y seleccionar películas

- Seleccionar fecha y hora para los horarios

- Añadir aperitivos a tu pedido

- Guardar y ver entradas reservadas

### Explorar y seleccionar películas

Los usuarios pueden explorar una amplia gama de películas disponibles para reservar. El catálogo incluye diversos géneros tales como acción, drama, comedia, thriller, etc. Cada listado de películas proporciona información detallada como título y género, incluyendo la duración y una calificación general en función de las valoraciones recibidas por los usuarios, ayudando a los usuarios a tomar una decisión informada.

### Seleccionar fecha y hora para los horarios

A través de un calendario interactivo permite a los usuarios seleccionar la fecha y hora preferida para su película. El calendario muestra las fechas y horarios disponibles de manera intuitiva para cada una de las películas disponibles. Una vez seleccionada una fecha, los usuarios pueden elegir entre varios horarios disponibles para cada una de las películas disponibles en cartelera.

### Añadir aperitivos a tu pedido

Los usuarios pueden elegir entre una variedad de aperitivos, como palomitas, bebidas y comida. Los usuarios pueden seleccionar el tamaño de estos y, para algunos artículos, seleccionar opciones sabor, garantizando que obtengan exactamente lo que desean.

### Guardar y ver entradas reservadas

Después de seleccionar una película, fecha y aperitivos, los usuarios pueden revisar todo su pedido y hacer cambios antes de confirmar la reserva y proceder al pago de la misma. Una vez confirmada, las entradas se guardan digitalmente en la aplicación utilizando `Core Data`. Los usuarios pueden visualizar sus entradas reservadas en cualquier momento desde la sección '*My Tickets*', donde se dispone la opción de visualizar las entradas para sesiones futuras y sesiones ya expiradas. Cada una de las entradas reservada incluye un código QR que puede escanearse en el cine para una entrada rápida, eliminando la necesidad de entradas físicas y colas de espera.

# ⚙️ Tecnologías y Frameworks <a name="Tecnologías-y-Frameworks"></a>

- <u>Lenguaje de programación:</u> Swift

- <u>Frameworks:</u> UIKit, Core Data

- <u>Librerías:</u> Lottie-ios

- <u>Gestor de dependencias:</u> Swift Package Manager
 
# 🛠 Guía de Instalación <a name="Guía-de-Instalación"></a>

Para instalar y ejecutar el proyecto, sigue los siguientes pasos:

1. Clona este repositorio en tu máquina local:

```bash
git clone https://github.com/BrianSuarezSantiago/FlickSeats.git
cd FlickSeats/
```

2. Abre el proyecto en el IDE Xcode:

```bash
xed .

# Para más información sobre este comando, consultar la documentación oficial:

man xed
```

3. Ejecuta el proyecto (botón ▶️) dentro del IDE.

# 👀 Consideraciones a tener en cuenta <a name="Consideraciones-a-tener-en-cuenta"></a>

- <u>Entorno de Desarrollo:</u>
  - Instalar la última versión del IDE Xcode en un dispositivo con sistema operativo MacOS o iPadOS.
     - La instalación se debe realizar a través de la App Store o a través del [sitio web oficial](https://developer.apple.com/xcode/). La instalación de este software no puede ser descargada a través de `brew` dado que, se trata de un software propietario de Apple.

  - <u>Instalar de las Command Line Tools de Xcode:</u>
    ```bash
    xcode-select --install
    ```

  - <u>Verificar la versión de las herramientas de línea de comandos:</u>
    ```bash
    xcode-select -p
    ```

  - <u>Verificar la versión de Swift que se está utilizando:</u>
    ```bash
    swift --version
    ```

- <u>Generación del diagrama a partir del código fuente:</u>
  - Descargar la última versión del software PlantUML en formato ["Compiled jar"](https://plantuml.com/download), ubicarlo en el directorio raíz del proyecto y ejecutar el siguiente comando: 
  ```bash
  swiftplantuml --output consoleOnly > sources.txt | java -DPLANTUML_LIMIT_SIZE=8192 -jar plantuml-1.2024.6.jar $1
  ```

# 🖥️ Propuesta de Ampliación y Posibles Mejoras <a name="Propuesta-de-Ampliación-y-Posibles-Mejoras"></a>

1. <u>Recomendaciones personalizadas:</u>
   - Implementar un sistema de recomendaciones basado en el historial de visualización y preferencias del usuario. Esto puede incluir sugerencias de películas similares a las que han visto o calificado anteriormente.

2. <u>Integración con redes sociales:</u>
   - Permitir a los usuarios compartir sus planes de cine o sus críticas de películas en redes sociales directamente desde la app. También se podría incluir una opción para ver qué películas están viendo las amistades.

3. <u>Modo offline:</u>
   - Ofrecer una funcionalidad que permita a los usuarios revisar sus entradas y ver la información de películas incluso cuando no tengan conexión a Internet.

4. <u>Notificaciones y recordatorios:</u>
   - Implementar notificaciones para recordar a los usuarios sobre sus reservas, así como alertas para próximas funciones o descuentos en aperitivos.

5. <u>Valoraciones y reseñas de usuarios:</u>
   - Permitir a los usuarios dejar reseñas y calificaciones para las películas que han visto de manera que, ayude a otros usuarios a decidir y, fomentar así una comunidad activa.

6. <u>Opciones de asientos premium:</u>
   - Ofrecer opciones para reservar asientos premium o especiales dentro del cine, como por ejemplo, asientos en la fila VIP, butacas reclinables, o áreas reservadas en estrenos.

7. <u>Soporte para múltiples idiomas y mejora de la accesibilidad:</u>
   - Agregar soporte para múltiples idiomas y características de accesibilidad, como modo de alto contraste, texto más grande y lectores de pantalla.

8. <u>Integración con mapas:</u>
    - Añadir una función para mostrar la ubicación del cine deseado en un mapa integrado y ofrecer indicaciones de cómo llegar al mismo.

9. <u>Ofertas y descuentos exclusivos:</u>
    - Proporcionar ofertas y descuentos especiales para usuarios frecuentes o para ciertos días de la semana como por ejemplo, el día del espectador. De esta manera, podría incentivar más reservas.

10. <u>Sincronización con el calendario:</u>
    - Permitir a los usuarios sincronizar sus reservas con su calendario personal para una mejor visualización y planificación.

# 📚 Recursos Empleados <a name="Recursos-Empleados"></a>

1. [lottie-ios Library](https://github.com/airbnb/lottie-ios)
2. [Using Lottie Animation in SwiftUI](https://medium.com/@abdulkarimkhaan/using-lottie-animation-in-swiftui-lottie-animation-swiftui-60c5c4a0431b)
3. [Generate diagrams from a code](https://stackoverflow.com/questions/55800701/is-there-a-way-to-generate-diagrams-from-a-code-in-github)
4. [PlantUML](https://plantuml.com)
5. [SwiftPlantUML](https://github.com/MarcoEidinger/SwiftPlantUML)

<hr>
<p align="center">
Made with ♥️ in Spain
</p>
