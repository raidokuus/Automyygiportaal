<table id="cars-table" class="table table-bordered table-striped" style="margin-top: 50px">
    <thead>
    <tr>
        <th><input type="checkbox" onClick="toggle(this)"style="margin-bottom: 4px">Select all </th>
        <th>Grupp</th>
        <th>Õpilaste arv</th>
    </tr>
    </thead>
    <tbody>

    <?if(isset($cars)):foreach( $cars as $car):?>

    <tr id="<?$car["car_id"]?>">
        <?foreach ($car as $field=>$value):?>
            <td><?=$value?></td>
        <?endforeach?>
    </tr>
<?endforeach;endif?>
</tbody>
</table>