html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Grid'

        $css = @"
[class*="col"]{
  padding: 1rem;
  background-color: #33b5e5;
  border: 2px solid #fff;
  color: #fff;
}
"@
        style {$css} -Type 'text/css'
    }

    body {

        div -class 'container-md border' -content {

            div -class 'row' -content {
                div -class 'col' -Content {p 'row 1 - Col 1'}
                div -class 'col' -Content {p 'row 1 - Col 2'}
            }

            div -class 'row' -content {
                div -class 'col' -Content {p 'row 2 - Col 1'}
                div -class 'col' -Content {p 'row 2 - Col 2'}
                div -class 'col' -Content {p 'row 2 - Col 3'}
                div -class 'col' -Content {p 'row 2 - Col 4'}
            }

            div -class 'row' -content {
                div -class 'col-4' -Content {p 'row 3 - Col 1'}
                div -class 'col-4' -Content {p 'row 3 - Col 2'}
            }

            div -class 'row' -content {
                div -class 'col-4' -Content {p 'row 4 - Col 1'}
                div -class 'col-4' -Content {p 'row 4 - Col 2'}
                div -class 'col' -Content {p 'row 4 - Col 3 auto'}
            }

            div -class 'row' -content {
                div -class 'col-md-8' -Content {p 'row 5 - Col 1'}
                div -class 'col-md-4' -Content {p 'row 5 - Col 2'}
            }

            div -class 'row' -content {
                div -class 'col-lg-8 col-md-6' -Content {p 'row 6 - Col 1'}
                div -class 'col-lg-4 col-md-6' -Content {p 'row 6 - Col 2'}
            }

            div -class 'row' -content {
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
                div -class 'col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12' -Content {p 'row 7 - col-xxl-1 col-xl-2 col-lg-3 col-md-4 col-sm-6 col-xs-12'}
            }

        }

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}