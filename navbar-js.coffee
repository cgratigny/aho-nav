window.AhoNavigation = class AhoNavigation
    
    constructor: (@authenticated, @active, @width = "1000px") ->
        @root_url = "https://nav.abundantharvestorganics.com/"
        # @root_url = ""
        @sections = [
            {
                name: "Website",
                image: "website.png",
                url: "http://abundantharvestorganics.com",
                color: "#83b419"
            },
            {
                name: "Kitchen",
                image: "kitchen.png",
                url: "http://kitchen.abundantharvestorganics.com",
                color: "#f3b91f"
            },
            {
                name: "My Account",
                image: "my_account.png",
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
            this.append("<li class='aho-global-top-nav #{section.name.toLowerCase().replace(" ", "-")}'>")
            this.append("<a href='#{section.url}'>")
            this.append("<img src=\"#{@root_url}#{section.image}\" /></a></li>")
            
            if section.name.toLowerCase() == @active.toLowerCase()
                @nav_color = section.color
        this.append("</ul>")
        
    
    sponsors: ->
        this.append("<ul id='sponsors-nav'>")
        this.append("<li><a href='http://www.usda.gov/wps/portal/usda/usdahome?navid=ORGANIC_CERTIFICATIO'><img src='https://nav.abundantharvestorganics.com/logo-usda.png' /></a></li>")
        this.append("<li><a href='http://www.ccof.org/'><img src='https://nav.abundantharvestorganics.com/logo-ccof.png' /></a></li>")
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
        document.write("<div id='aho-global-top-nav' style='border-color:#{@nav_color}'>")
        document.write("<div id='nav-inside' style='width:#{@width}'>")
        document.write(@navigation)
        document.write("</div>")
        document.write("</div>")
            