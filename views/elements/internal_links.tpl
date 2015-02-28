            <footer>
                {foreach $items as $item}<a href="{$html->url(['#' => $item.nickname])}" class="button scrolly">{$item.title|truncate:20}</a> {/foreach}

            </footer>
