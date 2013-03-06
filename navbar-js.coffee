window.AhoNavigation = class AhoNavigation
    
    constructor: (@authenticated, @active, @width = "1000px") ->
        @sections = [
            {
                name: "Website",
                prefix: true,
                url: "http://abundantharvestorganics.com",
                color: "#83b419"
            },
            {
                name: "Kitchen",
                prefix: true,
                url: "http://kitchen.abundantharvestorganics.com",
                color: "#f3b91f"
            },
            {
                name: "My Account",
                prefix: false,
                url: "http://my.abundantharvestorganics.com",
                color: "#754c24"
            }
        ]
        
        @nav_color = ""
        @navigation = ""
        this.sites()
        this.sponsors()
        this.info()
        this.account()
    
    
    sites: ->
        this.append("<ul id='sites-nav'>")
        for section in @sections
            this.append("<li class='top-nav #{section.name}'>")
            this.append("<a href='#{section.url}' style='background-color:#{section.color}'>")
            if section.prefix
                this.append("<span class='ah'>Abundant <br />Harvest</span>")
            this.append("#{section.name}</a></li>")
            
            if section.name.toLowerCase() == @active.toLowerCase()
                @nav_color = section.color
        this.append("</ul>")
        
    
    sponsors: ->
        this.append("<ul id='sponsors-nav'>")
        this.append("<li><a href='http://www.usda.gov/wps/portal/usda/usdahome?navid=ORGANIC_CERTIFICATIO'><img src='http://cgratigny.github.com/aho-nav/logo-usda.png' /></a></li>")
        this.append("<li><a href='http://www.ccof.org/'><img src='http://cgratigny.github.com/aho-nav/logo-ccof.png' /></a></li>")
        this.append("</ul>")
        
        
    info: ->
        this.append("<ul id='info-nav'>")
        this.append("<li><a href='http://www.abundantharvestorganics.com'>Help</a></li>|")
        this.append("<li><a href='http://www.abundantharvestorganics.com/contacts/'>Contact Us</a></li>")
        this.append("</ul>")
        
        
    account: ->
        this.append("<ul id='account-nav'>")
        this.append("<li><a href='http://my.abundantharvestorganics.com/signup-delivery-step1.html'>Sign Up NOW</a></li>") unless @authenticated
        this.append("<li><a href='http://www.abundantharvestorganics.com' class='tell-a-friend'>Tell A Friend</a></li>")
        this.append("</ul>")
        
           
    append: (content) ->
        @navigation += content
        
    render: ->
        document.write("<div id='top-nav' style='border-color:#{@nav_color}'>")
        document.write("<div id='nav-inside' style='width:#{@width}'>")
        document.write(@navigation)
        document.write("</div>")
        document.write("</div>")
            