<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h2>Lista de Participantes</h2>
        </div>
        <div class="card-body">
            <div class="row">
                    <div class="col-md-4">
                        <small>Codigo</small>
                        <input type="text" class="form-control" value="SIN ESCOGER" id="code" >
                    </div>
                    <div class="col-md-2">
                        <br>
                        <a href="javascript:addEmploye()" class="btn btn-primary">Agregar</a>
                    </div>
            </div>
            <div class="table row">
                <table id="tableEmployes" class="table table-bordered mt-1">
                    <thead class="text-center">
                        <th>#</th>
                        <th>Codigo</th>
                        <th>Nombres</th>
                        <th></th>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
