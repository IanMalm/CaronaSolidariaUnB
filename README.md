CaronaSolidariaUnB
==================

Projeto da matéria de engenharia de software


![image] (https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-ash3/1380845_532003230207651_462730240_n.jpg)
======

### Produto Carona Solidária
============================

#### Definição

A presente proposta de projeto UnB Carona Solidária objetiva a criação
de um sistema via web que viabilize o compartilhamento de caronas entre os
diversos usuários dos Campus da UnB, alunos, professores e funcionários. O
site seriá responsável pelo acesso e organização de informações e
comunicação dos usuários cadastrados, de forma a tornar a carona algo
rotineiramente praticável e uma opção de fato atrativa de transporte
compartilhado solidário, disseminando seu uso pela comunidade da UnB e
funcionando como uma rede social.


======

### Projeto Carona Solidária
============================


#### Frameworks
---------------

##### Frameworks (Arquitetura)

1. __Testes:__ 
  * __Metodologia:__ [BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) (veja mais em: [Docs](https://docs.google.com/document/d/1S0Gdb1Yo4huo_pCdPgbGIvdN19x_KJZfxrDP59Xjazo/edit?usp=sharing));
  * __Framework:__ [PHP-Unit](http://phpunit.de/manual/current/pt_br/index.html) e [RESTful Console](chrome-extension://cokgbflfommojglbmbpenpphppikmonn/index.html) (tem que instalar no Chrome);
2. __RESTful:__ [Slim](http://www.slimframework.com/);
3. __Persistência:__ [ActiveRecords](http://www.phpactiverecord.org/);

##### Frameworks (GUI/VIEW)

1. __JS__:
  1. [__jQuery__](http://jquery.com/);
  2. [Bootstrap 2](http://getbootstrap.com/2.3.2/)

2. Possíveis frameworks __JS MVC__ (para Ajax com navegação na URL) segundo [__quadro comparativo__](http://codebrief.com/2012/01/the-top-10-javascript-mvc-frameworks-reviewed/):
    * [Batman.js](http://batmanjs.org/);
    * [Emberjs](http://emberjs.com/);
    * [JavaScript MVC](http://javascriptmvc.com/);
    * [Angular JS](http://docs.angularjs.org/);

3. __CSS__:
 * [Bootstrap 2](http://getbootstrap.com/2.3.2/)


#### Arquitetura
---------------

##### MVC

__Model__:   
1. Camada que encapsulará todas as __regras de negócios__ e _todas funcionalidades_;   
2. __Todos objetos__ de _abstrações do mundo real_ e/ou _objetos_ de _solução_;   
3. Todas as __persistências__.   

__Controler__:   
1. Atende à __todas requisições HTTP de seu contexto__;   
2. _Passa_ todos os _parametros_  __tratados__ aos métodos do __Model__ de seu contexto;   

__View__:   
1. Contém a _index_ do __App__ que é o arquivo que irá contemplar o filtro [__RESTful__](http://en.wikipedia.org/wiki/Representational_state_transfer) do [__Slim__](http://www.slimframework.com/);   
2. Raiz contém o projeto do site (parte gráfica feita pelo designer).   



