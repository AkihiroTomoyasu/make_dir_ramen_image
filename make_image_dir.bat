@echo off
setlocal enabledelayedexpansion

for %%i in (m???????.jpg m???????.png m???????.gif) do (
	: ファイル名格納
	set f=%%i
	: 格納するディレクトリパス作成
	set d=!f:~0,3!\!f:~3,3!\!f:~6,3!\ramen
	: ディレクトリ作成
	mkdir !d!
	: ファイル移動
	move %%i !d!
)
