package thefirstgrails

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/login/register" (view: "/login/register")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
