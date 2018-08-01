<!DOCTYPE html>
<html lang='jp'>
    <head>
        <meta charset="UTF-8">
        <title>payment</title>
        <link href="{{ url('')}}/gvendor/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
        <script src="https://js.stripe.com/v3/"></script>
    </head>
    <body>
        <form action="{{url('user/payment')}}" method="post" id="payment-form">
            <div class="form-row">
                <label for="card-element">
                Credit or debit card
                </label>
                <div id="card-element">
                <!-- A Stripe Element will be inserted here. -->
                </div>

                <!-- Used to display Element errors. -->
                <div id="card-errors" role="alert"></div>
            </div>

            <button class="btn">Submit Payment</button>
        </form>

        <script>
            var stripe = Stripe('pk_test_XXbN9QSy1TgyoQHe2i5l4JsK');
            var elements = stripe.elements();

            var style = {
                base: {
                    // Add your base input styles here. For example:
                    fontSize: '16px',
                    color: "#32325d",
                }
            };

            // Create an instance of the card Element.
            var card = elements.create('card', {style: style});

            // Add an instance of the card Element into the `card-element` <div>.
            card.mount('#card-element');
            // Create a token or display an error when the form is submitted.
            var form = document.getElementById('payment-form');
                form.addEventListener('submit', function(event) {
                event.preventDefault();

                stripe.createToken(card).then(function(result) {
                    if (result.error) {
                        // Inform the customer that there was an error.
                        var errorElement = document.getElementById('card-errors');
                        errorElement.textContent = result.error.message;
                    } else {
                        // Send the token to your server.
                        stripeTokenHandler(result.token);
                    }
                });
            });
            function stripeTokenHandler(token) {
                console.log(token);
                // Insert the token ID into the form so it gets submitted to the server
                var form = document.getElementById('payment-form');
                var hiddenInput = document.createElement('input');
                hiddenInput.setAttribute('type', 'hidden');
                hiddenInput.setAttribute('name', 'stripeToken');
                hiddenInput.setAttribute('value', token.id);
                form.appendChild(hiddenInput);

                // Submit the form
                form.submit();
            }
        </script>
    </body>
</html>