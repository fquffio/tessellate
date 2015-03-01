<!DOCTYPE html>
<html>
    <head>
        {$html->charset()}

        <title>{$beFront->title()}</title>
    </head>

    <body>
        {$content_for_layout}

        {$beFront->stats()}
    </body>
</html>
