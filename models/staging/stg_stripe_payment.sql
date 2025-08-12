-- imports
WITH
source AS (
    SELECT * 
    FROM raw.stripe.payment
),

--final CTE
renamed AS(
    SELECT
    id AS payment_id
    , orderid AS order_id
    , paymentmethod AS payment_method
    , status
    , amount
    , created AS created_at
    ,_batched_at
    FROM source
)

SELECT *
FROM renamed