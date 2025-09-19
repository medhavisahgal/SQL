select p.product_id,
    ifnull(
        round(sum(p.price * u.units) / sum(u.units), 2),
        0
    ) As average_price
from Prices p
    left join UnitsSold u on p.product_id = u.product_id
    and u.purchase_date between p.start_date and p.end_date
group by p.product_id -- ifnull is used to handle cases where there are no units sold
    -- round is used to format the average price to 2 decimal places
    -- sum is used to calculate total revenue and total units sold
    -- left join is used to include all products even if they have no units sold
    -- group by is used to calculate the average price for each product
    -- The average selling price is calculated as total revenue divided by total units sold