<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

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
                                <div class="text-container">
                                    <p class="logo-name">Pearlers</p>
                                    <p class="logo-subtitle">Dentist</p>
                                </div>
                            </div>
                        </div>
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="appointments.php">Dashboard</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="doctors.php">Doctors</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="background: #F6F6FF;box-shadow: inset -16px 0px 0px #5E56E5;"
                                    href="receptionist.php">Receptionist</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="patient.php">Patients</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="position:relative; top: 400px; color:#5E56E5; "
                                    href="logout.php">Log Out</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-10">

                    <div class="profile">
                        <!-- Profile card -->
                        <div class="profile-card text-end">
                                    <?php echo $_SESSION['name']; ?>
                                    <?php echo $_SESSION['surname']; ?>
                                </h3>
                                <p class="receptionist-id">Receptionist ID:
                                    <?php echo $_SESSION['receptionists_id']; ?>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div>
                        <h1> Receptionists:</h1>
                        <div class="container">
                            <div class="row">
                                <?php
                                include 'receptionist_read.php';
                                ?>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <br><br><br>

                    </div>
                    <script type="text/javascript">
                        document.getElementById("profile_image").onchange = function () {
                            document.getElementById("form").submit();
                        };
                    </script>
                    <div>

                        <?php

                        include 'receptionist_profile.php';

                        ?>

                    </div>

                    <?php
    } else {
        header("Location: login.php");
        exit();
    }
    ?>


</body>

</html>