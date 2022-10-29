html {

    head {
        meta -charset 'utf-8'
        meta -name 'viewport' -content_tag 'width=device-width, initial-scale=1'
        Link -href 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css' -rel 'stylesheet' -CrossOrigin 'anonymous' -Integrity 'sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi'
        Title 'PSHTML - Toasts'
    }

    body {

        div -class 'container' -content {

            button -class 'btn btn-primary mt-5' -id 'liveToastBtn' -content {'Show live toast'}
            div -class 'position-fixed bottom-0 end-0 p-3' -style 'z-index: 11' -Content {

                div -class 'toast hide' -id 'liveToast' -Attributes @{role='alert';'aria-live'='assertive';'aria-atomic'='true'}  -content {

                    div -class 'toast-header' -content {
    
                        img -class 'rounded me-2' -src 'https://google.com' -alt '...'
                        strong -class 'me-auto' -content {'Bootstrap'}
                        small -content {'11 mins ago'}
                        button -class 'btn-close' -Attributes @{'data-bs-dismiss'='toast';'aria-label'='Close'}
                    
                    }
    
                    div -class 'toast-body' -content {'Hello world! This is a toast meassage.'}
                
                }

            }

        }     

        script -src 'https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js' -crossorigin 'anonymous' -integrity 'sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3'
        script -src 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js' -crossorigin 'anonymous' -integrity 'sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk'
        script -content {
@"            
            var toastTrigger = document.getElementById('liveToastBtn')
            var toastLiveExample = document.getElementById('liveToast')
            if (toastTrigger){
                toastTrigger.addEventListener('click',function (){
                    var toast = new bootstrap.Toast(toastLiveExample)
                    toast.show()
                })
            }
"@
        }

    }

}