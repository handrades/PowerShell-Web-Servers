html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Gutter'

        $css = @"
[class*="col"]{
  padding: 1rem;
  background-color: #33b5e5;
  border: 2px solid #fff;
  color: #fff;
}
.child{
    background-color: #2041d3
}
"@
        style {$css} -Type 'text/css'
    }

    body {

        div -class 'container border' -content {

            div -class 'container my-5' -content {

                h2 -class 'text-center my-5' -content {'Gutter'} # my = margin applied on Y axis

                div -class 'row gx-5 gy-4'{ # g = gutter, x = applies for X Axis, y = applies for Y Axis
                    
                    div -class 'col-6' -Content {div -class 'child' -Content {1}}
                    div -class 'col-6' -Content {div -class 'child' -Content {2}}
                    div -class 'col-6' -Content {div -class 'child' -Content {3}}
                    div -class 'col-6' -Content {div -class 'child' -Content {4}}

                }

                div -class 'row g-0'{ # g = gutter, x = applies for X Axis, y = applies for Y Axis
                    
                    div -class 'col-6' -Content {div -class 'child' -Content {1}}
                    div -class 'col-6' -Content {div -class 'child' -Content {2}}
                    div -class 'col-6' -Content {div -class 'child' -Content {3}}
                    div -class 'col-6' -Content {div -class 'child' -Content {4}}

                }

                div -class 'row gx-1 gy-5'{ # g = gutter, x = applies for X Axis, y = applies for Y Axis
                    
                    div -class 'col-6' -Content {div -class 'child' -Content {1}}
                    div -class 'col-6' -Content {div -class 'child' -Content {2}}
                    div -class 'col-6' -Content {div -class 'child' -Content {3}}
                    div -class 'col-6' -Content {div -class 'child' -Content {4}}

                }

            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}