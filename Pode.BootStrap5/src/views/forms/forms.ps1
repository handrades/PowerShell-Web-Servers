html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Forms'
    }

    body {

        div -class 'container' -content {

            form -method get -action '#' -content {

                div -class 'mb-3 my-5' -content {

                    label -class 'form-label' -Attributes @{for = 'exampleInputEmail1'} -content {'Email Address'}
                    input -class 'form-control' -type email -id 'exampleInputEmail1' -name 'exampleInputEmail1' -Attributes @{'aria-describedby'='emailHelp'}
                    div -class 'form-text' -id 'emailHelp' -content {'Well never share your email with anyone else.'}

                }

                div -class 'mb-3' -content {

                    label -class 'form-label' -Attributes @{for = 'exampleInputPassword1'} -content {'Password'}
                    input -class 'form-control' -type password -id 'exampleInputPassword1' -name 'exampleInputPassword1'
                    div -class 'form-text' -id 'emailHelp' -content {'Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji'}

                }

                div -class 'mb-3 form-check' -content {

                    input -class 'form-check-input' -type checkbox -id 'exampleCheck1' -name 'exampleCheck1'
                    label -class 'form-check-label' -Attributes @{for = 'exampleCheck1'} -content {'Check me out'}

                }

                button -class 'btn btn-primary' -attributes @{type = 'submit'} -content {'Submit'}

            }

            div -class 'border p-2' -content {

                div -class 'mb-3 row' -content {

                    label -class 'col-sm-2 col-form-label' -attributes @{for = 'staticEmail'} -content {'Email'}
                    div -class 'col-sm-10' -content {
                        input -class 'form-control-plaintext' -readonly -id 'staticEmail' -value 'email@example.com' -name 'staticEmail' -type text
                    }

                }

                div -class 'mb-3 row' -content {

                    label -class 'col-sm-2 col-form-label' -attributes @{for = 'inputPassword'} -content {'Password'}
                    div -class 'col-sm-10' -content {
                        input -class 'form-control' -id 'inputPassword' -name 'inputPassword' -type password
                    }

                }

            }

        }

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}