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
    <a  class="nav-link active" href="tomadaDec.jsp">Tomada de Decis�o</a>
  </li>
  <li id="nav-content" class="nav-item">
    <a  class="nav-link" href="estruturaRep.jsp">Estrutura de Repeti��o</a>
  </li>

</ul>
</div>



<!-- inicio do conteudo -->
    <div class="container-conteudo">
<div class="box1">
<h1 class="display4">Tomada de Decis�o</h1>
<p class="lead">
  A maioria dos algoritmos precisam tomar decis�es ao longo de sua execu��o. Para isso existem as estruturas de decis�o, e a mais utilizada � a estrutura SE-ENT�O-SEN�O (Em ingl�s IF-THEN-ELSE). O funcionamento � simples: com base no resultado de uma express�o booleana (VERDADEIRO ou FALSO), o fluxo do algoritmo segue para um bloco de instru��es ou n�o. Observe o esquema da estrutura SE-ENT�O-SEN�O:
</p>
<h2 class="display4">SE express�o booleana ENT�O</h2>
<p class="lead">
instru��es a serem executadas caso a express�o booleana resulte em VERDADEIRO
</p>
<h2 class="display4">SEN�O</h2>
<p class="lead">
instru��es a serem executadas caso a express�o booleana resulte em FALSO
</p>
<h2 class="display4">FIM-SE</h2>
<p class="lead">
O bloco de c�digo SEN�O � opcional. � comum encontrar instru��es de decis�o apenas com SE-ENT�O sem o bloco SEN�O.
</p>

<div class="img">
  <img  src="./Images/tomDec1.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/tomDec2.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/tomDec3.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/tomDec4.jpg" class="card-img-top" alt="">
</div>
<div class="img">
  <img src="./Images/tomDec5.jpg" class="card-img-top" alt="">
</div>
</div>
</div>
</body>
</html>