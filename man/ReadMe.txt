CaronaSolidariaUnB
==================

Projeto da mat�ria de engenharia de software


### Produto Carona Solid�ria
============================

#### Defini��o

A presente proposta de projeto UnB Carona Solid�ria objetiva a cria��o
de um sistema via web que viabilize o compartilhamento de caronas entre os
diversos usu�rios dos Campus da UnB, alunos, professores e funcion�rios. O
site seri� respons�vel pelo acesso e organiza��o de informa��es e
comunica��o dos usu�rios cadastrados, de forma a tornar a carona algo
rotineiramente pratic�vel e uma op��o de fato atrativa de transporte
compartilhado solid�rio, disseminando seu uso pela comunidade da UnB e
funcionando como uma rede social.



### Projeto Carona Solid�ria
============================


#### Frameworks
---------------

##### Frameworks (Arquitetura)

1. Testes: 
  * Metodologia: [BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) (veja mais em: [Docs](https://docs.google.com/document/d/1S0Gdb1Yo4huo_pCdPgbGIvdN19x_KJZfxrDP59Xjazo/edit?usp=sharing));
  * Framework: [PHP-Unit](http://phpunit.de/manual/current/pt_br/index.html) e [RESTful Console](chrome-extension://cokgbflfommojglbmbpenpphppikmonn/index.html) (tem que instalar no Chrome);
2. RESTful: [Slim](http://www.slimframework.com/);
3. Persist�ncia: [ActiveRecords](http://www.phpactiverecord.org/);

##### Frameworks (GUI/VIEW)

1. JS:
  1. [jQuery](http://jquery.com/);
  2. [Bootstrap 2](http://getbootstrap.com/2.3.2/)

2. Poss�veis frameworks JS MVC (para Ajax com navega��o na URL) segundo [__quadro comparativo__](http://codebrief.com/2012/01/the-top-10-javascript-mvc-frameworks-reviewed/):
    * [Batman.js](http://batmanjs.org/);
    * [Emberjs](http://emberjs.com/);
    * [JavaScript MVC](http://javascriptmvc.com/);
    * [Angular JS](http://docs.angularjs.org/);

3. CSS:
 * [Bootstrap 2](http://getbootstrap.com/2.3.2/)


#### Arquitetura
---------------

##### MVC

Model:   
1. Camada que encapsular� todas as regras de neg�cios e todas funcionalidades;   
2. Todos objetos de abstra��es do mundo real e/ou objetos de solu��o;   
3. Todas as persist�ncias.   

Controler:   
1. Atende � todas requisi��es HTTP de seu contexto;   
2. Passa todos os parametros tratados aos m�todos do Model de seu contexto;   

View:   
1. Cont�m a index do App que � o arquivo que ir� contemplar o filtro [RESTful](http://en.wikipedia.org/wiki/Representational_state_transfer) do [Slim](http://www.slimframework.com/);   
2. Raiz cont�m o projeto do site (parte gr�fica feita pelo designer).   



