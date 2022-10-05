@forelse ($data as $item)
    <div class="col mb-4">
        <div id="{{ $item->id }}" class="card text-white m-1" >
            <img class="card-img" src="storage\img-tips\depositphotos_96543628-stock-illustration-corn-field-harvesting-with-combine.jpg" alt="Card image">
            <div class="card-img-overlay">
                <h5 class="card-title text-dark text-center">{{ $item->name }}</h5>
            </div>
        </div>
    </div>
@empty

@endforelse
