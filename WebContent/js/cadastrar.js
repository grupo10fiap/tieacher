let cadastroNome = $("#nomeCadastro");
let cadastroTelefone = $("#telefoneCadastro");
let cadastroEmail = $("#emailCadastro");
let cadastroSenha1 = $("#senha1");
let cadastroSenha2 = $("#senha2");
let botao = $("#enviar-dados");


cadastroNome.focusout(function(){
  validarNome();
  validarTudoVazio();
})

cadastroTelefone.focusout(function(){
  validarNome();
  validarTelefone();
  validarTudoVazio();
})

cadastroEmail.focusout(function(){
  validarNome();
  validarTelefone();
  validarEmail();
  validarTudoVazio();
})

cadastroSenha1.focusout(function(){
  validarNome();
  validarTelefone();
  validarEmail();
  validarSenha();
  validarTudoVazio();
})

cadastroSenha2.keyup(function(){
  validarTudoVazio();
})


function validarNome(){
  if(cadastroNome.val().length == 0)
  $("#nomeErro").show();
else
  $("#nomeErro").css("display", "none");
}

function validarTelefone(){
  if(cadastroTelefone.val().length == 0)
  $("#telefoneErro").show();
else
  $("#telefoneErro").hide();
}

function validarEmail(){
  if(cadastroEmail.val().length == 0 || !validateEmail(cadastroEmail.val()))
  $("#emailErro").show();
else
  $("#emailErro").hide();
}

function validateEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

function validarSenha(){
  if(cadastroSenha1.val().length == 0)
  $("#senhaErro").show();
else
  $("#senhaErro").hide();
}

function validaSenhaDuplicidade(){
  if ( $('#senha1').val() != $('#senha2').val()) {
    return false;
  }
  return true;
}

function validarTudoVazio(){
  var inputs = $('.input');
  var count = 0;
  for (var i = 0; i < inputs.length; i++) {
    if (inputs[i].value == "") {
      count++;
    }
  }
  if(!validaSenhaDuplicidade())
  {
    count++
    $('#senhaDuplicidade').show();
  }else
  $('#senhaDuplicidade').hide();

    if (count == 0) 
      botao.prop('disabled', false);
    else
    botao.prop('disabled', true);
    return;
}
