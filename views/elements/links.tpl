{$noExternal = $noExternal|default:0}
            <footer>
                {foreach $items as $item}{if !$noExternal || $item.object_type != 'Link'}{$view->element('link', [
                    'item' => $item,
                    'class' => 'button',
                    'text' => $item.title|truncate:20
                ])} {/if}{/foreach}

            </footer>
