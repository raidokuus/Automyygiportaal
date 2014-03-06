<div class="container container-welcome">
    <div class="row inline-block first-title">
        <h2 class="text-center">Automüügiportaal</h2>
        <hr/>
    </div>
    <div class="row inline-block second-title">
        <h2>Otsi sõidukit</h2>
        <hr/>
    </div>
    <div class="row inline-block">
        <? foreach ($cars as $car): ?>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <h4><?= $car['car_title'] ?></h4>
                    <img src="<?= $car['car_img'] ?>" alt="<?= $car['car_title'] ?>">
                    <a href="<?= BASE_URL ?>cars/view/<?= $car['car_id'] ?>" class="btn btn-primary col-xs-12"
                       role="button">Vaata lähemalt</a>
                    <div class="clearfix"></div>
                </div>
            </div>
        <? endforeach ?>
    </div>
    <div id="rightside">
        <div class="row">
            <form action="search" method="post">
                <label class="control-label">Keretüüp:</label>
                    <select name = "body_type_id">
                    <option selected="selected" disabled="disabled">-kõik-</option>
                    <? foreach ($body_type_index as $body_type): ?>
                        <option value="<?= $body_type['body_type_id'] ?>"><?= $body_type['body_type_name'] ?></option>
                    <? endforeach ?>
                    </div>
                    </select>
                    </br>

                    <label class="control-label">Mark:</label>
                    <select name = "make_id" onchange="get_models()" id="make">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($make_index as $make): ?>
                            <option value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Mudel:</label>
                    <select name = "make_id" id="model">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($make_s as $make): ?>
                            <option value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Aasta:</label>
                    <select name="year_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($year_index as $year_type): ?>
                            <option value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    <label class="control-label">kuni</label>
                    <select name="year_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($year_index as $year_type): ?>
                            <option value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Kütus:</label>
                    <select name="fuel_type_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($fuel_type_index as $fuel_type): ?>
                            <option value="<?= $fuel_type['fuel_type_id'] ?>"><?= $fuel_type['fuel_type_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Uste arv:</label>
                    <select name="door_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($door_index as $door_type): ?>
                            <option value="<?= $door_type['door_id'] ?>"><?= $door_type['door_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Hind (€):</label>
                    <br>
                    <input name ="price_id" placeholder="näide: 300">
                    <? foreach ($price_index as $price_type): ?>
                        <input value="<?= $price_type['price_id'] ?>"><?= $price_type['price_name'] ?>
                    <? endforeach ?>
                    <label class="control-label">kuni</label>
                    <input name = "price_id" placeholder="näide: 49000">
                    <? foreach ($price_index as $price_type): ?>
                        <input value="<?= $price_type['price_id'] ?>"><?= $price_type['price_name'] ?>
                    <? endforeach ?>
                    </br>

                    <label class="control-label">Sõiduki läbisõit (km):</label>
                    <br>
                    <input name = "km_id" placeholder="näide: 85000">
                    <? foreach ($km_index as $km_type): ?>
                        <div class="input-group">
                            <input value="<?= $km_type['km_id'] ?>"><?= $km_type['km_name'] ?>
                        </div>
                    <? endforeach ?>
                    <label class="control-label">kuni</label>
                    <input name = "km_id" placeholder="näide: 380000">
                    <? foreach ($km_index as $km_type): ?>
                        <div class="input-group">
                            <input value="<?= $km_type['km_id'] ?>"><?= $km_type['km_name'] ?>
                        </div>
                    <? endforeach ?>
                    </br>

                    <label class="control-label">Mootori võimsus (kW):</label>
                    <br>
                    <input name = "kw_id" placeholder="näide: 92">
                    <? foreach ($kw_index as $kw_type): ?>
                        <div class="input-group">
                            <input value="<?= $kw_type['kw_id'] ?>"><?= $kw_type['kw_name'] ?>
                        </div>
                    <? endforeach ?>
                    <label class="control-label">kuni</label>
                    <input name ="kw_id" placeholder="näide:132">
                    <? foreach ($kw_index as $kw_type): ?>
                        <div class="input-group">
                            <input value="<?= $kw_type['kw_id'] ?>"><?= $kw_type['kw_name'] ?>
                        </div>
                    <? endforeach ?>
                    </br>

                    <label class="control-label">Käigukast:</label>
                    <select name="gearbox_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($gearbox_index as $gearbox_type): ?>
                            <option value="<?= $gearbox_type['gearbox_id'] ?>"><?= $gearbox_type['gearbox_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Vedav sild:</label>
                    <select name="motion_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($motion_index as $motion_type): ?>
                            <option value="<?= $motion_type['motion_id'] ?>"><?= $motion_type['motion_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>
                    <label class="control-label">Reg.number:</label>
                    <input name = "vin_id" placeholder="näide:123ABC">
                    <? foreach ($reg_index as $reg_type): ?>
                        <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
                    <? endforeach ?>
                    </br>

                    <label class="control-label">VIN-kood:</label>
                    <input name="vin_id">
                    <? foreach ($vin_index as $vin_type): ?>
                        <div class="input-group">
                            <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
                        </div>
                    <? endforeach ?>
                    </br>

                    <label class="control-label">Toodud riigist:</label>
                    <select name="country_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($country_index as $country_type): ?>
                            <option value="<?= $country_type['country_id'] ?>"><?= $country_type['country_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                    <label class="control-label">Sõiduki asukoht:</label>
                    <select name="city_id">
                        <option selected="selected" disabled="disabled">-kõik-</option>
                        <? foreach ($city_index as $city_type): ?>
                            <option value="<?= $city_type['city_id'] ?>"><?= $city_type['city_name'] ?></option>
                        <? endforeach ?>
                    </select>
        </br>
        </br>
        <input type="submit" class="btn btn-large btn-primary" value="otsi">
        </form>
    </div>
</div>
</div>
<script>
    function get_models() {
        $.post(
            'kuulutus',
            {make_id: $('#make').val()},
            function (json) {
                $('#model')
                    .find('option')
                    .remove();
                $.each(json, function (i, value) {
                    console.log($('#make'));
                    $('#model').append($('<option>').text(value.model_name).attr('value', value.model_id));
                });
            }, 'json'
        );
    }
</script>