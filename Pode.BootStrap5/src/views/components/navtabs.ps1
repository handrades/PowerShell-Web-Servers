html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - NavTabs'
    }

    body {

        div -class 'container' -content {

            nav -class 'nav' -content {

                a -class 'nav-link active' -attributes @{ 'aria-current' = 'page';} -href '#' -content {'Active'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link disabled' -attributes @{tabindex = '-1'; 'aria-disabled' = 'true'} -href '#' -content {'Disabled'}

            }

        }   

        div -class 'container' -content {

            nav -class 'nav justify-content-center' -content {

                a -class 'nav-link active' -attributes @{ 'aria-current' = 'page';} -href '#' -content {'Active'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link disabled' -attributes @{tabindex = '-1'; 'aria-disabled' = 'true'} -href '#' -content {'Disabled'}

            }

        }

        div -class 'container' -content {

            nav -class 'nav justify-content-end' -content {

                a -class 'nav-link active' -attributes @{ 'aria-current' = 'page';} -href '#' -content {'Active'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link disabled' -attributes @{tabindex = '-1'; 'aria-disabled' = 'true'} -href '#' -content {'Disabled'}

            }

        }

        div -class 'container my-5' -content {

            nav -class 'nav flex-column' -content {

                a -class 'nav-link active' -attributes @{ 'aria-current' = 'page';} -href '#' -content {'Active'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link' -href '#' -content {'Link'}
                a -class 'nav-link disabled' -attributes @{tabindex = '-1'; 'aria-disabled' = 'true'} -href '#' -content {'Disabled'}

            }

        }

        div -class 'container my-5' -content {

            ul -class 'nav nav-tabs' -content {

                li -class 'nav-item' -content { a -class 'nav-link active' -attributes @{'aria-current' = 'page'} -href '#' -content {'Active'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link disbaled' -attributes @{'tabindex' = -1; 'aria-disabled' = $true} -href '#' -content {'Disabled'} }

            }

        }

        div -class 'container' -content {

            ul -class 'nav nav-pills' -content {

                li -class 'nav-item' -content { a -class 'nav-link active' -attributes @{'aria-current' = 'page'} -href '#' -content {'Active'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link disbaled' -attributes @{'tabindex' = -1; 'aria-disabled' = $true} -href '#' -content {'Disabled'} }

            }

        }

        div -class 'container my-5' -content {

            ul -class 'nav nav-pills' -content {

                li -class 'nav-item' -content { a -class 'nav-link active' -attributes @{'aria-current' = 'page'} -href '#' -content {'Active'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                li -class 'nav-item' -content { a -class 'nav-link disbaled' -attributes @{'tabindex' = -1; 'aria-disabled' = $true} -href '#' -content {'Disabled'} }

            }

        }

        
        div -class 'container' -content {

            ul -class 'nav nav-tabs' -content {

                li -class 'nav-item' -content { a -class 'nav-link active' -attributes @{ 'aria-current' = 'page' } -href '#' -content {'Active'} }

                li -class 'nav-item dropdown' -content { 
                
                    a -class 'nav-link dropdown-toggle' -attributes @{'data-bs-toggle'= 'dropdown';'aria-expanded' = $false} -href '#' -content {'Dropdown'}

                    ul -class 'dropdown-menu' -content {

                        li -content { a -class 'dropdown-item' -href '#' -content {'Action'} }
                        li -content { a -class 'dropdown-item' -href '#' -content {'Another Action'} }
                        li -content { a -class 'dropdown-item' -href '#' -content {'Something else here'} }
                        li -content { hr -class 'dropdown-divider' }
                        li -content { a -class 'dropdown-item' -href '#' -content {'Separated link'} }

                    }
                
                }

                li -class 'nav-item' -content { a -class 'nav-link' -href '#' -content {'Link'} }
                
                li -class 'nav-item' -content { a -class 'nav-link disabled' -href '#' -attributes @{tabindex = -1; 'aria-disabled' = $true} -content {'Disabled'} }

            }

        }

        div -class 'container my-5' -content {

            div -class 'd-flex align-items-start' -content {

                div -class 'nav flex-column nav-pills me-3' -id 'v-pills-tab' -attributes @{role = 'tablist'; 'aria-orientation' = 'vertical'} -content {

                    button -class 'nav-link active' -id 'v-pills-home-tab' -attributes @{'data-bs-toggle' = 'pill'; 'data-bs-target' = '#v-pills-home'; 'aria-controls' = 'v-pills-home'; 'aria-selected' = 'true'; role = 'tab'} -content {'Home'}
                    button -class 'nav-link' -id 'v-pills-profile-tab' -attributes @{'data-bs-toggle' = 'pill'; 'data-bs-target' = '#v-pills-profile'; 'aria-controls' = 'v-pills-profile'; 'aria-selected' = 'false'; role = 'tab'} -content {'Profile'}
                    button -class 'nav-link' -id 'v-pills-messages-tab' -attributes @{'data-bs-toggle' = 'pill'; 'data-bs-target' = '#v-pills-messages'; 'aria-controls' = 'v-pills-messages'; 'aria-selected' = 'false'; role = 'tab'} -content {'Messages'}
                    button -class 'nav-link' -id 'v-pills-settings-tab' -attributes @{'data-bs-toggle' = 'pill'; 'data-bs-target' = '#v-pills-settings'; 'aria-controls' = 'v-pills-settings'; 'aria-selected' = 'false'; role = 'tab'} -content {'Settings'}

                }

                div -class 'tab-content' -id 'v-pills-tabContent' -content {

                    div -class 'tab-pane fade show active' -id 'v-pills-home' -attributes @{'aria-labelledby' = 'v-pills-home-tab'; role = 'tabpanel'} -content {'Inside home pane'}
                    div -class 'tab-pane fade' -id 'v-pills-profile' -attributes @{'aria-labelledby' = 'v-pills-profile-tab'; role = 'tabpanel'} -content {'Inside profile pane'}
                    div -class 'tab-pane fade' -id 'v-pills-messages' -attributes @{'aria-labelledby' = 'v-pills-messages-tab'; role = 'tabpanel'} -content {'Inside messages pane'}
                    div -class 'tab-pane fade' -id 'v-pills-settings' -attributes @{'aria-labelledby' = 'v-pills-settings-tab'; role = 'tabpanel'} -content {'Inside settings pane'}

                }

            }

        }

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}