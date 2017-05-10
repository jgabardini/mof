#encoding: utf-8

Feature: Inicio Man on Fire
blah

Scenario: Landing en sitio
	Given ingreso al main del sitio
	Then puedo ver el main del sitio

Scenario: Ingresar letra A y enviar
  Given ingreso al main del sitio
  When ingreso letra "A"
  Then se imprime en pantalla letra "A"
  
Scenario: Configura palabra oculta
  Given ingreso al main del sitio
  Then se imprime la palabra curso con primera letra visible

Scenario: validacion letra
	Given ingreso al main del sitio
	When ingreso letra "V" y clickeo "ingresar"
	Then muestra si la letra "V" existe e imprime "pertenece"  
