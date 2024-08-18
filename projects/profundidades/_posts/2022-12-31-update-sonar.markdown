---
layout: post-devlog
short_title:  "Sonar Holográfico"
tags: devlog
---

Si bien el jugador va a tener una gran ventana en el frente de la nave, la visibilidad es prácticamente nula<!-- preview -->, por eso, un sonar es la herramienta ideal para ayudar la navegación.<!-- preview -->

Generalmente los sonares se ven representados sobre una pantalla, una proyección 2D de lo que en realidad es un espacio 3D.

En VR, podemos aprovechar la visión estereoscópica del jugador para probar un concepto más experimental - representar las lecturas del sonar como una esfera.\
Para empezar, genero una copia a escala de los alrededores del submarino, encapsulada en una esfera.
{% include embed-youtube.html id="nem6feZgT2Y" aspect="horizontal" %}

Para justificar que es un objeto tridimensional, le di el aspecto de un holograma, con un material transparente iluminado desde el centro.
{% include embed-youtube.html id="9oqVivCBNts" aspect="horizontal" %}

Para darle el toque final, un período de silencio entre cada visualización de los alrededores agrega suspenso.
{% include embed-youtube.html id="v1ZALxZxvdk" aspect="horizontal" %}

En un futuro, el sonar va a poder detectar criaturas y otros elementos dinámicos alrededor del submarino, pero también va a tener sus desventajas...