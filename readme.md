# raspberrypiでKubernetesの基礎設定するAnsible

## 作業準備
以下のコマンドを実行する
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

以下コマンドでコピーを作成し、実行する
```
git clone https://github.com/karosuwindam/rpi-ansible-k8s.git
cd rpi-ansible-k8s
make kubernetes
```
