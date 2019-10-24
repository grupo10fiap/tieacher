$(function(){
    let mediaRecorder

    navigator
     .mediaDevices
     .getUserMedia({audio: true})
    .then( stream => {
        mediaRecorder = new MediaRecorder(stream)
        let chunks = []
        mediaRecorder.ondataavailable = data => {
            chunks.push(data.data)
        }
        mediaRecorder.onstop = () => {
        let blob = new Blob(chunks, {type : 'audio/ogg; code=opus'})
        let reader = new window.FileReader()
        reader.readAsDataURL(blob)
        reader.onloadend = () => {
            let audio = document.createElement('audio')
            audio.src = reader.result
            audio.controls = true
            $('body').append(audio)
        }
        }
       
     }, err => {
        $('body').append('<p>Favor permitir o acesso ao microfone</p>')
    })
    $('#btn').click(function(){
        if($(this).text() === 'Gravar'){
            mediaRecorder.start()
            $(this).text('Parar')
        }else{
            mediaRecorder.stop()
            $(this).text('Gravar')
        }
    })
})


// $(document).ready(function(){
//     var bot_words = {
//         "OLA": "Olá, Meu nome é Rolnando",
//         "OLÁ": "Olá, Meu nome é Rolnando"
//     }
//     $("#chatbot").click(function(){
//         var response = bot_words[$("#comment").val().toUpperCase()]
//         if (response) {
//             $("#resposta").text(response)
//             return
//         }
//         $("#resposta").text('Olá não consigo entender o que vc me perguntou.')
//     })
// })


