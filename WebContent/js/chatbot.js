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
        $.ajax({
            url: "https://tieacher-ms.herokuapp.com/question",
            cache: false,
            type: "POST",
            data: {audio : blob},
            success: () => {
             console.log('sucess')
            }, 
            err: (err) => {
                console.log(err)
            }
          })
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


