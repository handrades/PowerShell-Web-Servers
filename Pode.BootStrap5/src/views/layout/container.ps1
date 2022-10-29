html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Container'
    }

    body {

        div -class 'container border' -content {

           h6 'Content 1'
           p 'https://getbootstrap.com/docs/5.2/layout/containers/'

        }

        div -class 'container-fluid border' -content {

           h6 'Content 2'

        }

        div -class 'container-md border' -content {

           h6 'Content 3'

        }

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}