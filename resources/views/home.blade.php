@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                @if(session()->has('message.level'))
                <div class="alert alert-{{ session('message.level') }}">
                {!! session('message.content') !!}
                </div>
                @endif
                <form id="regForm" action="{{ route('votaciones.setvoto_main') }}" method="post">
                    {{ csrf_field() }}
                    <div class="card-body">
                                    <!-- One "tab" for each step in the form: -->
                                    <div class="tab">
                                    @include('votaciones.candidatas')
                                    </div>

                                    <div class="tab margen">
                                    @include('votaciones.categorias')
                                    </div>

                                    <div class="tab margen2">
                                    @include('votaciones.votaciones')
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
                                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
        @include('users.resultados')
            </div>
        </div>
</div>
@endsection

@section('css')
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
@endsection

@section('scripts')
<script>
    var valor_antiguo = 0;
    var valor_an_categoria = 0;
    var valor_an_votos = 0;
    function setcandidata(valor){
        var input_candidata = document.getElementById("candidata");
        var box_candidata = document.getElementById("box-"+valor);
        var box_antiguo;
        if(valor_antiguo==0){
            valor_antiguo = valor;
        }else{
            box_antiguo = document.getElementById("box-"+valor_antiguo);
            box_antiguo.setAttribute('class','shadow-lg p-1 mb-1 bg-white rounded');
            valor_antiguo = valor;
        }

        box_candidata.setAttribute("class","shadow-lg p-1 mb-1 bg-success rounded");

        input_candidata.setAttribute("value",valor);
    }
    function setcategoria(valor){
        var input_categoria = document.getElementById("categoria");
        var box_categoria = document.getElementById("box-categoria-"+valor);
        var box_an_categoria;
        if(valor_an_categoria==0){
            valor_an_categoria = valor;
        }else{
            box_an_categoria = document.getElementById("box-categoria-"+valor_an_categoria);
            box_an_categoria.setAttribute('class','shadow-lg p-1 mb-1 bg-white rounded');
            valor_an_categoria = valor;
        }

        box_categoria.setAttribute("class","shadow-lg p-1 mb-1 bg-success rounded");

        input_categoria.setAttribute("value",valor);

    }
    function setvotos(valor){
        var input_votos= document.getElementById("votos");
        var box_votos = document.getElementById("box-votos-"+valor);
        var box_an_votos;
        if(valor_an_votos==0){
            valor_an_votos = valor;
        }else{
            box_an_votos = document.getElementById("box-votos-"+valor_an_votos);
            box_an_votos.setAttribute('class','shadow-lg p-1 mb-1 bg-white rounded');
            valor_an_votos = valor;
        }

        box_votos.setAttribute("class","shadow-lg p-1 mb-1 bg-success rounded");
        input_votos.setAttribute("value",valor);
    }
</script>
<script>
$(document).ready(function() {
  $("#myCarousel").on("slide.bs.carousel", function(e) {
    var $e = $(e.relatedTarget);
    var idx = $e.index();
    var itemsPerSlide = 3;
    var totalItems = $(".carousel-item").length;

    if (idx >= totalItems - (itemsPerSlide - 1)) {
      var it = itemsPerSlide - (totalItems - idx);
      for (var i = 0; i < it; i++) {
        // append slides to end
        if (e.direction == "left") {
          $(".carousel-item")
            .eq(i)
            .appendTo(".carousel-inner");
        } else {
          $(".carousel-item")
            .eq(0)
            .appendTo($(this).find(".carousel-inner"));
        }
      }
    }
  });
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
    if (y[i].value == "") {
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
@endsection
