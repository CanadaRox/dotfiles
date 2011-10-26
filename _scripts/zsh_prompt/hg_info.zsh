#!/bin/zsh

function hg_prompt_info() {
	ref=$(hg_curr_branch)
	if [[ $(echo $ref | wc -c) > 1 ]]; then
		echo "$ZSH_THEME_HG_PROMPT_PREFIX$ref$(parse_hg_dirty)$ZSH_THEME_HG_PROMPT_SUFFIX"
	fi
}

function parse_hg_dirty() {
	hgstat=$(hg status 2>/dev/null)

	if [[ $(echo $hgstat | grep -c '^A') > 0 ]]; then
		echo -n "$ZSH_THEME_HG_PROMPT_DIRTY"
	fi

	if [[ $(echo $hgstat | grep -c '^[M?]') > 0 ]]; then
		echo -n "$ZSH_THEME_HG_PROMPT_UNTRACKED"
	fi


	if [[ $(echo $hgstat | wc -l) == 0 ]]; then
		echo -n "$ZSH_THEME_HG_PROMPT_CLEAN"
	fi
}

function hg_prompt_ahead() {
	if [[$(echo "$(hg sum | grep -c clean)") > 0]]; then
		echo "$ZSH_THEME_HG_PROMPT_AHEAD"
	fi
}

function hg_curr_branch() {
	echo "$(hg summary 2>/dev/null | grep branch | cut -d' ' -f2-)"
}

function hg_prompt_sha()
{
	echo "$ZSH_THEME_HG_PROMPT_SHA_BEFORE$(hg log 2>/dev/null | head -1 | cut -d':' -f3)$ZSH_THEME_HG_PROMPT_SHA_AFTER"
}
