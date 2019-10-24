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
    <a class="nav-link" href="tomadaDec.jsp">Tomada de Decisão</a>
  </li>
  <li id="nav-content" class="nav-item">
    <a  class="nav-link active" href="estruturaRep.jsp">Estrutura de Repetição</a>
  </li>

</ul>








<!-- inicio do conteudo -->
  <div class="container-conteudo">
<div class="box1">
<h1 class="display4">Estrutura de Repetição</h1>
<p class="lead">
Dentro da lógica de programação é uma estrutura que permite executar mais de uma vez o mesmo comando ou conjunto de comandos, de acordo com uma condição ou com um contador.

São utilizadas, por exemplo, para repetir ações semelhantes que são executadas para todos os elementos de uma lista de dados, ou simplesmente para repetir um mesmo processamento até que a condição seja satisfeita.

Existem 4 estruturas de repetição básica para praticamente todas as linguagens de programação, seja C ou javascript.
</p>
<h2 class="display4">While (enquanto)</h2>
<p class="lead">
É dentre as 3 a mais simples.
Repete um bloco de código enquanto uma condição permanecer verdadeira
Caso a condição seja falsa, os comandos dentro do while não serão executados e a execução continuará  com os comandos após o while
A repetição do while é controlada por uma condição que verifica alguma variável. Porém para que o while funcione corretamente é
importante que essa variável sofra alteração dentro do while. Ex: um contador.
Após entrar dentro da repetição, o bloco de comandos sempre será executado, mesmo que dentro do bloco a variável que está controlando a execução seja alterada.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
Não há necessidade de inicializar ou atualizar variáveis contadoras.
As etapas de inicialização ou atualização requerem muitas instruções e não caberiam elegantemente numa única linha do for.
As informações necessárias para avaliar a condição não dependem de uma variável contadora ou são obtidas durante a execução do bloco.
</p>
<h2 class="display4">Do While (faça enquanto)</h2>
<p class="lead">
Muito parecido com o while, porém tem uma diferença crucial: condição é verificada após executar o bloco de comandos.
Há uma bloco de comandos e logo depois uma verificação. Assim caso a variável condicional for alterada dentro do bloco de comandos, isso afetará a validação da condição.
A escolha entre while e do while é mínima, então dependerá do bom senso do programador, que optará pela estrutura que deixar o algoritmo mais simples e legível.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
  Quando é necessário executar um bloco pelo menos uma vez para obter as informações necessárias para avaliar a condição.
  </p>
    <h2 class="display4">For (para)</h2>
    <p class="lead">
O For é utilizado para executar um conjunto de comandos executado por um número X de vezes.
É passada uma situação inicial, uma condição e uma ação a ser executada a cada repetição.
Uma variável é inicializada com uma valor inicial.
Essa variável é utilizada para controlar a quantidade de vezes em que o conjunto de comandos será executado.
E ao final do conjunto de comandos a variável sempre sofrerá uma alteração, aumentando ou diminuindo de acordo com a lógica utilizada.
</p>
<h2 class="display4">Quando utilizar?</h2>
<p class="lead">
O número de repetições é controlado por uma variável controladora.
Há necessidade de inicialização e atualização, mas que sejam simples o suficiente para que sejam acomodadas na linha do for. Para casos mais complexos, é melhor usar o comando while.
A avaliação da condição não depende de dados obtidos na execução do bloco.
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