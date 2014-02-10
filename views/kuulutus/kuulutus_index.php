<form method="post">
<div class="container">
    <div class="row">
        <div class="span8">
            <div class="control-group">
                <label for="liik" class="control-label">
                    Sõiduki liik
                </label>
                <? foreach ($vehicle_types as $vehicle_type): ?>
                    <div class="controls"><input name="data[vehicle_type]" type="radio"> <?= $vehicle_type['vehicle_type_name'] ?>
                    </div>
                <? endforeach ?>
            </div>

            <div class="control-group">
                <label for="mark" class="control-label">
                    Auto mark
                </label>
                <select name="country" id="country">
                    <option value=""></option>
                    <option value="AR">Audi</option>
                    <option value="AU">BMW</option>
                    <option value="AR">Citroen</option>
                    <option value="AU">Dodge</option>
                    <option value="AR">Ferrari</option>
                    <option value="AU">Fiat</option>
                    <option value="AR">Honda</option>
                    <option value="AU">Hyundai</option>
                    <option value="AR">Lada</option>
                    <option value="AU">Mazda</option>
                    <option value="AR">Mercedez-Benz</option>
                    <option value="AU">SEAT</option>
                    <option value="AR">Volkswagen</option>
                    <option value="AU">Volvo</option>


                </select>

            </div>

            <div class="control-group">
                <label for="nimi" class="control-label">
                    Eesnimi
                </label>

                <div class="controls"><input name="enimi" type="text" value="" id="enimi">
                </div>
            </div>
            <div class="control-group">
                <label for="nimi" class="control-label">
                    Perekonnanimi
                </label>

                <div class="controls"><input name="enimi" type="text" value="" id="enimi">
                </div>
            </div>
            <div class="control-group">
                <label for="nimi" class="control-label">
                    E-mail
                </label>

                <div class="controls"><input name="enimi" type="text" value="" id="enimi">
                </div>
            </div>
            <div class="control-group">
                <label for="nimi" class="control-label">
                    Tel. nr
                </label>

                <div class="controls"><input name="enimi" type="text" value="" id="enimi">
                </div>
            </div>


            <div class="control-group">
                <label for="country" class="control-label">
                    Riik
                </label>

                <div class="controls">
                    <select name="country" id="country">
                        <option value=""></option>
                        <option value="AR">Argentina</option>
                        <option value="AU">Australia</option>
                        <option value="AT">Austria</option>
                        <option value="BE">Belgium</option>
                        <option value="BA">Bosnia and Herzegovina</option>
                        <option value="BR">Brazil</option>
                        <option value="BG">Bulgaria</option>
                        <option value="CA">Canada</option>
                        <option value="CL">Chile</option>
                        <option value="CN">China</option>
                        <option value="CO">Colombia</option>
                        <option value="CR">Costa Rica</option>
                        <option value="HR">Croatia</option>
                        <option value="CU">Cuba</option>
                        <option value="CY">Cyprus</option>
                        <option value="CZ">Czech Republic</option>
                        <option value="DK">Denmark</option>
                        <option value="DO">Dominican Republic</option>
                        <option value="EG">Egypt</option>
                        <option value="EE">Estonia</option>
                        <option value="FI">Finland</option>
                        <option value="FR">France</option>
                        <option value="GE">Georgia</option>
                        <option value="DE">Germany</option>
                        <option value="GR">Greece</option>
                        <option value="HK">Hong Kong S.A.R., China</option>
                        <option value="HU">Hungary</option>
                        <option value="IS">Iceland</option>
                        <option value="IN">India</option>
                        <option value="ID">Indonesia</option>
                        <option value="IR">Iran</option>
                        <option value="IQ">Iraq</option>
                        <option value="IE">Ireland</option>
                        <option value="IL">Israel</option>
                        <option value="IT">Italy</option>
                        <option value="JM">Jamaica</option>
                        <option value="JP">Japan</option>
                        <option value="LV">Latvia</option>
                        <option value="LT">Lithuania</option>
                        <option value="LU">Luxembourg</option>
                        <option value="MC">Monaco</option>
                        <option value="NL">Netherlands</option>
                        <option value="NZ">New Zealand</option>
                        <option value="KP">North Korea</option>
                        <option value="NO">Norway</option>
                        <option value="PK">Pakistan</option>
                        <option value="PE">Peru</option>
                        <option value="PL">Poland</option>
                        <option value="RO">Romania</option>
                        <option value="RU">Russia</option>
                        <option value="SA">Saudi Arabia</option>
                        <option value="SK">Slovakia</option>
                        <option value="SI">Slovenia</option>
                        <option value="ES">Spain</option>
                        <option value="SE">Sweden</option>
                        <option value="CH">Switzerland</option>
                        <option value="TW">Taiwan</option>
                        <option value="TH">Thailand</option>
                        <option value="TN">Tunisia</option>
                        <option value="TR">Turkey</option>
                        <option value="UA">Ukraine</option>
                        <option value="AE">United Arab Emirates</option>
                        <option value="GB">United Kingdom</option>
                        <option value="US">USA</option>

                    </select>
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