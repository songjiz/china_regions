## 如何使用

 1. 可以自己解析regions.yml文件, 层级结构 province > city > district

  ```json
    北京
      - 延庆县
      - 密云县
      - 平谷区
      ...
    福建省
      - 宁德市
          - 福鼎市
          - 福安市
          ...
      ...
  ```

  2. 可以运行2sql.rb生成sqlite数据库 
 
  ```shell
  bundle install
  ./2sql.rb
  ```

