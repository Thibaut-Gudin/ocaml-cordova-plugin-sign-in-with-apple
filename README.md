# ocaml-cordova-plugin-sign-in-with-apple

Binding to [cordova-plugin-sign-in-with-apple](https://github.com/twogate/cordova-plugin-sign-in-with-apple)

## What does ocaml-cordova-plugin-sign-in-with-apple do ?

Like its name suggests, this plugin allows you to add a "sign-in"
section in your web application with apple. This library can be used
to access this "JavaScript" plugin into an ocaml application.

## How to install and compile your project by using this plugin ?

You can use opam by pinning the repository with:
```Shell
opam pin add cordova-plugin-sign-in-with-apple https://github.com/besport/ocaml-cordova-plugin-sign-in-with-apple
```

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "sign-in-with-apple" cordova plugin with:
```Shell
cordova plugin add cordova-plugin-sign-in-with-apple
```


## How to use it?

You can see the [cordova-plugin usage
documentation](https://github.com/twogate/cordova-plugin-sign-in-with-apple#usage)
and the [Official
Documentation](https://www.notion.so/Documentation-of-cordova-plugin-sign-in-with-apple-7a8022b3452246d3b8ea6cfb136140c1)
for more details.

The major function of this plugin is the *signin* function that take 3
arguments:
        ° `requested_scopes`: an array of requested scopes, it takes int
        in arguments with "`0` = `FullName`" and "`1` = `Email`"
        ° An *onSuccess* callback
        ° An *onError* callback

Each of the 2 callback takes a specific type for their argument: a
`success` argument for the *onSuccess* and an `error` argument for
the *onError* callback.

### What can you do with a `success` value?

You can access several string values within a `success` with the help of
functions defined into the ".mli" file, like for example:

          `Cordova_sign_in_with_apple.authorization_code`
          or
          `Cordova_sign_in_with_apple.email`

We can notice the special case of `Cordova_sign_in_with_apple.full` that
return an optional value of type `success_name`. This function return
the *fullName* object of the `success` if it exist, once you managed to
extract this "option" value you can then access other value of the
*fullName* with others functions like
           `Cordova_sign_in_with_apple.given_name`

Notice that the `full_name` function return an `option success_name` but
only `success_name` value are allowed in the function to access value
within the *fullName*

### What can you do with an `error` value?

You can access several string values within an `error` value with the
help of functions defined into the ".mli" file like for example:

        `Cordova_sign_in_with_apple._error`
        or
        `Cordova_sign_in_with_apple.localized_description`
