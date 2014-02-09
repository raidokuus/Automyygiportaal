<!DOCTYPE html>
<html lang="et">
<head>
	<title><?= PROJECT_NAME ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link href="<?= ASSETS_URL ?>components/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
	<!-- <link href="<?= ASSETS_URL ?>css/application.css" rel="stylesheet"> -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="<?= ASSETS_URL ?>components/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<style>
		body {
			padding-top: 50px;
		}

		.form-signin {
			max-width: 330px;
			padding: 15px;
			margin: 0 auto;
		}

		.form-signin .form-signin-heading,
		.form-signin .checkbox {
			margin-bottom: 10px;
		}

		.form-signin .checkbox {
			font-weight: normal;
		}

		.form-signin .form-control {
			position: relative;
			font-size: 16px;
			height: auto;
			padding: 10px;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}

		.form-signin .form-control:focus {
			z-index: 2;
		}

		.modal-input input[type="text"] {
			margin-bottom: -1px;
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
		}

		.modal-input input[type="password"] {
			margin-bottom: 10px;
			border-top-left-radius: 0;
			border-top-right-radius: 0;
		}

		body {
			/*background: url(<?= ASSETS_URL ?>img/bg.jpg);*/
		}

		span.input-group-addon {
			width: 50px;
		}

		div.input-group {
			width: 22%;
		}

		form.form-signin {
			background-color: #ffffff;
		}
	</style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="span12">
            <div class="" id="loginModal">
                <div class="modal-header">
                    <a id="close" href="<?= BASE_URL ?>" class="close" data-dismiss="modal" aria-hidden="true">×</button></a>
                    <h3>Oled juba kasutaja?</h3>
                </div>
                <div class="modal-body">
                    <div class="well">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#login" data-toggle="tab">Logi sisse</a></li>
                            <li><a href="#create" data-toggle="tab">Uus kasutaja</a></li>
                        </ul>
                        <br/>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active in" id="login">
                                <form class="form-horizontal" action='' method="POST">
                                    <? if (isset($errors)) {
                                        foreach ($errors as $error): ?>
                                            <div class="alert alert-danger">
                                                <?= $error ?>
                                            </div>
                                        <? endforeach;
                                    } ?>
                                    <fieldset>
                                        <div id="legend">
                                            <legend class="">Sisene</legend>
                                        </div>
                                        <div class="control-group">
                                            <label for="user"><?__('Kasutaja')?></label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                                <input id="user" name="username" type="text" class="form-control" placeholder="kasutajatunnus">
                                            </div>
                                            <br/>
                                            <label for="pass"><?__('Salasõna')?></label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="icon-key"></i></span>
                                                <input id="pass" name="password" type="password" class="form-control" placeholder="******">
                                            </div>
                                            <br/> <br/>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button class="btn btn-success">Sisene</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="create">
                                <div id="legend">
                                    <legend class="">Registreeru</legend>
                                </div>

                                <form id="tab">
                                    <label for="user"><?__('Kasutaja')?></label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                        <input id="user" name="Kasutaja" type="text" class="form-control">
                                    </div>
                                    <br/>
                                    <label for="pass"><?__('Salasõna')?></label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-key"></i></span>
                                        <input id="pass" name="password" type="password" class="form-control">
                                    </div>
                                    <br/>
                                    <label for="first_name"><?__('Eesnimi')?></label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                        <input id="first_name" name="first_name" type="text" class="form-control">
                                    </div>
                                    <br/>
                                    <label for="last_name"><?__('Perenimi')?></label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                        <input id="last_name" name="last_name" type="text" class="form-control">
                                    </div>
                                    <br/>
                                    <label for="email"><?__('E-mail')?></label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-user"></i></span>
                                        <input id="email" name="email" type="text" class="form-control">
                                    </div>
                                    <br/> <br/>
                                    <div>
                                        <a href="<?=BASE_URL?>/<?=$user['user_id']?>" class="btn btn-success" role="button">Loo kasutaja</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>