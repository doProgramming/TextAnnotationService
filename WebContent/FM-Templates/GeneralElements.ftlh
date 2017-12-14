<style>
  @media print {
    /* Hide all the things that aren't interesting */
    div.header-social-media { display:none; }
    div.project-share { display:none; }
    div.project-share > ul.inline-list { display:none; }
    div.project-navigation { display:none; }
    div#cookie-notification > p { display:none; }
    div#footer { display:none; }
    nav#nav { display:none; }
    div#highlighter-control { display:none; }
    /* Used to remove the (/psm/) link at the OMiLAB banner, cause that one probably isn't really interesting */
    div#header a[href]:after { content: none !important; }

    /* Since we remove the navigation, we also have to make the middle column wider */
    div#projectcontent { width:100%; }

    /* Also some improvements to certain layouts, since somehow printing through the browser seems to register as an -xs screen */
    div.projectheader > div.row > div.col-sm-3 { float:left; }
    div#annotatable { text-align:justify; }
  }
</style>