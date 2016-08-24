<html class=""><head><meta charset="UTF-8"><meta name="robots" content="noindex">
<head>
  <meta name="description" content="Setup a free domain sales page in minutes. Convert incoming traffic into qualified offers within minutes of setting up.">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="bootstrap.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <link rel="shortcut icon" href="favicon.ico">
  <script src="lazyload.js"></script>
  <script src="appear.js"></script>

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','http://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-8798837-20', 'auto');
    ga('send', 'pageview');


  </script>
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900' rel='stylesheet' type='text/css'>
</head>

<body>
  <title>Domain Sales Page | Flippa.com</title>

  <div class="panel">
    <div class="container header">
      <a rel="nofollow" target="_blank" href="http://flippa.com"><img class="header-logo" src="logo.png"/></a>
      <div class="herobox">
        <h2 class="valueprop">Setup a domain sales page in minutes</h2>
        <a class="cta scroll" href="#getstarted">GET STARTED  —  FREE</a>
      </div>
    </div>

    <div class="container sleek">
      <div class="sidecontent">
        <h2 class="sideheading" >The most powerful domain sales page</h2>
        <p>Three reasons why you should setup a sales page and start receiving offers immediately.</p>
        <p><img src="1.png"/> <b>It's FREE!</b> Update name servers for one or all your domains</p>
        <p><img src="3.png"/> Provide <b>custom page text</b> or use our <b>dynamic sales text</b></p>
        <p><img src="2.png"/> Manage <b>qualified offers</b> from within your Flippa domain portfolio.</p>
      </div>
      <div class="formdiv">
        <img data-original="form.gif" src="form1.jpg" class="lazy form" width="800" height="612">
      </div>
    </div>

    <div class="container sleek-right">
      <div class="getstartedcontent">
        <h2 class="sideheading getstarted" id="getstarted" >Get started</h2>
        <p>Adding a sales page to your domain takes as little as 5 minutes.</p>
        <p><img src="1.png"/> <b>Add your domains</b> to your <a rel="nofollow" target="_blank" href="http://flippa.com/sell-domains">Flippa.com</a> domain portfolio (free!)</p>
        <p><img src="2.png"/> Update domain name servers to <b>ns1.flippa.com</b> & <b>ns2.flippa.com</b>. </p>
        <p><img src="3.png"/> <b>Done!</b> We'll email you when offers come through. </p>

        <p class="small">Updating name servers can take a maximum of 24 hours, but generally will complete within hours. Need help? email us at support@flippa.com</p>
      </div>
      <div class="nsdiv">
        <img class="lazy ns" src="ns1.jpg" data-original="ns.gif" width="638" height="410">
      </div>
    </div>

    <div class="container grey">
      <p class="footer">COPYRIGHT © 2015 FLIPPA.COM PTY LTD. ALL RIGHTS RESERVED.</p>
    </div>
    <script>
      var hashTagActive = "";
      $(".scroll").click(function (event) {
        if(hashTagActive != this.hash) { //this will prevent if the user click several times the same link to freeze the scroll.
          event.preventDefault();
            //calculate destination place
            var dest = 0;
            if ($(this.hash).offset().top > $(document).height() - $(window).height()) {
              dest = $(document).height() - $(window).height();
            } else {
              dest = $(this.hash).offset().top;
            }
            //go to destination
            $('html,body').animate({
              scrollTop: dest
            }, 1000, 'swing');
            hashTagActive = this.hash;
          }
        });

      $(function() {
        $("img.lazy").lazyload();
      });
    </script>

    <script>
      $('.getstarted').appear();
      $('.getstarted').on('appear', function(event, $all_appeared_elements) {
        window.optimizely.push(["trackEvent", "setupviewed"]);    
      });
    </script>
  </body></html>