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
                <label class="control-label">kuni</label>
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