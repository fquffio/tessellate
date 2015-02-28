{$width = max(4, min($width|round, 12))|default:12}
{$poster = 0}{if !empty($object.relations.poster)}{$poster = 1}{/if}
{$featured = 0}{if !$poster && !empty($object.customProperties.featuredIcon)}{$featured = 1}{/if}
{$gallery = 0}{if $object.object_type == 'Gallery' && !empty($object.relations.attach)}{$gallery = 1}{$width = 4}{/if}

                            <div class="{$width}u{if $poster || $featured} featured{/if}">
                                <section id="{$object.nickname}">
                                    {if $poster}<span class="feature-icon">{$view->element('image', ['image' => $object.relations.poster.0, 'options' => [
                                        'class' => 'icon'
                                    ]])}</span>{/if}

                                    {if $featured}<span class="feature-icon"><span class="icon fa-{$object.customProperties.featuredIcon}"></span></span>{/if}

                                    <header>
                                        <h3>{$object.title}</h3>
                                        {$object.description|default:''}

                                    </header>

                                    {$object.body|default:''}

                                    {if !empty($object.relations.seealso)}{$view->element('internal_links', ['items' => $object.relations.seealso])}{/if}

                                </section>
                            </div>

{if $gallery}{* Gallery images *}
                            <div class="8u">
{foreach $object.relations.attach as $image}
{if $image.object_type == 'Image'}
                                {if $image@iteration % 2 == 1}<div class="row no-collapse">{/if}

                                    <div class="6u">{$view->element('image', ['image' => $image, 'linkClass' => 'image fit', 'presentation' => 'thumb', 'link' => $image])}</div>

                                {if $image@iteration % 2 == 0 || $image@last}</div>{/if}
{/if}
{/foreach}
                            </div>
{/if}
