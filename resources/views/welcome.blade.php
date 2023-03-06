<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Beta Tips</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="//vjs.zencdn.net/7.6.6/video-js.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <!-- Styles -->
        {{-- <style>
            html, body {
                background-color: #3570d6;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                background-size: 100% 100%;
                margin: 0;
                background-image: url('http://localhost:8000/storage/img/YxCzWEPqj1SEZGtE2hf59dcNH5iiOA4pq8ev96jM.jpeg');
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                color: #fff;
                font-size: 84px;
                font-weight: bold;
            }

            .links > a {
                color: #fff;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style> --}}
        <style>
            @media (min-width: 768px) {
          /* show 3 items */
          .carousel-inner .active,
          .carousel-inner .active + .carousel-item,
          .carousel-inner .active + .carousel-item + .carousel-item {
            display: block;
          }

          .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
          .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item,
          .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item {
            transition: none;
          }

          .carousel-inner .carousel-item-next,
          .carousel-inner .carousel-item-prev {
            position: relative;
            transform: translate3d(0, 0, 0);
          }

          .carousel-inner .active.carousel-item + .carousel-item + .carousel-item + .carousel-item {
            position: absolute;
            top: 0;
            right: -33.3333%;
            z-index: -1;
            display: block;
            visibility: visible;
          }

          /* left or forward direction */
          .active.carousel-item-left + .carousel-item-next.carousel-item-left,
          .carousel-item-next.carousel-item-left + .carousel-item,
          .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item,
          .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item {
            position: relative;
            transform: translate3d(-100%, 0, 0);
            visibility: visible;
          }

          /* farthest right hidden item must be abso position for animations */
          .carousel-inner .carousel-item-prev.carousel-item-right {
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
            display: block;
            visibility: visible;
          }

          /* right or prev direction */
          .active.carousel-item-right + .carousel-item-prev.carousel-item-right,
          .carousel-item-prev.carousel-item-right + .carousel-item,
          .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item,
          .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item {
            position: relative;
            transform: translate3d(100%, 0, 0);
            visibility: visible;
            display: block;
            visibility: visible;
          }
            }

        </style>
        <style>
            /* Style the form */
            #regForm {
            background-color: #ffffff;
            margin: 20px auto;
            padding: 10px;
            width: 100%;
            min-width: 300px;
            }

            /* Style the input fields */
            /*
            input {
            padding: 10px;
            width: 100%;
            font-size: 17px;
            font-family: Raleway;
            border: 1px solid #aaaaaa;
            }
            */
            /* Mark input boxes that gets an error on validation: */
            /*
            input.invalid {
            background-color: #ffdddd;
            }*/

            /* Hide all steps by default: */
            .tab {
            display: none;
            }


            @media (min-width: 576px){
            .catg-responsive {
                min-width: 33.33% !important;
                flex: 0 0 0% !important;
            }
            }

            @media (min-width: 992px){
            .catg-responsive{
                min-width: 20% !important;
                flex: 0 0 0% !important;
            }
            .margen{
                margin-top: 50px;
                margin-bottom: 180px;
            }
            .margen2{
                margin-top: 220px;
                margin-bottom: 220px;
            }
            }

            .btn-mas-grande{
            padding: 1rem 1.5rem;
            }
            /* Make circles that indicate the steps of the form: */
            .step {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbbbbb;
            border: none;
            border-radius: 50%;
            display: inline-block;
            opacity: 0.5;
            }

            /* Mark the active step: */
            .step.active {
            opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
            background-color: #4CAF50;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h2>Beta Tips</h2>
                        </div>
                    <form id="regForm" action="{{ route('register.betatips') }}" target="_blank" method="post">
                            {{ csrf_field() }}
                            <div class="card-body">
                                            <!-- One "tab" for each step in the form: -->
                                            <div class="tab">
                                            @include('tips.cultivo')
                                            </div>

                                            <div class="tab">
                                            @include('tips.labors')
                                            </div>

                                            <div class="tab">
                                            @include('tips.employes')
                                            </div>

                                            <div class="tab">
                                            @include('tips.videos')
                                            </div>

                                            <div style="overflow:auto;margin-top:15px">
                                                <div class="d-flex justify-content-around" >
                                                    <button type="button" class="btn btn-primary btn-lg " style="width: 33.333%" id="prevBtn" onclick="nextPrev(-1)">Anterior</button>
                                                    <button type="button" class="btn btn-primary btn-lg " style="width: 33.333%" id="nextBtn" onclick="nextPrev(1)">Siguiente</button>
                                                </div>
                                            </div>
                                            <!-- Circles which indicates the steps of the form: -->
                                            <div style="text-align:center;margin-top:40px;">
                                                <span class="step"></span>
                                                <span class="step"></span>
                                                <span class="step"></span>
                                                <span class="step"></span>
                                            </div>
                            </div>
                        </form>
                        <div class="card-footer">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="//vjs.zencdn.net/7.6.6/video.min.js"></script>
    <script>
        //script para elegir cultivos , lista de participantes , implemento y video
        $('#cultivos > div').on('click',function(){
            // $(this).attr('id');
            if($("#cultivos > div").hasClass('card text-white m-1 p-2 bg-success')){
                $("#cultivos > div").removeClass();
                $("#cultivos > div").addClass("card text-white m-1");
                $(this).addClass("card text-white m-1 p-2 bg-success");
            }else{
                $(this).addClass('card text-white m-1 p-2 bg-success');
            }
            $('#cultivo').val($(this).attr('id'));
            loadLabors($(this).attr('id'));
        });

        function loadLabors(id){
            $.ajax({
                url: '/getLabors/'+id,
                method: 'GET',
                error:function(){

                },
                success:function(response){
                    // console.log(response);
                    // clearListEmploye();
                    $('#labors').html(response);
                    $('#labors > div > div').on('click',function(){
                    // $(this).attr('id');
                    if($("#labors > div > div").hasClass('card text-white m-1 p-2 bg-success')){
                        $("#labors > div > div").removeClass();
                        $("#labors > div > div").addClass("card text-white m-1");
                        $(this).addClass("card text-white m-1 p-2 bg-success");
                    }else{
                        $(this).addClass('card text-white m-1 p-2 bg-success');
                    }
                    $('#labor').val($(this).attr('id'));
                    });
                },
                complete:function(){

                }
            });
        }

        function addEmploye(codigo){

            console.log(codigo.length);
            if(codigo.length > 8 && codigo.length < 0){
                alert('Necesitas un codigo de empleado');
                return;
            }
            $.ajax({
                url: '/getEmploye/'+codigo,
                method: 'GET',
                error: function(){

                },
                success: function(response){
                    //add employe
                    if(!checkEmployes(response)){
                        addRow(response);
                    }

                },
                complete: function(){

                }
            })
        }

        function addRow(response){
            var table = $("#tableEmployes");
            var count_table_tbody_tr = $("#tableEmployes tbody tr").length;
            var row_id = count_table_tbody_tr + 1;

            if(response.success){
                var html = '<tr id="row_'+response.data.id+'" class="text-center">'+
                '<td>'+row_id+'</td>'+
                '<td>'+
                '<input id="employe_'+response.data.id+'" class="form-control" value="'+response.data.id+'" name="employe[]" type="hidden">'+
                response.data.code+
                '</td>'+
                '<td>'+
                response.data.fullname+
                '</td>'+
                '<td><button type="button" class="btn btn-danger" onclick="removeRow(\''+response.data.id+'\')">Eliminar</button></td>'+
                '</tr>';

                if(count_table_tbody_tr >= 1) {$("#tableEmployes tbody tr:last").after(html);}else{$("#tableEmployes tbody").html(html);}

            }else{
                alert('Codigo de empleado Invalido');
            }
        }

        function removeRow(tr_id){
            $("#tableEmployes tbody tr#row_"+tr_id).remove();
            // subAmount();
        }

        function clearListEmploye(){
            $("#tableEmployes tbody").children().remove();
        }

        function checkEmployes(response){
            var check = false;
            var table = $("#tableEmployes tbody tr");
            var count_table_tbody_tr = $("#tableEmployes tbody tr").length;

            if(count_table_tbody_tr>0){
                //console.log('there is a element')
                if(response.success==true){

                    $('#tableEmployes tbody tr').each(function(i,e){
                        console.log($(e).attr('id'));
                        // console.log("Cantidad: all "+Number($(e).children().text()));
                        if("row_"+response.data.id == $(e).attr('id')){
                            // console.log("Cantidad: all "+Number($(e).children().text()));
                            check = true;
                        }
                    });
                }//end if bool
            }
            return check;
        }
        var string = "";
        $(document).on('keypress',function(e) {

            patron = /^([0-9])*$/;

            if(patron.test(String.fromCharCode(e.which)) ){
                string += String.fromCharCode(e.which);
            }

            if(e.which == 13) {
                console.log(string);
                addEmploye(string);
                e.preventDefault();
                string = "";
            }
        });
    </script>
    <script>
        var currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the current tab

        function showTab(n) {
            // This function will display the specified tab of the form ...
            var x = document.getElementsByClassName("tab");
            x[n].style.display = "block";
            // ... and fix the Previous/Next buttons:
            if (n == 0) {
                document.getElementById("prevBtn").style.display = "none";
            } else {
                document.getElementById("prevBtn").style.display = "inline";
            }
            if (n == (x.length - 1)) {
                document.getElementById("nextBtn").innerHTML = "Completar";
                document.getElementById("prevBtn").setAttribute('hidden',true);
            } else {
                document.getElementById("nextBtn").innerHTML = "Siguiente";


            }
            // ... and run a function that displays the correct step indicator:
            fixStepIndicator(n)
        }

        function nextPrev(n) {
            // This function will figure out which tab to display
            var x = document.getElementsByClassName("tab");
            // Exit the function if any field in the current tab is invalid:
            if (n == 1 && !validateForm()) return false;
            // Hide the current tab:
            x[currentTab].style.display = "none";
            // Increase or decrease the current tab by 1:
            currentTab = currentTab + n;
            // if you have reached the end of the form... :
            if (currentTab >= x.length) {
                //...the form gets submitted:
                document.getElementById("regForm").submit();
                return false;
            }
            // Otherwise, display the correct tab:
            showTab(currentTab);
        }

        function validateForm() {
            // This function deals with validation of the form fields
            var x, y, i, valid = true;
            x = document.getElementsByClassName("tab");

            y = x[currentTab].getElementsByTagName("input");

            // A loop that checks every input field in the current tab:
            for (i = 0; i < y.length; i++) {
                // If a field is empty...
                if (y[i].value == "" && y[i].id != "code") {
                    // add an "invalid" class to the field:
                    y[i].className += " invalid";
                    // and set the current valid status to false:
                    valid = false;
                }
            }
            // If the valid status is true, mark the step as finished and valid:
            if (valid) {
                document.getElementsByClassName("step")[currentTab].className += " finish";
            }
            return valid; // return the valid status
        }

        function fixStepIndicator(n) {
            // This function removes the "active" class of all steps...
            var i, x = document.getElementsByClassName("step");
            for (i = 0; i < x.length; i++) {
                x[i].className = x[i].className.replace(" active", "");
            }
            //... and adds the "active" class to the current step:
            x[n].className += " active";
        }
    </script>
    <script>
        /**
         * Grabar vídeo y audio obtenido del micrófono y cámara web
         * con JavaScript, seleccionando el dispositivo de grabación de audio
         * y el dispositivo de vídeo (cámara web) de una lista;
         * usando MediaRecorder y getUserMedia
         *
         * @author parzibyte
         * @see https://parzibyte.me/blog
         */
        const init = () => {
            const tieneSoporteUserMedia = () =>
                !!(navigator.mediaDevices.getUserMedia)

            // Si no soporta...
            // Amable aviso para que el mundo comience a usar navegadores decentes ;)
            if (typeof MediaRecorder === "undefined" || !tieneSoporteUserMedia())
                return alert("Tu navegador web no cumple los requisitos; por favor, actualiza a un navegador decente como Firefox o Google Chrome");


            // Declaración de elementos del DOM
            const $dispositivosDeAudio = document.querySelector("#dispositivosDeAudio"),
                $dispositivosDeVideo = document.querySelector("#dispositivosDeVideo"),
                $duracion = document.querySelector("#duracion"),
                $video = document.querySelector("#video"),
                $btnComenzarGrabacion = document.querySelector("#btnComenzarGrabacion"),
                $btnDetenerGrabacion = document.querySelector("#btnDetenerGrabacion");
                $videoBetaTips = document.querySelector('#video-betatips');        // Algunas funciones útiles
            const limpiarSelect = elemento => {
                for (let x = elemento.options.length - 1; x >= 0; x--) {
                    elemento.options.remove(x);
                }
            }

            const segundosATiempo = numeroDeSegundos => {
                let horas = Math.floor(numeroDeSegundos / 60 / 60);
                numeroDeSegundos -= horas * 60 * 60;
                let minutos = Math.floor(numeroDeSegundos / 60);
                numeroDeSegundos -= minutos * 60;
                numeroDeSegundos = parseInt(numeroDeSegundos);
                if (horas < 10) horas = "0" + horas;
                if (minutos < 10) minutos = "0" + minutos;
                if (numeroDeSegundos < 10) numeroDeSegundos = "0" + numeroDeSegundos;

                return `${horas}:${minutos}:${numeroDeSegundos}`;
            };
            // Variables "globales"
            let tiempoInicio, mediaRecorder, idIntervalo;
            const refrescar = () => {
                $duracion.textContent = segundosATiempo((Date.now() - tiempoInicio) / 1000);
            }

            // Consulta la lista de dispositivos de entrada de audio y llena el select
            const llenarLista = () => {
                navigator
                    .mediaDevices
                    .enumerateDevices()
                    .then(dispositivos => {
                        limpiarSelect($dispositivosDeAudio);
                        limpiarSelect($dispositivosDeVideo);
                        dispositivos.forEach((dispositivo, indice) => {
                            if (dispositivo.kind === "audioinput") {
                                const $opcion = document.createElement("option");
                                // Firefox no trae nada con label, que viva la privacidad
                                // y que muera la compatibilidad
                                $opcion.text = dispositivo.label || `Micrófono ${indice + 1}`;
                                $opcion.value = dispositivo.deviceId;
                                $dispositivosDeAudio.appendChild($opcion);
                            } else if (dispositivo.kind === "videoinput") {
                                const $opcion = document.createElement("option");
                                // Firefox no trae nada con label, que viva la privacidad
                                // y que muera la compatibilidad
                                $opcion.text = dispositivo.label || `Cámara ${indice + 1}`;
                                $opcion.value = dispositivo.deviceId;
                                $dispositivosDeVideo.appendChild($opcion);
                            }
                        })
                    })
            };
            // Ayudante para la duración; no ayuda en nada pero muestra algo informativo
            const comenzarAContar = () => {
                tiempoInicio = Date.now();
                idIntervalo = setInterval(refrescar, 500);
            };

            // Comienza a grabar el audio con el dispositivo seleccionado
            const comenzarAGrabar = () => {
                if (!$dispositivosDeAudio.options.length) return alert("No hay micrófono");
                if (!$dispositivosDeVideo.options.length) return alert("No hay cámara");
                // No permitir que se grabe doblemente
                if (mediaRecorder) return alert("Ya se está grabando");

                navigator.mediaDevices.getUserMedia({
                        audio: {
                            deviceId: $dispositivosDeAudio.value, // Indicar dispositivo de audio
                        },
                        video: {
                            deviceId: $dispositivosDeAudio.value, // Indicar dispositivo de vídeo
                        }
                    })
                    .then(stream => {
                        // Poner stream en vídeo
                        $video.srcObject = stream;
                        $video.play();
                        // Comenzar a grabar con el stream
                        mediaRecorder = new MediaRecorder(stream);
                        mediaRecorder.start();
                        comenzarAContar();
                        // En el arreglo pondremos los datos que traiga el evento dataavailable
                        const fragmentosDeAudio = [];
                        // Escuchar cuando haya datos disponibles
                        mediaRecorder.addEventListener("dataavailable", evento => {
                            // Y agregarlos a los fragmentos
                            fragmentosDeAudio.push(evento.data);
                        });
                        // Cuando se detenga (haciendo click en el botón) se ejecuta esto
                        mediaRecorder.addEventListener("stop", () => {
                            // Pausar vídeo
                            $video.pause();
                            // Detener el stream
                            stream.getTracks().forEach(track => track.stop());
                            // Detener la cuenta regresiva
                            detenerConteo();
                            // Convertir los fragmentos a un objeto binario
                            const blobVideo = new Blob(fragmentosDeAudio);

                            // Crear una URL o enlace para descargar
                            const urlParaDescargar = URL.createObjectURL(blobVideo);
                            // Crear un elemento <a> invisible para descargar el audio
                            let a = document.createElement("a");
                            document.body.appendChild(a);
                            a.style = "display: none";
                            a.href = urlParaDescargar;
                            var date_time = "{{ strtotime(date('Y-m-d')) }}";
                            $('#videoName').val(date_time+".mp4");
                            $('#blobVideo').val(blobVideo);
                            a.download = date_time+".mp4";
                            // Hacer click en el enlace
                            a.click();
                            // Y remover el objeto
                            window.URL.revokeObjectURL(urlParaDescargar);
                        });
                    })
                    .catch(error => {
                        // Aquí maneja el error, tal vez no dieron permiso
                        console.log(error)
                    });
            };


            const detenerConteo = () => {
                clearInterval(idIntervalo);
                tiempoInicio = null;
                $duracion.textContent = "";
            }

            const detenerGrabacion = () => {
                if (!mediaRecorder) return alert("No se está grabando");
                mediaRecorder.stop();
                mediaRecorder = null;
            };


            $btnComenzarGrabacion.addEventListener("click", comenzarAGrabar);
            $btnDetenerGrabacion.addEventListener("click", detenerGrabacion);
            $videoBetaTips.addEventListener('play',comenzarAGrabar);
            $videoBetaTips.addEventListener('ended',detenerGrabacion);


            // Cuando ya hemos configurado lo necesario allá arriba llenamos la lista

            llenarLista();
        }

        // Esperar a que el documento esté listo...
        document.addEventListener("DOMContentLoaded", init);
    </script>
</html>
