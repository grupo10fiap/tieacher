$(document).ready(function(){
    var valids_login = [
        {
            user: 'admin',
            password: 'admin'
        },
        {
            user: 'heitor',
            password: '123'
        },
        {
            user: 'rolnando',
            password: 'mlkzica123'
        }
    ]
    $("#entrar").click(function(){
        var login = $('#login').val()
        var pass = $('#password').val()
        for (var i in valids_login){
            if (login === valids_login[i].user && pass === valids_login[i].user){
                $(location).attr('href', 'home.html')
                return
            }
        }
        alert('Login / Senha invalidos !')
    })
})
