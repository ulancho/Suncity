<?php
//echo "<pre>";
//print_r($data);
//echo "</pre>";
//?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Страничка брониррование</title>
    <link href="<?=base_url()?>assets/main/css/bron_page_style.css" rel="stylesheet" type="text/css">
    <link href="<?=base_url()?>assets/main/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="bron_container">
    <div class="bron_title">
        <h1 style="text-align: center">Раздел бронирование</h1>
    </div>
<div class="bron_content">
    <div>
        <h3 id="broneTitle">Бронировние билетов</h3>
        <table class="broneTable" id="broneTable">
            <tr>
                <?php foreach ($data['vip_booking_services'] as $row):?>
                    <td>  <p><?=$row->title?></p></td>
                    <td>Удалить</td>
                <?php endforeach ?>
            </tr>
            </table>
    </div>

    <div>
        <h3 id="broneTitle">Бронировние booking_package</h3>
        <table class="broneTable" id="broneTable">
        <tr>
        <?php foreach ($data['booking_package'] as $row):?>
            <td><p><?=$row->title?></p></td>
            <td>Удалить</td>
        <?php endforeach ?>
        </tr>
        </table>
    </div>

    <div>
        <h3 id="broneTitle">Бронировние ticket_booking</h3>
        <table class="broneTable" id="broneTable">
        <tr>
        <?php foreach ($data['ticket_booking'] as $row):?>
            <td><p><?=$row->title?></p></td>
            <td>Удалить</td>
        <?php endforeach ?>
        </tr>
        </table>
    </div>

    <div>
        <h3 id="broneTitle">Бронировние ресторана</h3>
        <table class="broneTable" id="broneTable">
        <tr>
        <?php foreach ($data['booking_restaurants'] as $row):?>
        <td><p><?=$row->title?></p></td>
            <td>Удалить</td>
        <?php endforeach ?>
        </tr>
        </table>
    </div>

    <div>
        <h3 id="broneTitle">Бронировние accommodation_package</h3>
        <table class="broneTable" id="broneTable">
        <?php foreach ($data['accommodation_package'] as $row):?>
        <td><p><?=$row->title?></p></td>
            <td>Удалить</td>
        <?php endforeach ?>
        </table>
        <hr>
    </div>

    <div>
        <h3 id="broneTitle">Бронировние транспорта</h3>
        <table class="broneTable" id="broneTable">
        <?php foreach ($data['transportation_services'] as $row):?>
        <td><p><?=$row->title?></p></td>
            <td>Удалить</td>
        <?php endforeach ?>
        </table>
        <hr>
    </div>

</div>
</div>
<script>
window.onload = function(){
    var broneTitle = document.querySelectorAll('#broneTitle');

    for(var i = 0; i < broneTitle.length; i++){
        broneTitle[i].onclick = function(){
            this.nextElementSibling.classList.toggle('prevbroneTable');
        }
    }
}

</script>
</body>
</html>