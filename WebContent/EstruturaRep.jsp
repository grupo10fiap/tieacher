<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="icon" href="./Images/ren.ico">


    <title>Chatbot</title>
  </head>
 <body>
    <nav id="nav" class="navbar navbar-expand-lg navbar-dark bg-primary">
  <!-- <a class="navbar-brand" href="#">Navbar</a> -->
  <a href="home.jsp"><img src="./Images/ren.ico" alt="" href="home.jsp"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
          <a id="nav" class="nav-link" href="home.jsp">T.Ieacher Home</a>
        </li>
        <li class="nav-item">
          <a id="nav" class="nav-link" href="chatbot.jsp">Converse com o T.Ieacher!</a>
        </li>
        <li class="nav-item active">
          <a id="nav" class="nav-link" href="conteudo.jsp">Sobre algoritmos</a>
        </li>
        <li class="nav-item">
          <a id="nav" class="nav-link" href="contato.jsp">Nosso Contato</a>
        </li>
      </ul>
  
  </div>
</nav>

<ul id="nav-centro" class="nav nav-tabs">
  <li id="nav-content" class="nav-item">
    <a class="nav-link" href="tomadaDec.jsp">Tomada de Decis�o</a>
  </li>
  <li id="nav-content" class="nav-item">
    <a  class="nav-link active" href="estruturaRep.jsp">Estrutura de Repeti��o</a>
  </li>

</ul>








<!-- inicio do conteudo -->
  <div class="container-conteudo">
<div class="box1">
<h1 class="display4">Estrutura de Repeti��o</h1>
<p class="lead">
Dentro da l�gica de programa��o � uma estrutura que permite executar mais de uma vez o mesmo comando ou conjunto de comandos, de acordo com uma condi��o ou com um contador.

S�o utilizadas, por exemplo, para repetir a��es semelhantes que s�o executadas para todos os elementos de uma lista de dados, ou simplesmente para repetir um mesmo processamento at� que a condi��o seja satisfeita.

Existem 4 estruturas de repeti��o b�sica para praticamente todas as linguagens de programa��o, seja C ou javascript.
</p>
<h2 class="display4">While (enquanto)</h2>
<p class="lead">
� dentre as 3 a mais simples.
Repete um bloco de c�digo enquanto uma condi��o permanecer verdadeira
Caso a condi��o seja falsa, os comandos dentro do while n�o ser�o executados e a execu��o continuar�  com os comandos ap�s o while
A repeti��o do while � controlada por uma condi��o que verifica alguma vari�vel. Por�m para que o while funcione corretamente �
importante que essa vari�vel sofra altera��o dentro do while. Ex: um contador.
Ap�s entrar dentro da repeti��o, o bloco de comandos sempre ser� executado, mesmo que dentro do bloco a vari�vel que est� controlando a execu��o seja alterada.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
N�o h� necessidade de inicializar ou atualizar vari�veis contadoras.
As etapas de inicializa��o ou atualiza��o requerem muitas instru��es e n�o caberiam elegantemente numa �nica linha do for.
As informa��es necess�rias para avaliar a condi��o n�o dependem de uma vari�vel contadora ou s�o obtidas durante a execu��o do bloco.
</p>
<h2 class="display4">Do While (fa�a enquanto)</h2>
<p class="lead">
Muito parecido com o while, por�m tem uma diferen�a crucial: condi��o � verificada ap�s executar o bloco de comandos.
H� uma bloco de comandos e logo depois uma verifica��o. Assim caso a vari�vel condicional for alterada dentro do bloco de comandos, isso afetar� a valida��o da condi��o.
A escolha entre while e do while � m�nima, ent�o depender� do bom senso do programador, que optar� pela estrutura que deixar o algoritmo mais simples e leg�vel.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
  Quando � necess�rio executar um bloco pelo menos uma vez para obter as informa��es necess�rias para avaliar a condi��o.
  </p>
    <h2 class="display4">For (para)</h2>
    <p class="lead">
O For � utilizado para executar um conjunto de comandos executado por um n�mero X de vezes.
� passada uma situa��o inicial, uma condi��o e uma a��o a ser executada a cada repeti��o.
Uma vari�vel � inicializada com uma valor inicial.
Essa vari�vel � utilizada para controlar a quantidade de vezes em que o conjunto de comandos ser� executado.
E ao final do conjunto de comandos a vari�vel sempre sofrer� uma altera��o, aumentando ou diminuindo de acordo com a l�gica utilizada.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
O n�mero de repeti��es � controlado por uma vari�vel controladora.
H� necessidade de inicializa��o e atualiza��o, mas que sejam simples o suficiente para que sejam acomodadas na linha do for. Para casos mais complexos, � melhor usar o comando while.
A avalia��o da condi��o n�o depende de dados obtidos na execu��o do bloco.
<p/>

<div class="img">
  <img src="./Images/estruRep1.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/estruRep1.1.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/estruRep2.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/estruRep3.jpg" class="card-img-top" alt="">
</div>
  </div></div>
  </body></html>