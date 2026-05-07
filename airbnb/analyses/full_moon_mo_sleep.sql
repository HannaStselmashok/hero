with mart_fm_reviews as (
    select * from {{ ref('mart_fullmoon_with_views') }}
)

select 
    is_full_moon,
    review_sentiment,
    count(*) as reviews
from mart_fm_reviews
group by 1,2
order by 1,2