# Python Package Template

📦 一个快速上传到 [PyPI](https://pypi.org/) 的 **Python Package** 模版。

> 上传到 PyPI 后可以使用 `pip install` 安装。

## 1 使用方法

1. 点击本项目右上角的绿色按钮 `Use this template`（使用此模板），输入名称和说明，完成创建；

2. 将项目克隆到本地，这里以本项目为例，实际操作时这里需要替换你自己的项目；

    ```bash
    git clone https://github.com/Ailln/python-package-template.git --depth 1
    ```

3. 修改配置，文件中有提示；

    ```bash
    cd your_package_name

    # 1. 替换默认项目名称 package_name 为你的项目名称
    # Usage: bash scripts/set_package_name.sh os_name old_name new_name
    # os_name 支持的有 `mac` 和 `linux`
    # old_name 是 package_name
    # new_name 是你的项目名称
    bash scripts/set_package_name.sh mac package_name your_package_name

    # 2. 将 `README.md` 修改为你的项目介绍，也就是你当前在读的这个文本。
    ```

4. 编写你的 Package 代码，并进行测试。

    ```shell
    # 在本地进行充分测试
    bash scripts/local_test.sh
    ```

5. 上传到 PyPi（需要注册），参考[如何发布自己的包到 pypi](https://www.v2ai.cn/2018/07/30/python/1-pypi/)；

    ```shell
    bash scripts/upload_pypi.sh
    ```

6. 更新到 Github（非必须）。

    ```bash
    git push
    ```

## 2 项目结构

```
.
├── README.md # 项目文档
├── package_name # 项目名称
│    ├── shell # 在命令行中执行的代码
│    │    ├── __init__.py
│    │    └── usage.py
│    └── src # 静态资源
│          └── temp.txt
├── scripts # 一些常用脚本
│    ├── set_package_name.sh # 批量替换默认的项目名称
│    ├── local_install.sh # 本地安装
│    ├── local_test.sh # 本地测试
│    └── upload_pypi.sh # 上传到 pypi
├── requirements.txt # 项目依赖
├── .gitignore # 忽略文件
├── MANIFEST.in # 要包含在 sdist 命令构建的分发中的文件列表。
├── LICENSE # 这里面的内容为本项目的 License，你需要手动替换它。
└── setup.py # 安装配置
```

## 3 TODO

- [ ] 增加 test 相关代码。

## 4 许可

[![](https://award.dovolopor.com?lt=License&rt=MIT&rbc=green)](./LICENSE)

## 5 参考

- [Packaging Python Projects](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
- [如何从模板创建仓库？](https://docs.github.com/cn/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template)
- [如何发布自己的包到 pypi ？](https://www.v2ai.cn/2018/07/30/python/1-pypi/)
