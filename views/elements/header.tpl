        <section id="header" class="dark">
            <header>
                <h1>{if !empty($publication.public_name)}{$publication.public_name}{else}{$publication.title|default:'Welcome to BEdita + Tessellate'}{/if}</h1>
                <p>{$publication.description|default:''}</p>
            </header>

            {if !empty($fullTree)}{$view->element('internal_links', ['items' => $fullTree])}{/if}

        </section>
