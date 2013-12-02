var stripeResponseHandler = function(status, response) {
  var $form = $('#payment-form');
  console.log(response)
  if (response.error) {
    $('#stripe-error').text(response.error.message);
    $form.find('button').prop('disabled', false);
  } else {
    var token = response.id;
    $form.append($('<input type="hidden" name="stripeToken" />').val(token));
    $form.get(0).submit();
  }
};

$(document).ready(function(){
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
  $("#payment-form").submit(function(){
    var form = $(this);
    form.find('button').prop('disabled', true);
    Stripe.createToken(form, stripeResponseHandler);
    return false;
  })
})

