#language: pt

Funcionalidade: trabalhar com contexto
Contexto: 
Dado  que eu tenho 10 laranjas na bolsa

Cenario: colocar uma quantidade de laranjas
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se o total de laranjas é igual a 12


Cenario: retirar uma quantidade de laranjas
Quando eu tiro 2 laranjas da bolsa
Então eu verifico quantas laranjas sobraram

