# [Tessellate](http://html5up.net/tessellate) [BEdita](http://bedita.com) frontend #
Just another responsive, awesome-looking BEdita frontend, based on the stunning *Tessellate* free HTML5 template from [HTML5 Up](http://html5up.net/).

## Requirements ##
BEdita versions prior to 3.5.1 (which is currently the latest version) are not supported. You can use this frontend at your own risk.

You'll need to update to the latest stable version of [BEdita](https://github.com/bedita/bedita) in order for this frontend to display correctly.

## Setup ##
1. Clone Tessellate frontend in your `frontends` folder:

        $ cd /var/www/bedita/frontends
        $ git clone https://github.com/bedita/tessellate.git
2. Set proper permissions to `tmp` folder:

        $ chmod -R a+rw tessellate/tmp
3. Copy (or rename) `webroot/index.php.sample` into `webroot/index.php`, and **remember to set the BEdita core path correctly**:

        $ cp tessellate/webroot/index.php.sample tessellate/webroot/index.php
4. Copy (or rename) `config/core.php.sample` into `config/core.php` and edit it if necessary:

        $ cp tessellate/config/core.php.sample tessellate/config/core.php
5. If necessary, copy (or rename) `config/frontend.cfg.php.sample` into `config/frontend.cfg.php` and edit it:

        $ cp tessellate/config/frontend.cfg.php.sample tessellate/config/frontend.cfg.php
6. You are done! :grin: Navigate to your root directory and enjoy your new frontend.

## Troubleshooting ##
If something should go wrong, don't panic! :smile: First of all, take a look at log files (located into `bootstrap/tmp/logs`) and tune your `config/core.php` file, changing debug level as needed to address the issue.

Also, be sure to read [this article](http://docs.bedita.com/setup/if-something-goes-wrong-in-bedita).

## Contributing ##
Issue reporting and pull requests are welcomed, as long as they meet the [coding standards](https://github.com/bedita/bedita/wiki/Coding-Styles).

You can also fork this repository and redistribute your derivative work, as long as you give credits both to me and [HTML5 Up](http://html5up.net/). For further details, see below.

## License [![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/) ##
This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

Please, be sure to read the full [license](LICENSE.md) for further details.
