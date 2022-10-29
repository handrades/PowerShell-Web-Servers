html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML'
    }

    body {

        div -class 'container' -content {

            div -class 'row' -content {

                p -class 'lead' -content {'This is a lead paragraph. It stands out from regular paragraphs.'}
    
            }

            div -class 'row' -content {

                div -class 'col-md-6' -content {

                    h1 -content {'Real headings'}

                    h1 -content {'h1. Bootstrap heading'}
                    h2 -content {'h2. Bootstrap heading'}
                    h3 -content {'h3. Bootstrap heading'}
                    h4 -content {'h4. Bootstrap heading'}
                    h5 -content {'h5. Bootstrap heading'}
                    h6 -content {'h6. Bootstrap heading'}

                }

                div -class 'col-md-6' -content {

                    h1 -content {'Paragraphs looking like headings'}
                    p -class 'h1' -content {'h1. Bootstrap heading'}
                    p -class 'h2' -content {'h2. Bootstrap heading'}
                    p -class 'h3' -content {'h3. Bootstrap heading'}
                    p -class 'h4' -content {'h4. Bootstrap heading'}
                    p -class 'h5' -content {'h5. Bootstrap heading'}
                    p -class 'h6' -content {'h6. Bootstrap heading'}
                
                }

            }

            div -class 'row' -content {

                h1 -class 'display-1' -content {'Display 1'}
                h1 -class 'display-2' -content {'Display 2'}
                h1 -class 'display-3' -content {'Display 3'}
                h1 -class 'display-4' -content {'Display 4'}
                h1 -class 'display-5' -content {'Display 5'}
                h1 -class 'display-6' -content {'Display 6'}

            }

            div -class 'row' -content {

                p -content {'You can use the mark tag to <mark>highlight</mark> text.'}
                p -content {'<del>This line of text is meant to be treated as deleted text.</del>'}
                p -content {'<s>This line of text is meant to be treated as no longer accurate.</s>'}
                p -content {'<ins>This line of text is meant to be treated as an addition to the document.</ins>'}
                p -content {'<u>This line of text will render as underlined.</u>'}
                p -content {'<small>This line of text is meant to be treated as fine print.</small>'}
                p -content {'<strong>This line rendered as bold text.</strong>'}
                p -content {'<em>This line rendered as italicized text.</em>'}

            }

            div -class 'row border' -content {

                blockquote -class 'blockquote' -content {

                    p -content {'You can use the mark tag to <mark>highlight</mark> text.'}

                }

            }

            div -class 'row border' -content {

                figure -Class 'text' -Content {

                    blockquote -class 'blockquote' -content {

                        p -content {'A well-known quote, contained in a blockquote element.'}
    
                    }
                    figcaption -class 'blockquote-footer' -content {
                        'Someone famous in <cite title="Source Title">Source Title</cite>'
                    }
    
                }

                figure -Class 'text-center' -Content {

                    blockquote -class 'blockquote' -content {

                        p -content {'A well-known quote, contained in a blockquote element.'}
    
                    }
                    figcaption -class 'blockquote-footer' -content {
                        'Someone famous in <cite title="Source Title">Source Title</cite>'
                    }
                
                }

                figure -Class 'text-end' -Content {

                    blockquote -class 'blockquote' -content {

                        p -content {'A well-known quote, contained in a blockquote element.'}
    
                    }
                    figcaption -class 'blockquote-footer' -content {
                        'Someone famous in <cite title="Source Title">Source Title</cite>'
                    }

                }

            }

            div -class 'row my-5' -Content {

                ul -class 'list-unstyled' -content {

                    li -content {'Line number 1'}
                    li -content {'Line number 2'}
                    li -content {'Line number 3'}
                    li -content {'Line number 4'}
                    li -content {'Line number 5'}
                    li -content {'Line number 6'}
                    li -content {'Line number 7'}
                    ul -content {

                        li -content {'SubLine number 1'}
                        li -content {'SubLine number 2'}
                        li -content {'SubLine number 3'}
                        li -content {'SubLine number 4'}

                    }

                }

            }

        }  

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'

    }

}