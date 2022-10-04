select

    *

from {{ ref('fct_reviews') }} fct
left join {{ ref('dim_listings_cleansed') }} dim on fct.listing_id=dim.listing_id
where review_date < created_at