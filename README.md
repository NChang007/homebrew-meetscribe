# homebrew-meetscribe

Homebrew tap for [meetscribe](https://github.com/NChang007/meetscribe).

## Install

Homebrew 4.6+ requires trusting third-party taps once:

```bash
brew tap NChang007/meetscribe
brew trust nchang007/meetscribe
brew install meetscribe && meetscribe init
```

One line (first time on a Mac):

```bash
brew tap NChang007/meetscribe && brew trust nchang007/meetscribe && brew install meetscribe && meetscribe init
```

After that, on the same Mac:

```bash
brew update && brew upgrade meetscribe
```

## Requirements

- macOS 14+
- Apple Silicon (arm64 release binary)

## Alternative (no Homebrew)

```bash
curl -fsSL https://raw.githubusercontent.com/NChang007/meetscribe/main/scripts/install.sh | sh
```
