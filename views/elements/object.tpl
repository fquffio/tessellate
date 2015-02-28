{$width = max(4, min($width|round, 12))|default:12}
{$poster = 0}{if !empty($object.relations.poster)}{$poster = 1}{/if}
{$featured = 0}{if !$poster && !empty($object.customProperties.featuredIcon)}{$featured = 1}{/if}
                            <div class="{$width}u{if $poster || $featured} featured{/if}">
                                <section id="{$object.nickname}">
                                    {if $poster}<span class="feature-icon">{$beEmbedMedia->object($object.relations.poster.0, [
                                        'title' => $object.relations.poster.0.title|default:'',
                                        'presentation' => 'full'
                                    ], ['class' => 'icon'])}</span>{/if}

                                    {if $featured}<span class="feature-icon"><span class="icon fa-{$object.customProperties.featuredIcon}"></span></span>{/if}

                                    <header>
                                        <h3>{$object.title}</h3>
                                        {$object.description|default:''}

                                    </header>

                                    {$object.body|default:''}

                                    {if !empty($object.relations.seealso)}{$view->element('internal_links', ['items' => $object.relations.seealso])}{/if}

                                </section>
                            </div>
