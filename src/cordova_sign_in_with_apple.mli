[@@@js.stop]

val is_available : unit -> bool

[@@@js.start]

[@@@js.implem
let is_available () =
  Js_of_ocaml.Js.Optdef.test
    Js_of_ocaml.Js.Unsafe.global ##. cordova ##. plugins ##. SignInWithApple]

type success

val authorization_code : success -> string [@@js.get "authorizationCode"]

val identity_token : success -> string [@@js.get "identityToken"]

val email : success -> string [@@js.get "email"]

val state : success -> string [@@js.get "state"]

val user : success -> string [@@js.get "user"]

type success_name

val full_name : success -> success_name option [@@js.get "fullName"]

val given_name : success_name -> string [@@js.get "givenName"]

val family_name : success_name -> string [@@js.get "familyName"]

val name_prefix : success_name -> string [@@js.get "namePrefix"]

val name_suffix : success_name -> string [@@js.get "nameSuffix"]

val nickname : success_name -> string [@@js.get "nickname"]

type error

val localized_description : error -> string [@@js.get "localizedDescription"]

val _error : error -> string [@@js.get "error"]

val code : error -> string [@@js.get "code"]

val localized_failure_reason : error -> string
  [@@js.get "localizedFailureReason"]

val signin :
  requested_scopes:int array -> (success -> unit) -> (error -> unit) -> unit
  [@@js.global "window.cordova.plugins.SignInWithApple.signin"]
