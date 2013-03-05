window.AhoNavigation = class AhoNavigation
    
    constructor: (@authenticated) ->
        @sections = [
            {
                name: "Website",
                prefix: true,
                url: "http://abundantharvestorganics.com"
            },
            {
                name: "Kitchen",
                prefix: true,
                url: "http://kitchen.abundantharvestorganics.com"
            },
            {
                name: "My Account",
                prefix: false,
                url: "http://my.abundantharvestorganics.com"
            }
        ]
        
        @navigation = ""
        this.sites()
        this.sponsors()
        this.info()
        this.account()
    
    
    sites: ->
        this.append("<ul id='sites-nav'>")
        for section in @sections
            this.append("<li class='top-nav#{section.name}'>")
            this.append("<a href='#{section.url}'>")
            if section.prefix
                this.append("<span class='ah'>Abundant <br />Harvest</span>")
            this.append("#{section.name}</a></li>")
        this.append("</ul>")
        
    
    sponsors: ->
        this.append("<ul id='sponsors-nav'>")
        this.append("<a href='http://www.usda.gov/wps/portal/usda/usdahome?navid=ORGANIC_CERTIFICATIO'><img src='logo-usda.png' /></a>")
        this.append("<a href='http://www.ccof.org/'><img src='logo-ccof.png' /></a>")
        this.append("</ul>")
        
        
    info: ->
        this.append("<ul id='info-nav'>")
        this.append("<li><a href=''>Help</a></li>|")
        this.append("<li><a href=''>Contact Us</a></li>")
        this.append("</ul>")
        
        
    account: ->
        this.append("<ul id='account-nav'>")
        this.append("<li><a href=''>Sign Up NOW</a></li>") unless @authenticated
        this.append("<li><a href='' class='tell-a-friend'>Tell A Friend</a></li>")
        this.append("</ul>")
        
           
    append: (content) ->
        @navigation += content
        
    render: ->
        document.write("<div id='top-nav'><div id='nav-inside'>")
        document.write(@navigation)
        document.write("</div></div>")
            