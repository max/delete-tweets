# delete-tweets

A GitHub Action to automatically delete your Twoodles after a specified amount
of time.

## Usage

```yaml
name: Delete Tweets
on:
  schedule:
      - cron: "0 0 * * *"
  workflow_dispatch:
jobs:
  delete-tweets:
    runs-on: ubuntu-latest
    steps:
      - name: Delete Tweets
        uses: max/delete-tweets@main # Use latest tagged version
        with:
          tweet-max-age: 3
          twitter-consumer-key: ${{ secrets.TWITTER_CONSUMER_KEY }}
          twitter-consumer-secret: ${{ secrets.TWITTER_CONSUMER_SECRET }}
          twitter-oauth-secret: ${{ secrets.TWITTER_OAUTH_SECRET }}
          twitter-oauth-token: ${{ secrets.TWITTER_OAUTH_TOKEN }}
          twitter-user: mschoening
```
