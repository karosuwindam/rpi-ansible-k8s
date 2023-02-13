

`bootcmd`で`systemd.unified_cgroup_hierarchy=0`のオプションを追加しないとcgroup v1がmountされないので、1.22ではkubeletがコンテナのデータを取得できない。