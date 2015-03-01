            <section id="contact-me" class="main">
                <header>
                    <div class="container">
                        <h2>{t}Contact me{/t}</h2>
                    </div>
                </header>

                <div class="content style4 featured">
                    <div class="container 75%">
                        <form method="POST" name="contact-me" action="{$html->url(['contact_me'])}">
                            <div class="row 50%">
                                <div class="6u"><input type="text" name="data[name]" placeholder="{t}Name{/t}" required /></div>
                                <div class="6u"><input type="email" name="data[email]" placeholder="{t}Email{/t}" required /></div>
                            </div>
                            <div class="row 50%">
                                <div class="12u"><textarea name="data[message]" placeholder="{t}Message{/t}" required></textarea></div>
                            </div>
                            <div class="row">
                                <div class="12u">
                                    <ul class="actions">
                                        <li><input type="submit" name="data[submit]" class="button" value="{t}Send message{/t}"></li>
                                        <li><input type="reset" name="data[reset]" class="button alt" value="{t}Clear form{/t}"></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
