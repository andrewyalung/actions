# GitHub Actions

Fun with robots.

This is a collection of [GitHub Actions](https://github.com/features/actions) that I thought might be useful to others.
There aren't many for now, but any general actions I create will get stored here.

## [Wait for 200](wait-for-200)

This action will simply check that a URL is returning a `200` HTTP status code
before completing. You have the option to set how many seconds between checks
and how many tries before it exits in failure.

<img width="301" alt="image" src="https://user-images.githubusercontent.com/260/47251250-fd9f5900-d3ff-11e8-9a4f-d15343e9c3a3.png">

```
action "Wait for 200" {
  uses = "maddox/actions/wait-for-200@master"
  env = {
    URL = "https://mysite.com"
    SECONDS_BETWEEN_CHECKS = "2"
    MAX_TRIES = "20"
  }
}
```
