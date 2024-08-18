---
layout: post-devlog
short_title:  "Controles del submarino"
tags: devlog
---

Cree la primera iteracion de los controles, asi como la dinamica que dicta como va a ser el movimiento del submarino.
<!-- preview -->

## Controles

Aprovechando del sistema de fisicas de Unity, cree dos cajas y un disco, los cuales estan fijos a un punto pero con libertad de rotar.\
Para obtener un valor, mido su rotacion respecto a la posicion inicial, generando un delta que muestro arriba de cada uno.
{% include embed-youtube.html id="z7fkWVeyLE8" aspect="horizontal" %}

Esos delta generados puedo leerlos mediante un script "relay", que se encarga de enviarlos a un submarino - que tambien usa el sistema de fisicas.
{% include embed-youtube.html id="_TJVfetRHtY" aspect="horizontal" %}
> La primer palanca controla la altitud, el timon la direccion y la segunda palanca propulsion.

## Hidrodinamicas
Para facilitar la navegacion, cree un simple sistema que aplica resistencia del agua en base a la direccion de movimiento del submarino.\
La idea es que haya mayor resistencia al moverse a los lados, de manera que el jugador tenga mejor control sobre la direccion en la que quiere ir.
{% include embed-youtube.html id="OKTDE8eF2VM" aspect="horizontal" %}

## Interior
Finalmente, puse la camara en el interior del submarino - [creando una replica del submarino para evitar problemas con el sistema de fisicas]({% post_url 2023-02-17-devshort-submarino-virtual %}).
{% include embed-youtube.html id="vER825KXJCg" aspect="horizontal" %}