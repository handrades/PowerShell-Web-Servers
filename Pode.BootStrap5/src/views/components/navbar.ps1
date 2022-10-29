html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - NavBar'
    }

    body {

        div -class 'container' -content {

            nav -class 'navbar navbar-expand-lg navbar-light bg-light' -content {

                div -class 'container-fluid' -content {

                    a -class 'navbar-brand' -href '#' -content {'NavBar'}
                    button -class 'navbar-toggler' -attributes @{'data-bs-toggle'='collapse'; 'data-bs-target'='#navbarSupportedContent'; 'aria-controls'='navbarSupportedContent'; 'aria-expanded'='false'; 'aria-label'='Toggle navigation' } -content {

                        span -class 'navbar-toggler-icon'

                    }

                    div -class 'collapse navbar-collapse' -id 'navbarSupportedContent' -content {

                        ul -class 'navbar-nav me-auto mb-2 mb-lg-0' -content {

                            li -class 'nav-item' -content {

                                a -class 'nav-link active' -attributes @{'aria-current' = 'page'} -href '#' -content {'Home'}

                            }

                            li -class 'nav-item' -content {

                                a -class 'nav-link' -href '#' -content {'Link'}

                            }

                            li -class 'nav-item dropdown' -content {

                                a -class 'nav-link dropdown-toggle' -href '#' -id 'navbarDropdown' -attributes @{'role' = 'button'; 'data-bs-toggle' = 'dropdown'; 'aria-expanded' = 'false'} -content {'Dropdown'}
                                ul -class 'dropdown-menu' -attributes @{'aria-labelledby' = 'navbarDropdown'} -content {

                                    li -content { a -class 'dropdown-item' -href '#' -content {'Action'} }
                                    li -content { a -class 'dropdown-item' -href '#' -content {'Another Action'} }
                                    li -content { hr -class 'dropdown-divider' }
                                    li -content { a -class 'dropdown-item' -href '#' -content {'Something else here'} }

                                }

                            }

                            li -class 'nav-item' -content {

                                a -class 'nav-link disable' -href '#' -attributes @{tabindex = '-1'; 'aria-disabled' = 'true'} -content {'Disabled'}

                            }

                        }
                        
                        form -class 'd-flex' -action '#' -method get -content {

                            input -class 'form-control me-2' -name 'testing' -type 'search' -attributes @{placeholder = 'Search'; 'aria-label' = 'Search'}
                            button -class 'btn btn-outline-success' -attributes @{type = 'Submit'} -content {'Search'}

                        }

                    }

                }

            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}