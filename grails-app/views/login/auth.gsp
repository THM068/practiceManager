<head>
<title>Login</title>
    <link rel="stylesheet" href="${resource(plugin:'htmlfive-boilerplate', dir: 'css', file: 'html5-boilerplate-0.9.5.css')}"/>
        <link rel="shortcut icon" href="${resource(dir:'images/megra',file:'trucker_icon.jpg')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'text.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'grid.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'layout.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'nav.css')}"/>

        <!--[if IE 6]><link rel="stylesheet" href="${resource(dir: 'css/fluid960/ie6.css', file: 'nav.css')}"/><![endif]-->
        <!--[if IE 7]><link rel="stylesheet" href="${resource(dir: 'css/fluid960/ie.css', file: 'nav.css')}"/><![endif]-->

        <g:javascript plugin="htmlfive-boilerplate" src="libs/modernizr-1.6.min.js"/>

        <less:stylesheet name="login"/>
        <less:scripts />

</head>

<body id="login-body">
    <div id="login-logo-holder">
         <img src="${resource(dir:'images/practiceManager',file:'login-logo.png')}" />
    </div>

	<div id='login'>
		<div class='inner'>
			<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
			</g:if>
			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<p>
					<label for='username'>Login Name</label>
					<input type='text' class='long-fields' name='j_username' id='username' />
				</p>
				<p>
					<label for='password'>Password</label>&nbsp;&nbsp;&nbsp;
					<input type='password' class='long-fields' name='j_password' id='password' />
				</p>

				<p>
					<input type='submit' value='Login' class="submit-button-position"/>
				</p>
			</form>
		</div>
	</div>
<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
