# ユーザー名とホスト名のプロンプトをカスタマイズ
PROMPT='%n@%m %~ %# '

# 履歴設定
HISTSIZE=10000           # 保存する履歴の数
SAVEHIST=10000           # 履歴ファイルに保存する行数
HISTFILE=~/.zsh_history  # 履歴ファイル
setopt hist_ignore_dups  # 重複履歴の無視
setopt hist_append       # シェル終了時に履歴を追加

# ターミナルの色設定
autoload -U colors && colors

# プラグインマネージャのインストール
if ! command -v zinit &> /dev/null; then
    echo "Zinit not found, installing..."
    curl -fsSL https://git.io/zinit | sh
fi

# プラグインの読み込み
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

# fzf を使ってファイルを検索
source /usr/share/fzf/key-bindings.zsh

# ~/.zshrc

# エイリアスファイルを遅延ロードする関数を定義
load_aliases() {
    if [[ -f "$HOME/.zsh_aliases" ]]; then
        source "$HOME/.zsh_aliases"
    fi
}

# ~/.zshrc

# エイリアスファイルを必要なときに読み込む関数を定義
function load_aliases {
    if [[ ! -f "$HOME/.zsh_aliases" ]]; then
        return
    fi
    source "$HOME/.zsh_aliases"
}

# シェル起動時にエイリアスを呼び出さない



# 必要に応じてエイリアスを読み込む
autoload -U load_aliases

# 一般的なエイリアス
alias ll='ls -lah'  # 詳細表示
alias gs='git status'  # git status
alias ga='git add'  # git add
alias gp='git push'  # git push
alias gd='git diff'  # git diff

# powerlevel10k のインストール
zinit light romkatv/powerlevel10k

# 初回起動時に設定ウィザードが表示されるので、それに従ってカスタマイズ

# pyenv の初期化
export PATH="$HOME/.pyenv/bin:$PATH"# 履歴検索
bindkey '^R' history-incremental-search-backward

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# nvm の初期化
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# 履歴検索
bindkey '^R' history-incremental-search-backward

# 自動補完の強化
autoload -Uz compinit && compinit

