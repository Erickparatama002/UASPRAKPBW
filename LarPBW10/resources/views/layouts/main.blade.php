<!doctype html>
<html lang="en">
  <head>
    <title>Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
  </head>
  <body>
      <!--header-->
      <div class="container-fluid">
            <div class="row">
             <div class="col-lg-12">
              <nav class="navbar navbar-dark bg-info bg-dark rounded-bottom">
               <a class="navbar-brand" href="#"><i class="bi bi-house-fill"></i> Database Mahasiswa UKDW</a>
               <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    
    Erick
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="/user">Data User</a>
    <a class="dropdown-item" href="/logout">Log out</a>
  </div>
</div>
                
            </nav>
             </div>
          </div>
         </div>

        
         <!--Body-->
        <div class="container-fluid py-2">
            <div class="row">
            <div class="col-lg-2 col-md-3 col-sm-4 col-12">
            <div class="row">
            <div class="col-lg-12 col-md-3 col-sm-4 col-12">
        <div class="nav flex-column nav-pills" role="tablist" ariaorientation="vertical">
         <a class="nav-link rounded-0 p-2 border " href="/home">Home</a>
         <a class="nav-link rounded-0 p-2 border " href="/mahasiswa">Mahasiswa</a>
         <a class="nav-link rounded-0 p-2 border " href="#">Dosen</a>
         </div>
            </div>
                </div>
</div>
                    <div class="col-lg-10 vh-100">
                    
   @yield('content')
</div>
         
        <!--footer-->
         <div class="container-fluid">
            <nav class="navbar p-2 bg-info bg-dark">
                <div class="row">
                    <div class="col-lg-12">
                    <span class="badge badge-pill badge-white text-light text-center"><i
                    class="bi bi-at"></i>UKDW.ac.id</span>
                    </div>
                </div>
            </nav>
        </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>