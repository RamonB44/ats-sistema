<div class="container-fluid">
    <h1 class="text-center mb-3">Lista de Cultivos</h1>
    <div id="cultivos" class="card-deck">
            @foreach (\App\Cultivo::all() as $k => $item)
                <div id="{{ $k+1 }}" class="card text-white m-1">
                    <img class="card-img" src="storage\{{ $item->file_image }}" alt="Card image">
                    <div class="card-img-overlay">
                    <h5 class="card-title text-dark text-center">{{ $item->name }}</h5>
                    </div>
                </div>
            @endforeach
    </div>
        <input type="hidden" id="cultivo" name="cultivo" value="" oninput="this.className=''">
</div>
