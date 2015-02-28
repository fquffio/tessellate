{$options = $options|default:[]}
{$presentation = $presentation|default:'full'}

{* Link *}
{$link = $link|default:0}{if !empty($image.relations.seealso)}{$link = $image.relations.seealso.0}{/if}
{$linkClass = $linkClass|default:''}

{if $link}
<a {if $link.object_type == 'Link'}target="_blank" href="{$title.url}"{else}href="{$html->url(['#' => $link.nickname])}"{/if} title="{$link.title}" class="{$linkClass}">
{/if}

{$beEmbedMedia->object($image, [
    'title' => $image.title|default:'',
    'presentation' => $presentation,
    'width' => 1024
], $options)}{* Image *}

{if $link}
</a>
{/if}
