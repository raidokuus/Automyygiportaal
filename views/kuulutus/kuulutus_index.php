<form method="post">
    <div class="container">
        <div class="row">
            <div class="span8">
                <div class="control-group">
                    <label class="control-label">Mark</label>
                    <select>
                        <? foreach ($make_index as $make): ?>
                            <option value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                        <? endforeach ?>
                    </select>
                    </br>

                <label class="control-label">Mudel</label>
                <select>
                    <? foreach ($make_s as $make): ?>
                        <option value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
                    <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Keretüüp</label>
                <select>
                    <? foreach ($body_type_index as $body_type): ?>
                        <option value="<?= $body_type['body_type_id'] ?>"><?= $body_type['body_type_name'] ?></option>
                    <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Kütus</label>
                <select>
                    <? foreach ($fuel_type_index as $fuel_type): ?>
                        <option value="<?= $fuel_type['fuel_type_id'] ?>"><?= $fuel_type['fuel_type_name'] ?></option>
                    <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Aasta</label>
                <select>
                    <? foreach ($year_index as $year_type): ?>
                        <option value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
                    <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Käigukast</label>
                <select>
                        <? foreach ($gearbox_index as $gearbox_type): ?>
                            <option value="<?= $gearbox_type['gearbox_id'] ?>"><?= $gearbox_type['gearbox_name'] ?></option>
                        <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Värv</label>
                <select>
                        <? foreach ($color_index as $color_type): ?>
                            <option value="<?= $color_type['color_id'] ?>"><?= $color_type['color_name'] ?></option>
                        <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">VIN-kood</label>
                <input>
                    <? foreach ($vin_index as $vin_type): ?>
                        <div class="input-group">
                        <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
                        </div>
                    <? endforeach ?>
                    </br>
                <label class="control-label">Reg.number</label>
                <input placeholder="näide:123ABC">
                    <? foreach ($reg_index as $reg_type): ?>
                        <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
                    <? endforeach ?>
                </br>
                <label class="control-label">Vedav sild:</label>
                <select>
                        <? foreach ($motion_index as $motion_type): ?>
                            <option value="<?= $motion_type['motion_id'] ?>"><?= $motion_type['motion_name'] ?></option>
                        <? endforeach ?>
                </select>
                    </br>
                 <label class="control-label">Muu:</label>
                    <textarea class="form-control" rows="4"></textarea>
                    <? foreach ($muu_index as $muu_type): ?>
                        <input value="<?= $muu_type['muu_id'] ?>"><?= $muu_type['muu_name'] ?>
                    <? endforeach ?>
                    </br>
                <label class="control-label">Toodud riigist:</label>
                <select>
                        <? foreach ($country_index as $country_type): ?>
                            <option value="<?= $country_type['country_id'] ?>"><?= $country_type['country_name'] ?></option>
                        <? endforeach ?>
                </select>
                    </br>
                <label class="control-label">Sõiduki asukoht:</label>
                <select>
                        <? foreach ($city_index as $city_type): ?>
                            <option value="<?= $city_type['city_id'] ?>"><?= $city_type['city_name'] ?></option>
                        <? endforeach ?>
                </select>
                </div>
            </div>
        </div>
    </div>
</form>
<script language="JavaScript" type="text/javascript">
    function HandleBrowseClick() {
        var fileinput = document.getElementById("browse");
        fileinput.click();
    }
    function Handlechange() {
        var fileinput = document.getElementById("browse");
        var textinput = document.getElementById("filename");
        textinput.value = fileinput.value;
    }


</script>
<label for="valim" class="control-label">
    Vali sõiduki pildid
</label>
<input type="file" id="browse" name="fileupload" style="display: none" onChange="Handlechange();"/>
<input type="text" id="filename" readonly="true"/>
<input type="button" value="Vali pildid" id="fakeBrowse" onclick="HandleBrowseClick();"/>

<div class="form-actions">
    <a href="<?= BASE_URL ?>" button type="submit" class="btn btn-large btn-primary">Salvesta</button></a>
</div>
</div>
</div>
<!-- .span8 -->
</div>
</div>
</form>