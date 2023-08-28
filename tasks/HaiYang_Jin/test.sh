#!/bin/bash 
read -p "请输入你要输得东西" a				//定义变量a
b=$[RANDOM%3]						//定义变量b，生成一个随机数，取值范围为0，1，2。
if [ $a == 石头 ]||[ $a == 剪刀 ]||[ $a == 布 ]		//规定输入的内容
then
        if [ $a==石头 ]					//如果输入的是石头，和随机数比，默认0为石头，1为剪刀，2为布。
        then
                if [ $a==石头 ]&&[ $b -eq 0 ]
                then
                        echo "电脑出石头，平局"
                elif [ $a==石头 ]&&[ $b -eq 1 ]
                then
                        echo "电脑出剪刀，你赢了"
                else
                        echo "电脑出布，你输了"
                fi
        elif [ $a==剪刀 ]				//如果输入的是剪刀
        then
                if [ $a==剪刀 ]&&[ $b -eq 1 ]
                then
                        echo "平局"
                elif [ $a==剪刀 ]&&[ $b -eq 2 ]
                then
                        echo "你赢了"
                else
                        echo "你输了"
                fi
        else
                if [ $a==布 ]&&[ $b -eq 2 ]		//否则输入的是布
                then
                        echo "平局"
                elif [ $a==布 ]&&[ $b -eq 0 ]
                then
                        echo "你赢了"
                else
                        echo "你输了"
                fi
        fi
else
echo "请输入石头，剪刀，布"					//	如果输入的不是石头剪刀布，则报错
fi

