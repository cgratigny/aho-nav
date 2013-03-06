# AHO Navigation

[View a sample](http://cgratigny.github.com/aho-nav/sample.html)

To embed the navigation on your site, paste the following-

    <link rel="stylesheet" href="https://raw.github.com/cgratigny/aho-nav/master/navbar-style.css" type="text/css" media="screen" />
    <script type="text/javascript" src="https://raw.github.com/cgratigny/aho-nav/master/navbar-js.js"></script>
    <script>
      var aho = new AhoNavigation(false, "kitchen", "1200px"); // Set whether or not the user has been authenticated
      aho.render();
    </script>
    
Argument list-

1. (boolean) - user signed in
2. (string) - current site (options- 'kitchen', 'website', 'my account')
3. (string) - navigation width (percentage or pixels are accepted - 1200px or 80% is acceptable)