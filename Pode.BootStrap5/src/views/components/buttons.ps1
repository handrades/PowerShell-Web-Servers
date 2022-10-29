html {

    head {
        
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Buttons'

    }

    body {

        div -class 'container border my-5' -content {

            button -class 'btn btn-primary' -content {'Primary'}
            button -class 'btn btn-secondary' -content {'Secondary'}
            button -class 'btn btn-success' -content {'Success'}
            button -class 'btn btn-danger' -content {'Danger'}
            button -class 'btn btn-warning' -content {'Warning'}
            button -class 'btn btn-info' -content {'Info'}
            button -class 'btn btn-light' -content {'Light'}
            button -class 'btn btn-dark' -content {'Dark'}
            button -class 'btn btn-link' -content {'Link'}
            button -content {'Click me!'}

        }

        div -class 'container border' -content {

            button -class 'btn btn-outline-primary' -content {'Primary'}
            button -class 'btn btn-outline-secondary' -content {'Secondary'}
            button -class 'btn btn-outline-success' -content {'Success'}
            button -class 'btn btn-outline-danger' -content {'Danger'}
            button -class 'btn btn-outline-warning' -content {'Warning'}
            button -class 'btn btn-outline-info' -content {'Info'}
            button -class 'btn btn-outline-light' -content {'Light'}
            button -class 'btn btn-outline-dark' -content {'Dark'}
            button -class 'btn btn-outline-link' -content {'Link'}
            button -content {'Click me!'}

        }
        
        div -class 'container my-5' -content {

            button -class 'btn btn-primary btn-lg' -content {'Large button'}
            button -class 'btn btn-primary' -content {'Regular button'}
            button -class 'btn btn-primary btn-sm' -content {'Small button'}

        }
        
        div -class 'container my-5' -content {

            button -class 'btn btn-primary btn-lg' -Attributes @{disabled=$true} -content {'Large button'}

        }

        div -class 'd-grip gap-3' -Content {

            button -class 'btn btn-primary' -Content {'Button'}
            button -class 'btn btn-primary' -Content {'Button'}

        }

        div -class 'd-grip gap-2 col-6 mx-auto' -Content {

            button -class 'btn btn-primary' -Content {'Button'}
            button -class 'btn btn-primary' -Content {'Button'}

        }

        div -class 'container my-5' -Content {

            button -class 'btn btn-primary' -Attributes @{'data-bs-toggle'='button'} -Content {'Toggle button'}
            button -class 'btn btn-primary active' -Attributes @{'data-bs-toggle'='button'} -Content {'Active toggle button'}
            button -class 'btn btn-primary' -Attributes @{disabled=$true;'data-bs-toggle'='button'} -Content {'Disabled toggle button'}

        }

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}