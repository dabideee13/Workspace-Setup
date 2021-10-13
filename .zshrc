if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
     source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi 

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/d.e.magno/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias refresh="source ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias ydl="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"
alias th="latexmk -pdf thesis.tex"
alias thh="latexmk -pdf exam4.tex"
alias othh="open *exam4.pdf*"
alias oth="open *thesis.pdf*"
alias rm="rm -i"
alias o="open"
alias wtf="wtfutil"
alias notifyDone='tput bel; terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?"' -activate com.apple.Terminal

# My functions
nb () {
cp ~/blank.ipynb $PWD
vim blank.ipynb
}

# Converts and saves youtube video to mp3
to_audio() {
  youtube-dl --extract-audio --audio-format mp3 $1
}

dl_playlist() {
  youtube-dl -cit --extract-audio --audio-format mp3 $1
}

# path for scala
export PATH="/usr/local/scala/bin:$PATH"

# prompt configurations
# PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} %D %T % %{$reset_color%}'
export DEFAULT_USER="$(whoami)"

# fix open error issues
export LC_ALL=en_US.UTF-8

# path for SQL
export PATH="/usr/local/mysql-8.0.20-macos10.15-x86_64/bin:$PATH"

set editing-mode vi


# powerlevel10k config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir dir_writable vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status time zsh_showStatus)
POWERLEVEL10K_MODE='nerdfont-complete'
POWERLEVEL10K_PROMPT_ADD_NEWLINE=true
POWERLEVEL10K_PROMPT_ON_NEWLINE=true
POWERLEVEL10K_SHORTEN_DIR_LENGTH=4
POWERLEVEL10K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL10K_SHORTEN_DELIMITER=""
POWERLEVEL10K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL10K_STATUS_VERBOSE=false
# 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true'


prompt_fir_dif() {
    local content=$(print -P '%~')
    
    # echo content
    split_path=(${(s:/:)content})
    local colors=(208, 196)
    local font_color='%F{255}'
    local len=$#split_path
    local index=1
    for dir in $split_path
    do
        if [ "$index" = "$len" ]; then
            color=160
        elif [ "$(($index%2))" = "1" ]; then
            color=209
        else
            color=202
        fi
    $1_prompt_segment "$0" "$2" "$color" "$color" "%($font_color%)$dir" "#"
    index=$(($index+1))
    done
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
