CaronaSolidariaUnB
==================

Projeto da matéria de engenharia de software


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



### Projeto Carona Solidária
============================


#### Frameworks
---------------

##### Frameworks (Arquitetura)

1. Testes: 
  * Metodologia: [BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) (veja mais em: [Docs](https://docs.google.com/document/d/1S0Gdb1Yo4huo_pCdPgbGIvdN19x_KJZfxrDP59Xjazo/edit?usp=sharing));
  * Framework: [PHP-Unit](http://phpunit.de/manual/current/pt_br/index.html) e [RESTful Console](chrome-extension://cokgbflfommojglbmbpenpphppikmonn/index.html) (tem que instalar no Chrome);
2. RESTful: [Slim](http://www.slimframework.com/);
3. Persistência: [ActiveRecords](http://www.phpactiverecord.org/);

##### Frameworks (GUI/VIEW)

1. JS:
  1. [jQuery](http://jquery.com/);
  2. [Bootstrap 2](http://getbootstrap.com/2.3.2/)

2. Possíveis frameworks JS MVC (para Ajax com navegação na URL) segundo [__quadro comparativo__](http://codebrief.com/2012/01/the-top-10-javascript-mvc-frameworks-reviewed/):
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
1. Camada que encapsulará todas as regras de negócios e todas funcionalidades;   
2. Todos objetos de abstrações do mundo real e/ou objetos de solução;   
3. Todas as persistências.   

Controler:   
1. Atende à todas requisições HTTP de seu contexto;   
2. Passa todos os parametros tratados aos métodos do Model de seu contexto;   

View:   
1. Contém a index do App que é o arquivo que irá contemplar o filtro [RESTful](http://en.wikipedia.org/wiki/Representational_state_transfer) do [Slim](http://www.slimframework.com/);   
2. Raiz contém o projeto do site (parte gráfica feita pelo designer).   



