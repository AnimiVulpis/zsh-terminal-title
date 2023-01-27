# zsh-terminal-title (Archived)

Terminal title setting plugin for zsh with no options

## Archived

As I'm now using https://github.com/romkatv/zsh4humans which does terminal title setting on it's own
I have no need anymore for this repository.

## Attribution

The plugin is based on a zsh script posted by
[romkatv](https://github.com/romkatv) in a comment
[here](https://github.com/romkatv/powerlevel10k/issues/1092#issuecomment-723039693)
which was put under the same license as [powerlevel10k](https://github.com/romkatv/powerlevel10k/blob/master/LICENSE).
See the [copy of the original license](powerlevel10k-LICENSE.md) or the [current license](https://github.com/romkatv/powerlevel10k/blob/master/LICENSE).

## Usage

Only tested with [zinit](https://github.com/zdharma/zinit).

Put these lines into your `.zshrc` (after you sourced `zinit`):

- Recommended way (with turbo mode; using the newer `for` syntax):

      zinit wait lucid nocd atload"!set-term-title-precmd" for \
          AnimiVulpis/zsh-terminal-title

  - _`wait` to activate turbo mode_
  - _`lucid` to prevent "Loaded" message from appearing_
  - _`nocd` to prevent the plugin directory in the window title_
  - _`atload"!set-term-title-precmd"` to call the title setting function after plugin load_

- If you don't want to use turbo mode you can

      zinit light-mode for \
          AnimiVulpis/zsh-terminal-title

  - _`light-mode` to load the plugin without investigating_

_[More information](https://github.com/zdharma/zinit#others) about zinit modifiers._

## Style information

I try to adhere to the best practices pointed out [here](https://zdharma.org/zinit/wiki/zsh-plugin-standard/)

## Possible future work

- Support configuration options
- Adhere to [function name prefixes](https://zdharma.org/zinit/wiki/zsh-plugin-standard/#the_proposed_function-name_prefixes) proposed by [zdharma](https://github.com/zdharma/)
