---
title: |
  []{#_zcqq1pdkp1du .anchor}**Paradigma Lógico**

  []{#_cd3gy0f1pt9n .anchor}Potencial rebelde

  []{#_gy136iqsvui5
  .anchor}![](vertopal_5f4c13864b2f43e2b64634360e2b0bfe/media/image2.png){width="6.109375546806649in"
  height="2.245608048993876in"}
---

***Es el año 2220 en un lugar muy lejano al planeta Tierra. El líder
supremo, de nombre impronunciable e imposible de escribir, gobierna su
planeta a puño de hierro. Su población es mayormente mano de obra
esclava que utiliza para fabricar gran cantidad de naves con las que
planea dominar toda la galaxia.***

Para poder mantenerse en el poder destina una parte importante de sus
recursos a monitorear a sus habitantes y detectar tanto crímenes como
posibles focos de disidencia. Para esto cuenta con un programa hecho en
Prolog que tiene información sobre todos y cada uno de los habitantes.
Si bien parece contener millones y millones de líneas de código, nuestro
objetivo va a ser reimplementar ciertas partes centrales del sistema
para entender cómo funcionan y, en un futuro, lanzar una ofensiva para
rescatar a toda la población.

Para un mayor control de los ciudadanos, los nombres en el planeta
fueron reemplazados por un [[hash
md5]{.ul}](https://www.md5hashgenerator.com/) de su nombre anterior.
Hicimos un ataque de intermediario[^1] y logramos conseguir algunas
fichas de los ciudadanos, que asumimos se utilizaron para generar la
base de conocimientos del sistema[^2]:

+----------------------------------+----------------------------------+
| ![](vertopal_5f4c13864b2f43e     | Nombre:                          |
| 2b64634360e2b0bfe/media/image1.p | **91                             |
| ng){width="1.3697922134733158in" | 2ec803b2ce49e4a541068d495ab570** |
| height="1.4012806211723534in"}   |                                  |
|                                  | Trabaja de ingeniera mecánica en |
|                                  | la Universidad Tecnológica       |
|                                  | Intergaláctica. Le gusta el      |
|                                  | fuego y la destrucción. Es buena |
|                                  | armando bombas y vive en la      |
|                                  | misma casa con                   |
|                                  | **1f                             |
|                                  | 5364c58947e14f9afa445bdf1ba4d9** |
|                                  | y                                |
|                                  | **2e4                            |
|                                  | 16649e6ca0a1cbf9a1210cf4ce234**. |
|                                  | A esa casa le suelen decir "La   |
|                                  | Severino".                       |
+----------------------------------+----------------------------------+

+----------------------------------+----------------------------------+
| ![](vertopal_5f4c13864b2f43e     | Nombre:                          |
| 2b64634360e2b0bfe/media/image6.p | **2e                             |
| ng){width="1.3384175415573054in" | 416649e6ca0a1cbf9a1210cf4ce234** |
| height="1.3072922134733158in"}   |                                  |
|                                  | Trabaja en la aviación militar.  |
|                                  | No parece tener gustos, pero se  |
|                                  | sabe que es bueno conduciendo    |
|                                  | autos.                           |
+==================================+==================================+
| ![](vertopal_5f4c13864b2f43      | Nombre:                          |
| e2b64634360e2b0bfe/media/image4. | **f5                             |
| png){width="1.213639545056868in" | 5840c38474c1909ce742172a77a013** |
| height="1.484375546806649in"}    |                                  |
|                                  | Trabaja en inteligencia militar. |
|                                  | Vive en la Comisaría 48 y es el  |
|                                  | único que vive allí. Es muy      |
|                                  | bueno en tiro al blanco; ama los |
|                                  | juegos de azar, el ajedrez y     |
|                                  | tambien el tiro al blanco. E     |
+----------------------------------+----------------------------------+
| ![](vertopal_5f4c13864b2f43e     | Nombre                           |
| 2b64634360e2b0bfe/media/image3.j | **42                             |
| pg){width="1.1084350393700788in" | fc1cd45335ad42d603657e5d0f2682** |
| height="1.328125546806649in"}    |                                  |
|                                  | (inventale su info)              |
+----------------------------------+----------------------------------+
| ![](vertopal_5f4c13864b2f43e     | ¡Agregate vos!                   |
| 2b64634360e2b0bfe/media/image5.p |                                  |
| ng){width="1.2552088801399826in" |                                  |
| height="1.2929593175853018in"}   |                                  |
+----------------------------------+----------------------------------+

La actividad política se encuentra fuertemente restringida, con lo que
las agrupación que pretenden modificar el orden reinante debieron
volverse clandestinas y son buscadas intensamente.

Por lo que vimos en su base de datos, de cada vivienda se conoce cómo
es. A modo de de ejemplo:

  Vivienda      **La Severino**
  ------------- --------------------------------------------------------------------------------
  Descripción   Por lo que se investigó, tiene un salon de tamaño 4 x 8, y 3 túneles secretos:

Uno de nuestros objetivos es encontrar viviendas que sean utilizadas
como guaridas de potenciales rebeliones, antes que lo hagan las fuerzas
del régimen. Por nuestras estimaciones, se consideran viviendas con
potencial rebelde si vive en ella algún posible disidente y su
superficie supera 50 metros cuadrados, lo que se calcula sumando su
salón más 10 m por cada tunel.

Se pide:

1.  Modelar la base de conocimiento para incluir estos datos, agregar
    > alguna persona y vivienda más.

2.  Implemetar las reglas que permitan:

    a.  Poder saber quiénes son posibles disidentes. Una persona se
        > considera posible disidente si cumple todos estos requisitos:

        i.  Tener una habilidad en algo considerado terrorista sin tener
            > un trabajo de índole militar.

        ii. No tener gustos registrados en sistema, o que le guste
            > aquello en lo que es bueno.

    b.  Detectar si en una vivienda:

        i.  No vive nadie

        ii. Todos los que viven tienen al menos un gusto en común.

    c.  Encontrar todas las viviendas que tengan potencial rebelde.

3.  Mostrar ejemplos de consulta y respuesta.

4.  Analizar la inversibilidad de los predicados, de manera de encontrar
    > alguno de los realizados que sea totalmente inversible y otro que
    > no. Justificar.

[^1]: "Un **ataque de intermediario** (Man in the middle en inglés) es
    un nombre genérico para definir un ciberataque en el que alguien se
    coloca entre usted y lo que sea que esté haciendo en línea"
    [[https://www.avg.com/es/signal/man-in-the-middle-attack]{.ul}](https://www.avg.com/es/signal/man-in-the-middle-attack)

[^2]: Fotos generadas con
    [[https://thispersondoesnotexist.com/]{.ul}](https://thispersondoesnotexist.com/),
    pero no todas
