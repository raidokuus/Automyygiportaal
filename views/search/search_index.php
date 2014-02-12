<div class="container">
    <div class="row">
        <h2 class="text-center">Otsing</h2>
        <hr/>
    </div>
    <div class="row">
        <form class="form-horizontal">
            <fieldset>
                <form method="get">
                    <div class="container">
                        <div class="span8">
                            <form method="get">
                                <label class="control-label">Keretüüp:</label>
                                <select>
                                    <option selected="selected" disabled="disabled">---</option>
                                    <? foreach ($body_type_index as $body_type): ?>
                                        <option
                                            value="<?= $body_type['body_type_id'] ?>"><?= $body_type['body_type_name'] ?></option>
                                    <? endforeach ?>
                        </div>
                        </select>
                        </br>
                        <label class="control-label">Mark:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($make_index as $make): ?>
                                <option value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Mudel:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($make_s as $make): ?>
                                <option
                                    value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Aasta:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($year_index as $year_type): ?>
                                <option value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        <label class="control-label">kuni</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($year_index as $year_type): ?>
                                <option value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Värv:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($color_index as $color_type): ?>
                                <option
                                    value="<?= $color_type['color_id'] ?>"><?= $color_type['color_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Sõiduki läbisõit(km):</label>
                        <select>
                            <? foreach ($km_index as $km_type): ?>
                                <option value="<?= $km_type['km_id'] ?>"><?= $km_type['km_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        <label class="control-label">kuni</label>
                        <select>
                            <? foreach ($km_index as $km_type): ?>
                                <option value="<?= $km_type['km_id'] ?>"><?= $km_type['km_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Kütus:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($fuel_type_index as $fuel_type): ?>
                                <option
                                    value="<?= $fuel_type['fuel_type_id'] ?>"><?= $fuel_type['fuel_type_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Uste arv:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($door_index as $door_type): ?>
                                <option
                                    value="<?= $door_type['door_id'] ?>"><?= $door_type['door_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Hind:</label>
                        <select>
                            <? foreach ($price_index as $price_type): ?>
                                <option value="<?= $price_type['price_id'] ?>"><?= $price_type['price_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        <label class="control-label">kuni</label>
                        <select>
                            <? foreach ($price_index as $price_type): ?>
                                <option value="<?= $price_type['price_id'] ?>"><?= $price_type['price_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Käigukast:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($gearbox_index as $gearbox_type): ?>
                                <option
                                    value="<?= $gearbox_type['gearbox_id'] ?>"><?= $gearbox_type['gearbox_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Vedav sild:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($motion_index as $motion_type): ?>
                                <option
                                    value="<?= $motion_type['motion_id'] ?>"><?= $motion_type['motion_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Mootori võimsus(kW):</label>
                        <select>
                            <? foreach ($kw_index as $kw_type): ?>
                                <option value="<?= $kw_type['kw_id'] ?>"><?= $kw_type['kw_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        <label class="control-label">kuni</label>
                        <select>
                            <? foreach ($kw_index as $kw_type): ?>
                                <option value="<?= $kw_type['kw_id'] ?>"><?= $kw_type['kw_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Toodud riigist:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($country_index as $country_type): ?>
                                <option
                                    value="<?= $country_type['country_id'] ?>"><?= $country_type['country_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        <label class="control-label">Sõiduki asukoht:</label>
                        <select>
                            <option selected="selected" disabled="disabled">---</option>
                            <? foreach ($city_index as $city_type): ?>
                                <option
                                    value="<?= $city_type['city_id'] ?>"><?= $city_type['city_name'] ?></option>
                            <? endforeach ?>
                        </select>
                        </br>
                        </br>
                        <a href="<?= BASE_URL ?>" button type="submit"
                           class="btn btn-large btn-primary">Otsi</button></a>
                    </div>
    </div>
    </form>
    </fieldset>
    </form>
</div>
</div>
