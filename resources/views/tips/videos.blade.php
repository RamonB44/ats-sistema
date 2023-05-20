<div class="container-fluid">
    <div class="d-flex justify-content-center">
        <video id="video-betatips" class="video-js" style="height: 70vh;width: 150vh" controls data-setup="{}" preload="autop"
            poster="thumbnail.jpg">
            <source src="{{ asset('storage\4min.mp4') }}" type="video/mp4">
        </video>
        <div hidden>
            <label for="dispositivosDeAudio">Micrófono:</label><br>
            <select name="dispositivosDeAudio" id="dispositivosDeAudio"></select>
            <br><br>
            <label for="dispositivosDeVideo">Cámara:</label><br>
            <select name="dispositivosDeVideo" id="dispositivosDeVideo"></select>
            <br><br>
            <video muted="muted" id="video"></video>
            <br><br>
            <p id="duracion"></p>
            <br>
            <input type="hidden" id="videoName" name="videoName">
            <input type="hidden" id="blobVideo" name="blobVideo">
            <button type="button" id="btnComenzarGrabacion">Comenzar</button>
            <button type="button" id="btnDetenerGrabacion">Detener</button>
        </div>
    </div>
</div>
