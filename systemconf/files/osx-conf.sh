#!/usr/bin/env bash

# All controls 用于tab切换焦点, 可在系统设置->keyboard->shortcuts 的最下方修改 
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Correct spelling automatically, 关闭此选项,省的英文输入的时候老是自动帮忙修改, 位置: keyboard->text
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# 锁屏之后再激活马上需要密码, 位置: Security & Privacy
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# 设置 finder 默认为home目录
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# finder 默认使用list视图 (其他的选项为:icnv, clmv, Flwv)
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# sidebar 显示 home 目录
sfltool add-item com.apple.LSSharedFileList.FavoriteItems file:///${HOME}

# 在 dock 上只显示激活的的app
defaults write com.apple.dock static-only -bool TRUE; killall Dock

