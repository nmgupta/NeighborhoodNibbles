function onSubmit() {
    let organization = $("#organization").val();
    let foodType = $("#foodType").val();
    let foodName = $("#foodName").val();
    let description = $("#description").val();
    let quantity = $("#quantity").val();
    let address = $("#address").val();

        $.ajax({
            type: "POST",
            url: "/listing",
            data: {
                "organization": organization,
                "foodType": foodType,
                "foodName": foodName,
                "description": description,
                "quantity": quantity,
                "address": address
            },
            success: function(data,textStatus,jqXHR){
                console.log(data,textStatus);
                clearForm();
            }
        });
    
}
function clearForm() {
    $("#organization").val("");
    $("#foodType").val("");
    $("#foodName").val("");
    $("#description").val("");
    $("#quantity").val("");
    $("#address").val("");
}