        <!-- Footer -->
            <section id="footer">
                <ul class="icons">
                    {foreach $footerLinks as $link}<li><a target="_blank" href="{$link.url}" class="icon fa-{$link.customProperty.featuredIcon|default:'link'}" title="{$link.title}"><span class="label">{$link.title}</span></a>{/foreach}
                </ul>
                <div class="copyright">
                    <ul class="menu">
                        <li>&copy; {$smarty.now|date_format:"%Y"} &mdash; {$publication.rights}</li>
                        <li>Design: <a target="_blank" href="http://html5up.net">HTML5 UP</a></li>
                        <li>Powered by: <a target="_blank" href="http://bedita.com">BEdita</a></li>
                    </ul>
                </div>
            </section>
