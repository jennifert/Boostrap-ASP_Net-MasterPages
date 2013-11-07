<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
             new ScriptResourceDefinition
             {
                 Path = "~/js/jquery-1.9.1.min.js",
                 DebugPath = "~/js/jquery-1.9.1.js",
                 CdnPath = "http://code.jquery.com/jquery-1.9.1.min.js",
                 CdnDebugPath = "http://code.jquery.com/jquery-1.9.1.js"
             });// Load jQuery

        ScriptManager.ScriptResourceMapping.AddDefinition(
            "bootstrap",
            new ScriptResourceDefinition
            {
                Path = "~/js/bootstrap.min.js",
                DebugPath = "~/js/bootstrap.js",
                CdnPath = "http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js",
                CdnDebugPath = "http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.js"
            }
        ); // Load Bootstrap

       /* ScriptManager.ScriptResourceMapping.AddDefinition("placeholder",
            new ScriptResourceDefinition
            {
                Path = "~/js/jqueryplaceholder.js",
                DebugPath = "~/js/jqueryplaceholder.js"
            }
        ); // Load Placeholder*/
        
        ScriptManager.ScriptResourceMapping.AddDefinition("googlemapsapi",
             new ScriptResourceDefinition
             {
                 Path = "http://maps.google.com/maps/api/js?sensor=false",
                 DebugPath = "http://maps.google.com/maps/api/js?sensor=false"
             });// Load Google Maps
        
        ScriptManager.ScriptResourceMapping.AddDefinition(
           "sitejs",
           new ScriptResourceDefinition
           {
               Path = "~/js/main.js",
               DebugPath = "~/js/main.js"
           }
       ); // Load Bootstrap

       ScriptManager.ScriptResourceMapping.AddDefinition(
           "respondjs",
           new ScriptResourceDefinition
           {
               Path = "~/js/respond.min.js",
               DebugPath = "~/js/respond.src.js"
           }
       ); // Load Bootstrap

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    
    
       
</script>
