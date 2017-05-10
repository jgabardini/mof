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
