#!/bin/zsh

#for file in *
#do
#  echo "${file}"
#done

script_dir1="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
script_dir2=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
dotdir1=$(dirname ${script_dir1})
dotdir2=$(dirname ${script_dir2})

echo $script_dir1
echo $script_dir2
echo $dotdir1
echo $dotdir2

function test(){
  test_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
  dir_dir=$(dirname ${script_dir1})
  echo $test_dir
  echo $dir_dir
}

test
