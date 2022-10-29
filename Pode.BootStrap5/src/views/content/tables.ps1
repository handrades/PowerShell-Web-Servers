html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Tables'
    }

    body {

        div -class 'container' -content {

            h1 -class 'mb-5 mt-5' -content {'Tables'}
            table -class 'table' -content {
                
                Thead -content {

                    tr -content {

                        th -Attributes @{scope='col'} -Content {'#'}
                        th -Attributes @{scope='col'} -Content {'First'}
                        th -Attributes @{scope='col'} -Content {'Last'}
                        th -Attributes @{scope='col'} -Content {'Handle'}
                    }

                }
                
                tbody -content {

                    tr -content {

                        th -Attributes @{scope='col'} -Content {'1'}
                        td -content {'Mark'}
                        td -content {'Otto'}
                        td -content {'@mdo'}
                        
                    }

                    tr -content {

                        th -Attributes @{scope='col'} -Content {'2'}
                        td -content {'Jacob'}
                        td -content {'Thornton'}
                        td -content {'@fat'}

                    }

                    tr -content {

                        th -Attributes @{scope='col'} -Content {'3'}
                        td -content {'Larry the Bird'}
                        td -content {''}
                        td -content {'@twitter'}

                    }

                }

            }

            h2 -class 'mb-5 mt-5' -content {'Table responsive'}
            div -class 'table-responsive-md' -content {
                table -class 'table table-dark table-striped table-bordered table-hover' -content {
                    
                    Thead -content {

                        tr -content {

                            th -Attributes @{scope='col'} -Content {'#'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}
                            th -Attributes @{scope='col'} -Content {'Heading'}

                        }

                    }
                    
                    Tbody -content {

                        foreach($x in 1..5){

                            tr -content {

                                th -Attributes @{scope='row'} -Content {$x}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                td -content {'Cell'}
                                
                            }

                        }

                    }

                }

            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}