            <section id="{$section.nickname}" class="main">
                <header>
                    <div class="container">
                        <h2>{$section.title}</h2>
                        <p>{$section.description}</p>
                    </div>
                </header>

                {$featured = 0}{$categories = ''}{foreach $section.Category|default:[] as $cat}{$categories = $categories|cat:' '|cat:$cat.name}{if $cat.name == 'featured'}{$featured = 1}{/if}{/foreach}

                <div class="content dark{$categories}">
                    <div class="container">
                        {if !empty($section.relations.poster)}<span class="image featured">{$beEmbedMedia->object($section.relations.poster.0, [
                            'title' => $section.relations.poster.0.title|default:'',
                            'presentation' => 'full'
                        ])}</span>{/if}

                        <div class="row">
                            {foreach $section.objects|default:[] as $item}{$view->element('object', ['width' => 12 / count($section.objects), 'object' => $item])}{/foreach}

                        </div>

                        <div class="row">
                            <div class="12u">
                                {if !empty($section.relations.seealso)}{$view->element('internal_links', ['items' => $section.relations.seealso])}{/if}

                            </div>
                        </div>
                    </div>
                </div>
            </section>
