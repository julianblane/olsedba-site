---
layout: post-devlog
short_title:  "Cámara"
tags: devlog
excerpt_separator: <!-- preview -->
---
La idea del juego no es solo navegar y mirar por la ventana como un turista - hay un objetivo claro<!-- preview -->, el crear un catálogo de todas las criaturas que te encontrás.

Para eso, el jugador va a tener a su disposición una cámara fotográfica.\
Busqué que controlarla sea lo más intuitivo posible, como agarrar tu celular y apuntarlo a un paisaje.
{% include embed-youtube.html id="EaMdYGybWbo" aspect="horizontal" %}

Para que usarla no sea un bodrio, agregué un ```punto de descanso```, básicamente el monitor se guarda solo. Lo ubiqué por encima de los controles del submarino - ya que quiero que esté al acceso inmediato del jugador.
{% include embed-youtube.html id="CVadREicokY" aspect="horizontal" %}

Lo siguiente es que tome una foto - que en este caso no es más que congelar la imagen cuando el jugador toca un botón
{% include embed-youtube.html id="DOXhm_k7i9c" aspect="horizontal" %}

Para que esto realmente sirva de algo, hago una detección de lo que se ve en pantalla.
{% include embed-youtube.html id="rNdhiIwaqjw" aspect="horizontal" %}

Tampoco sería una cámara sin un buen zoom.
{% include embed-youtube.html id="fc0w71p999A" aspect="horizontal" %}

Lo que resta ahora es vincular este sistema de detección con un registro de criaturas - o bestiario, como lo llamo en mi juego.