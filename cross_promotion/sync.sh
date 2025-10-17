aws s3 sync --acl public-read ./ s3://dragonplus-res/cross_promotion/
aws cloudfront create-invalidation --distribution-id E24X55UG90VLJ0 --paths "/cross_promotion/*"
