angular.module("clientApp").factory "User", ["Restangular", (Restangular) ->
  User =
    singIn: (params)->
      Restangular.one("user/login").customPOST(params)

    singUp: (params)->
      Restangular.all("users").post(params)
      #Restangular.one("user").customPOST(params, "register", {})

    get: (id, params)->
      Restangular.one("accounts", id).get(params)

    all: (params) ->
      Restangular.all("accounts").getList(params)

    create: (attrs) ->
      restangular = Restangular.all("accounts")
      #return a promise to the post to be handled by controller
      restangular.post(attrs)

    update: (resource) ->
      if resource.patch?
        return resource.patch()
      else Restangular.one("accounts", resource.id).patch(resource)

  User
]
