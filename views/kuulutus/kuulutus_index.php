<div class="container">
<div class="modal-header">
    <a id="close" href="<?= BASE_URL ?>" class="close" data-dismiss="modal" aria-hidden="true">×</button></a>

    <h3>Lisa kuulutus</h3>
</div>
<div class="row">
<div class="span12">
<div class="modal-body">
<div class="well">
<form method="post">
<div class="container">
<div class="row">

<div class="span8">
<div class="control-group">
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
        <option
            value="<?= $make['make_id'] ?>"><?= $make['make_name'] ?></option>
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
<label class="control-label">VIN-kood:</label>
<input>
<? foreach ($vin_index as $vin_type): ?>
    <div class="input-group">
        <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
    </div>
<? endforeach ?>
</br>
<label class="control-label">Reg.number:</label>
<input placeholder="näide:123ABC">
<? foreach ($reg_index as $reg_type): ?>
    <input value="<?= $vin_type['vin_id'] ?>"><?= $vin_type['vin_name'] ?>
<? endforeach ?>
</br>
<label class="control-label">Aasta:</label>
<select>
    <option selected="selected" disabled="disabled">---</option>
    <? foreach ($year_index as $year_type): ?>
        <option
            value="<?= $year_type['year_id'] ?>"><?= $year_type['year_name'] ?></option>
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
<input placeholder="näide:85000">
<? foreach ($km_index as $km_type): ?>
    <div class="input-group">
        <input value="<?= $km_type['km_id'] ?>"><?= $km_type['km_name'] ?>
    </div>
<? endforeach ?>
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
<input>
<? foreach ($price_index as $price_type): ?>
    <div class="input-group">
        <input
            value="<?= $price_type['price_id'] ?>"><?= $price_type['price_name'] ?>
    </div>
<? endforeach ?>
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
<input>
<? foreach ($kw_index as $kw_type): ?>
    <div class="input-group">
        <input value="<?= $kw_type['kw_id'] ?>"><?= $kw_type['kw_name'] ?>
    </div>
<? endforeach ?>
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
<label class="control-label">Muu:</label>
<textarea class="form-control" rows="4" style="width: 300px;"></textarea>
<? foreach ($muu_index as $muu_type): ?>
    <input value="<?= $muu_type['muu_id'] ?>"><?= $muu_type['muu_name'] ?>
<? endforeach ?>
</br>
<!-- TABEL -->
<table style="empty-cells:" hide
">
<th>VARUSTUS</th>
</table>

</br>
<table style="empty-cells:hide;" border="1" cellpadding="1" cellspacing="1">

    <th>Turva- ja ohutusvarustus</th>
    <th>Audio</th>
    <th>Muu pask</th>
    <th>Include in report?<br></th>
    </tr>

    <tr>
        <td class="center">
            <input type="checkbox" name="query_myTextEditBox"> roolivõimendi </br>
            <input type="checkbox" name="query_myTextEditBox"> kesklukustus </br>
            <input type="checkbox" name="query_myTextEditBox"> ABS pidurid </br>
            <input type="checkbox" name="query_myTextEditBox"> turvapadi </br>
            <input type="checkbox" name="query_myTextEditBox"> signalisatsioon </br>
            <input type="checkbox" name="query_myTextEditBox"> immobilaiser </br>
            <input type="checkbox" name="query_myTextEditBox"> külglibisemise vastane seade </br>
            <input type="checkbox" name="query_myTextEditBox"> veojõukontroll </br>
            <input type="checkbox" name="query_myTextEditBox"> lisapidurituli </br>
            <input type="checkbox" name="query_myTextEditBox"> turvavööde eelpingutid esiistmetel </br>

        </td>
        <td class="center">
            <input type="checkbox" name="query_myTextEditBox"> stereo </br>
            <input type="checkbox" name="query_myTextEditBox"> helivõimendi </br>
            <input type="checkbox" name="query_myTextEditBox"> kõlarid </br>
            <input type="checkbox" name="query_myTextEditBox"> subwoofer </br>
            <input type="checkbox" name="query_myTextEditBox"> ekraan </br>


        </td>

        <td class="center">
            tere
        </td>

        <td class="center">
            tere222
        </td>


    </tr>
    <tr>
        <th>Tuled</th>
    </tr>
    <tr>
        <td class="center">
            <input type="checkbox" name="query_myTextEditBox"> Xenon </br>
            <input type="checkbox" name="query_myTextEditBox"> esitulede pesurid </br>
            <input type="checkbox" name="query_myTextEditBox"> udutuled </br>
            <input type="checkbox" name="query_myTextEditBox"> tulede korrektor </br>
            <input type="checkbox" name="query_myTextEditBox"> valgustuspakett </br>
        </td>

</table>

<!-- TABELI LÕPP -->


</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
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