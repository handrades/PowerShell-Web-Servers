html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Flex'
    }

    body {

        div -class 'container' -content {

            div -class 'd-flex flex-row-reverse bd-highlight mb-3 border border-1 border-dark mt-5' -content {

                div -class 'p-2 bd-highlight' -content {'Flex item 1'}
                div -class 'p-2 bd-highlight' -content {'Flex item 2'}
                div -class 'p-2 bd-highlight' -content {'Flex item 3'}

            }

            div -class 'd-flex flex-row bd-highlight mb-3 mt-5 shadow-lg' -content {

                div -class 'p-2 bd-highlight' -content {'Flex item 1'}
                div -class 'p-2 bd-highlight' -content {'Flex item 2'}
                div -class 'p-2 bd-highlight' -content {'Flex item 3'}

            }

            div -class 'd-flex flex-column bd-highlight mb-3 border border-1 border-dark mt-5' -content {

                div -class 'p-2 bd-highlight' -content {'Flex item 1'}
                div -class 'p-2 bd-highlight' -content {'Flex item 2'}
                div -class 'p-2 bd-highlight' -content {'Flex item 3'}

            }

            div -class 'd-flex justify-content-center bd-highlight mb-3 border border-1 border-dark mt-5 shadow-lg' -content {

                div -class 'p-2 bd-highlight' -content {'Flex item 1'}
                div -class 'p-2 bd-highlight' -content {'Flex item 2'}
                div -class 'p-2 bd-highlight' -content {'Flex item 3'}

            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}