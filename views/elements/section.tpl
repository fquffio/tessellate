            <section id="{$section.nickname}" class="main">
                <header>
                    <div class="container">
                        <h2>{$section.title}</h2>
                        {$section.description|default:''}
                    </div>
                </header>

{if !empty($section.objects)}
                <div class="content dark {$fqSet->classicExtract($section.Category|default:[], '{n}.name')|implode:' '}">
                    <div class="container">
                        {if !empty($section.relations.poster)}<span class="image featured">{$view->element('image', ['image' => $section.relations.poster.0])}</span>{/if}{* Poster *}

                        <div class="row">
{$count = count($section.objects) - count($fqSet->extract('/.[object_type=Gallery]', $section.objects))}
                            {foreach $section.objects|default:[] as $item}{$view->element('object', ['width' => 12 / $count|default:1, 'object' => $item])}{/foreach}{* View objects *}

                        </div>

{if !empty($section.relations.seealso)}{* Related contents link *}
                        <div class="row">
                            <div class="12u">
                                {$view->element('links', ['items' => $section.relations.seealso])}

                            </div>
                        </div>
{/if}
                    </div>
                </div>
{/if}
            </section>
