Liang R Toolkit


## 安装

github 安装：

```
# install devtools
install.packages("devtools")

devtools::install_github("kongjianyang/ttoolkit")
```

下载打包后本地安装：

```
install.packages("/dir2file/ttoolkit-main", repos = NULL, type = "source")
```



## 功能介绍


- make_rmd_template

根据预设的模板文件， 创建Rmd文件


- make_rprofile

根据预设的Rprofile文件， 创建Rprofile文件


- boost_install_packages

判断式安装R 包，先从cran 找，再从biocondunctor 找，如果都有，则会提示：
```
ttoolkit::boost_install_packages(c("ggplot2", "devtools"))
[1] "ggplot2 is already installed."
[1] "devtools is already installed."
[1] "ggplot2 devtools are already in your computer."
```

- add_function

可以直接添加函数到 ./my_function.R（需要将函数名改为字符串形式） 脚本内，解决主脚本因为函数定义而显得臃肿。

比如添加事先定义好的两个函数：

```
> add_function("test001", "test002")
Now you can find your functions in : ./my_function.R
```

再打开 ./my_function.R：

```
test001 <-function(x) {
  x + 1
}
test002 <-function(x) {
  x + 1
}

```



# 更新记录
## 0.0.1

初始版 （2023-08-19）





