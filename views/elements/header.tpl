        <section id="header" class="dark">
            <header>
                <h1>{if !empty($publication.public_name)}{$publication.public_name}{else}{$publication.title|default:'Welcome to BEdita + Tessellate'}{/if}</h1>
                {$publication.description|default:''}

            </header>

{if $contactMe|default:0}{$fullTree[] = ['title' => 'Contact me', 'nickname' => 'contact-me']}{/if}
            {if !empty($fullTree)}{$view->element('links', ['items' => $fullTree])}{/if}

        </section>
