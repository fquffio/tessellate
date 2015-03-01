{$text = $text|default:$item.title}
{$class = $class|default:''}
<a {if $item.object_type|default:'' == 'Link'}target="_blank" href="{$item.url}"{else}href="#{$item.nickname}"{$class = $class|cat:' scrolly'}{/if} class="{$class}" title="{$item.title}">{$text}</a>
