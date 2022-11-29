# raspberrypiでKubernetesの基礎設定するAnsible

## 作業準備
以下のコマンドを実行する
```
sudo apt update && sudo apt upgrade -y && sudo apt install make curl git ansible -y
```

以下コマンドでkeyを作成
```
ssh-keygen -q  -t rsa -b 4096 -C '' -N '' -f id_rsa
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

containerdをセットアップする
```
make containerd
```


containerdによるkubernetesマスターの初期化
```
sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --cri-socket /var/run/containerd/containerd.sock --token-ttl 0
```

flannelの適用
```
kubectl apply -f https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-
flannel.yml
```