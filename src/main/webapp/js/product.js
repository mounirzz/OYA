$(function() {
    $("#sub-nav-product").attr("class","active");
    $(".addCart").click(function () {
        $.ajax({
            url:ctx+"/cart/add/"+$(this).attr("productid")+"/1",
            success:function(result){
                if(result=="success"){
                    toastr.info("Ajouter un panier à succès.");
                }else{
                    toastr.warn("Une erreur s'est produite et réessayer plus tard.");
                }
            },
            error:function(){
                toastr.warn("Une erreur s'est produite et réessayer plus tard.");
            }
        })
    })
})