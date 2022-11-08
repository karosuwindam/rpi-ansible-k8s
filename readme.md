# raspberrypiでKubernetesの基礎設定するAnsible

## 作業準備
以下のコマンドを実行して置く
```
sudo apt update && sudo apt upgrade -y && sudo apt install make curl git ansible -y
```

以下コマンドでkeyを作成
```
ssh-keygen
```

以下のコマンドでKeyをコピーする
```
ssh-copy-id localhost
```

以下のコマンドで、実行する
```
make install
```