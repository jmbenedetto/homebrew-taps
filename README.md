# JMB Homebrew Tap

Personal Homebrew casks for applications that are not available from an appropriate official tap.

## Usage

```sh
brew tap jmbenedetto/taps
brew install --cask jmbenedetto/taps/vial
```

In a Brewfile:

```ruby
tap "jmbenedetto/taps"
cask "jmbenedetto/taps/vial"
```

## Casks

- `blip-ai`
- `clicky`
- `cua-driver`
- `dart`
- `koofr`
- `silverbullet`
- `vial`
- `zerowork`

These casks automate downloads from the applications' official distribution channels. They do not constitute an independent security endorsement. In particular, upstream Vial 0.7.5 is unsigned and fails macOS Gatekeeper.

## Contributions

This is a personal tap. Pull requests from accounts other than `@jmbenedetto` are automatically closed.
