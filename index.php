<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <title>Como Llenar Select HTML con PHP y MySQL</title>
  </head>
  <body>

  <div class="container mt-5" style="background-color: #f9f9f9;">
    <div class="row justify-content-md-center">
      <div class="col-md-12 mt-5 mb-5">
        <h1 class="text-center" style="font-weight: 800;">Como Llenar Select HTML con PHP y MySQL</h1>
      </div>

      <?php
        $usuario  = "root";
        $password = "";
        $servidor = "localhost";
        $basededatos = "demos";
        $con = mysqli_connect($servidor, $usuario, $password) or die("No se ha podido conectar al Servidor");
        $db = mysqli_select_db($con, $basededatos) or die("Upps! Error en conectar a la Base de Datos");
        
        $sqlClientes         = ("SELECT * FROM  clientes LIMIT 10");
        $dataClientesSelect  = mysqli_query($con, $sqlClientes);

        $dataClientes_ol       = mysqli_query($con, $sqlClientes);
        $dataClientes_ul       = mysqli_query($con, $sqlClientes);
        $dataClientes_radio    = mysqli_query($con, $sqlClientes);
        $dataClientes_checkbox = mysqli_query($con, $sqlClientes);
      ?>


    <div class="col-md-2 mb-5">
      <label for="clientes" class="text-right">Lista de Clientes</label>
      <select name="nombre" class="form-control form-control-sm">
        <option value="">Seleccione el Cliente</option>
        <?php
          while ($dataSelect = mysqli_fetch_array($dataClientesSelect)) { ?>
            <option value="<?php echo $dataSelect["id"]; ?>"><?php echo utf8_encode($dataSelect["nombre"]); ?> </option>
        <?php } ?>
      </select>
    </div>

    <div class="col-md-2 mb-5">
      <ol>
      <?php
        while ($dataOL = mysqli_fetch_array($dataClientes_ol)) { ?>
        <li><?php echo utf8_encode($dataOL["nombre"]); ?></li>
        <?php } ?>
      </ol>
    </div>

    <div class="col-md-2 mb-5">
      <ul>
      <?php
        while ($dataUL = mysqli_fetch_array($dataClientes_ul)) { ?>
        <li><?php echo utf8_encode($dataUL["nombre"]); ?></li>
        <?php } ?>
      </ul>
    </div>

    <div class="col-md-2 mb-5">
      <?php
        while ($dataRadio = mysqli_fetch_array($dataClientes_radio)) { ?>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="nombre" id="<?php echo ($dataRadio["id"]); ?>" value="<?php echo ($dataRadio["id"]); ?>">
          <label class="form-check-label" for="nombre">
          <?php echo utf8_encode($dataRadio["nombre"]); ?>
          </label>
        </div>
      <?php } ?>
    </div>

    <div class="col-md-2 mb-5">
      <?php
        while ($dataCheckbox = mysqli_fetch_array($dataClientes_checkbox)) { ?>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" name="nombre" value="<?php echo $dataCheckbox["id"]; ?>" id="<?php echo $dataCheckbox["id"]; ?>">
          <label class="form-check-label" for="<?php echo $dataCheckbox["id"]; ?>">
            <?php echo utf8_encode($dataCheckbox["nombre"]); ?>
          </label>
        </div>
      <?php } ?>
    </div>


  </div>
  </div>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  </body>
</html>