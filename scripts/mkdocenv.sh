#!/bin/bash

# ***** ***** ***** ***** *****
# 创建工作区目录
# ***** ***** ***** ***** *****
function mkdocdir()
{
    cur=$(pwd)
    for dir in $DIRS
    do
        mkdir -p "$cur/$dir"
    done
}

# ***** ***** ***** ***** *****
# 设置Git跟踪空目录
# ***** ***** ***** ***** *****
function track_by_git()
{
    cur=$(pwd)
    for dir in $DIRS
    do
        echo "*" > "$cur/$dir/.gitkeep"
    done
}


# ***** ***** ***** ***** *****
# start from here
# ***** ***** ***** ***** *****
DIRS="docs codes figures outputs"
mkdocdir
track_by_git
