<!DOCTYPE HTML>
<!--
    Tessellate by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

    BEdita porting by fquffio
    http://me.fquff.io | https://github.com/fquffio/tessellate | @fquffio
    Free for personal and commercial use under the CCA 4.0 license (http://creativecommons.org/licenses/by/4.0/)
-->
<html lang="{$currLang2}">
    <head>
        {$html->charset()}
        {$beFront->metaAll()}
        {$beFront->metaDc()}
        {$beFront->metaOg()}

        <title>{$beFront->title()}</title>

        <link rel="icon" href="{$html->webroot}favicon.ico">
        {if $conf->version >= '3.5.2'}{$beFront->metaWebApp($publication.title, ['default' => 'apple-touch-icon.png'], '#000')}{/if}

        <!--[if lte IE 8]>{$html->script('../css/ie/html5shiv')}<![endif]-->
        {$html->script('jquery.min')}
        {$html->script('jquery.scrolly.min')}
        {$html->script('skel.min')}
        {$html->script('init')}
        <noscript>
            {$html->css('skel')}
            {$html->css('style')}
            {$html->css('style-wide')}
        </noscript>
        <!--[if lte IE 8]>{$html->css('ie/v8')}<![endif]-->
        <!--[if lte IE 9]>{$html->css('ie/v9')}<![endif]-->
        {$scripts_for_layout}

        {$beFront->feeds()}
    </head>

    <body>
        {$view->element('header')}

        {$content_for_layout}

        {$view->element('footer')}
    </body>
</html>
