<!DOCTYPE html>
<html>
	<head>
		<title>Sociability - Fotos</title>
		<link href="${resource(dir:'css', file:'app.css')}" type="text/css" rel="stylesheet">
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
			</div>
			<div id="container">
				<h1>Fotos</h1>
				<div class="span-16">
					<ul class="actions"><li><g:link class="create" action="create">Nueva Foto</g:link></li></ul>
				</div>
				<div class="span-20">
					<g:each in="${photos}" var="photo">
						<div class="summary">
						
							<p>Nombre:${photo.name}</p>
							<p>Título:${photo.title }</p>
							<p>Subido el dia:${photo.dateUploaded }</p>
						</div>
						<div class="photo">
							<img alt="${photo.title }" src="http://alom.hol.es/${photo.name}" />
						</div>
					</g:each>
					
				</div>
			</div>
			<div id="footer">
			
			</div>
		</div>
	</body>
</html>
