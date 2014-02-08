<div class="container">
  <div class="row">
    <h2 class="text-center">Automüügiportaal</h2>
    <hr/>
  </div>
  <div class="row">
    <?foreach( $cars as $car ):?>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <h4><?=$car['car_title']?></h4>
          <img src="<?=$car['car_img']?>" alt="<?=$car['car_title']?>">
          <a href="<?=BASE_URL?>cars/view/<?=$car['car_id']?>" class="btn btn-primary col-xs-12" role="button">Vaata lähemalt</a>
          <div class="clearfix"></div>
        </div>
      </div>
    <?endforeach?>
  </div>
</div>