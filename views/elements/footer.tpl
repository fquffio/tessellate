        <!-- Footer -->
            <section id="footer">
                <ul class="icons">
                    {foreach $footerLinks as $link}<li>{$icon = $link.customProperties.featuredIcon|default:'link'}{$view->element('link', [
                        'item' => $link,
                        'class' => 'icon fa-'|cat:$icon,
                        'text' => '<span class="label">'|cat:$link.title|cat:'</span>'
                    ])}{/foreach}

                </ul>
                <div class="copyright">
                    <ul class="menu">
                        <li>&copy; {$smarty.now|date_format:"%Y"} &mdash; {$publication.rights}</li>
                        <li>Design: <a target="_blank" href="http://html5up.net">HTML5 UP</a></li>
                        <li>Powered by: <a target="_blank" href="http://bedita.com">BEdita</a></li>
                    </ul>
                </div>
            </section>
