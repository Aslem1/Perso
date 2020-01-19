<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8" />
		<title>Site ponton</title>
		<link rel="stylesheet" type="text/css" href="css/contexte.css">
		<link rel="stylesheet" type="text/css" href="css/accueil.css">
	</head>
	<body>
		<div id="wrapper">
			<h1>Salut <?php echo "{$_SERVER['REMOTE_USER']}"; ?></h1>
			<article class="centre">
				<iframe id="calendar" src="https://www.google.com/calendar/embed?showTitle=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=2&amp;bgcolor=%23FFFFFF&amp;src=pontonpdb%40gmail.com&amp;color=%232952A3&amp;ctz=Europe%2FParis" scrolling="no"></iframe>
			</article>
			<article class="droite">
				<section>
					<!-- widget meteo -->
					<div id="widget_8c411ac5a02885c075757c51dba7f8b3">
						<span id="l_8c411ac5a02885c075757c51dba7f8b3"><a href="http://www.my-meteo.fr/">MyMeteo</a></span>
						<script type="text/javascript">
							(function()
							{
								var my = document.createElement("script"); my.type = "text/javascript"; my.async = true;
								my.src = "http://services.my-meteo.fr/widget/js-design.php?ville=34032&format=grand-rectangle&nb_jours=3&coins&ombre1=000000&c1=ffffff&c2=a9a9a9&c3=ffffff&c4=ffffff&c5=ffffff&police=0&t_icones=2&fond=11&masque=1&x=300&y=250&id=8c411ac5a02885c075757c51dba7f8b3&le";
								var z = document.getElementsByTagName("script")[0]; z.parentNode.insertBefore(my, z);
							})();
						</script>
					</div>
					<!-- widget meteo -->
				</section>
				<section>
					<iframe src="http://horloge.maree.frbateaux.net/ws127?col=1" width="160" height="260" frameborder="0" scrolling="no"><a href="http://maree.info/" target="_top" rel="dofollow">Calendrier des marÃ©es - horaire, hauteur, coefficient de marÃ©e</a></iframe>
					<!-- width="240" height="350"-->
				</section>
			</article>
		</div>
		<footer>
			<a href="#">index</a>
			<a href="cgu.php">CGU</a>
		</footer>
	</body>
</html>
