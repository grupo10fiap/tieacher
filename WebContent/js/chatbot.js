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
            success: (response) => {
             const answer_code = response.question_and_response_code
             const answer = response.answer
             const feedback = document.createElement('button')
             feedback.id = answer_code
             feedback.class = 'feedback'
             $('body').append(feedback)
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
    $('.feedback').click(function(){
       const answer_code = $(this).attr('id')
       $.ajax({
            url: "https://tieacher-ms.herokuapp.com/feedback/"+answer_code+"/no",
            cache: false,
            type: "PUT",
            success: (response) => {
             console.log(response)
            }, 
            err: (err) => {
                console.log(err)
            }
          })
        }
    })
})


