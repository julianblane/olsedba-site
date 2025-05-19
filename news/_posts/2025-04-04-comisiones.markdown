---
layout: post-devlog
short_title: "Renders a pedido"
tags: announcement
permalink: /commissions
---

Si te gusta lo que hago, y queres una imagen o video personalizado, hablame por mensaje privado a cualquiera de <a href="{{ '/links' | relative_url }}">mis redes</a> o directamente a <a href="mailto:business@julianblane.com">business@julianblane.com</a>

Aca te dejo los ultimos dos pedidos que recibi:

{% assign shorts = "" | split: ',' %}
{% assign shorts = shorts | push: "LS_d3EKUJr8" %}
{% assign shorts = shorts | push: "ynvh7oTGsSI" %}

{% include playable-grid.html shorts=shorts aspect="vertical" %}