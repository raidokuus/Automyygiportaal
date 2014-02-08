  <div class="span8">
  <h1><?=$car['car_title']?></h1>
  <p><?=$car['car_info']?></p>
  <div>
    <img class="car-thumb" src="<?=$car['car_img']?>" alt="<?=$car['car_title']?>">
    <div>Loodud: </div><span class="badge badge-success"><?=$car['car_created']?></span>
    <div>VIN: </div><span class="badge badge-success"><?=$car['car_vin']?></span>
  </div> 
  <a class="car-link" href='<?=BASE_URL?>cars/'>Mine tagasi</a>
  <hr>
</div>