html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Columns'

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

            div -class 'row align-items-end' -Style 'height:500px' -content {

                div -class 'col' -content {'One of three columns'}
                div -class 'col' -content {'One of three columns'}
                div -class 'col' -content {'One of three columns'}

            }

            div -class 'contiainer' -content {

                div -class 'row justify-content-center' -content {

                    div -class 'col-2' -Content {'1'}
                    div -class 'col-2' -Content {'3'}

                }
                
            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}