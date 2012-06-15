<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title><g:layoutTitle default="Grails"/></title>
        <link rel="stylesheet" href="${resource(plugin:'htmlfive-boilerplate', dir: 'css', file: 'html5-boilerplate-0.9.5.css')}"/>
        <link rel="shortcut icon" href="${resource(dir:'images/megra',file:'trucker_icon.jpg')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'text.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'grid.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'layout.css')}"/>
        <link rel="stylesheet" href="${resource(dir: 'css/fluid960', file: 'nav.css')}"/>

        <!--[if IE 6]><link rel="stylesheet" href="${resource(dir: 'css/fluid960/ie6.css', file: 'nav.css')}"/><![endif]-->
        <!--[if IE 7]><link rel="stylesheet" href="${resource(dir: 'css/fluid960/ie.css', file: 'nav.css')}"/><![endif]-->
        <g:javascript library="jquery" plugin="jquery"/>
        <script src="${resource(plugin:'jquery-ui', dir: 'jquery-ui/js', file: 'jquery-ui-1.8.7.custom.min.js')}" type="text/javascript" ></script>
        <g:javascript plugin="htmlfive-boilerplate" src="libs/modernizr-1.6.min.js"/>
        <g:javascript src="practiceManager.js"/>

        <less:stylesheet name="main"/>
        <less:stylesheet name="form"/>
        <less:scripts />

  </head>
  <body>
        <div class="container_12">
        <div id="header">
            <g:render template="/templates/navigation"/>
            <a href="${createLink(uri:'/')}"><img src="${resource(dir:'images/practiceManager',file:'big-logo.gif')}" alt="Grails" border="0"  height="95"/></a>
        </div>
        <div id='container'>
                <div class='left'><g:layoutBody /></div>

            </div>
        </div>
        </div>
  <script type="text/javascript" >
      $(document).ready(function () {
            $('.top-level-head').click(function(){
                $(this).next().slideToggle();
                return false;
            });
    });

  </script>
  </body>
</html>