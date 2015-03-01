{$options = $options|default:[]}
{$presentation = $presentation|default:'full'}

{* Link *}
{$link = $link|default:0}{if !empty($image.relations.seealso)}{$link = $image.relations.seealso.0}{/if}
{$linkClass = $linkClass|default:''}

{* Image *}
{$image = $beEmbedMedia->object($image, [
    'title' => $image.title|default:'',
    'presentation' => $presentation,
    'width' => 1024
], $options)}

{if $link}
{$view->element('link', [
    'item' => $link,
    'class' => $linkClass,
    'text' => $image
])}
{else}
{$image}
{/if}
