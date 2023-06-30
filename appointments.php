<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Page</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>
    <?php
    session_start();

    if (isset($_SESSION['receptionists_id']) && isset($_SESSION['name'])) {
        ?>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2">
                    <div class="navigation">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" style="background: #F7F7F7;"
                                    href="appointments.php">Dashboard</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="doctors.php">Dentists</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="receptionist.php">Receptionist</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="patient.php">Patients</a>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-md-10">
                                    <?php echo $_SESSION['name']; ?>
                                    <?php echo $_SESSION['surname']; ?>
                                </h3>
                            </div>
                        </div>
                    </div>

                    <div>
                        <br>
                        <h1>Appointments</h1>
                        <br>
                        <?php
                        include 'appointments_read.php';
                        ?>
                    </div>

                    <div>
                        <br><br><br>
                        <?php
                        include 'appointments_create.php';
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <?php
    } else {
        header("Location: login.php");
        exit();
    }
    ?>
</body>

</html>