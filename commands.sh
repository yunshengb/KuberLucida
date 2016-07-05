# Set up a local cluster via docker on a single machine.
export K8S_VERSION=v1.2.5
export ARCH=amd64
docker run -d \
--volume=/:/rootfs:ro \
--volume=/sys:/sys:rw \
--volume=/var/lib/docker/:/var/lib/docker:rw \
--volume=/var/lib/kubelet/:/var/lib/kubelet:rw \
--volume=/var/run:/var/run:rw \
--net=host \
--pid=host \
--privileged \
gcr.io/google_containers/hyperkube-${ARCH}:${K8S_VERSION} \
/hyperkube kubelet \
    --containerized \
    --hostname-override=127.0.0.1 \
    --api-servers=http://localhost:8080 \
    --config=/etc/kubernetes/manifests \
    --cluster-dns=10.0.0.10 \
    --cluster-domain=cluster.local \
    --allow-privileged --v=2
curl -sSL "http://storage.googleapis.com/kubernetes-release/release/v1.2.0/bin/linux/amd64/kubectl" > /usr/bin/kubectl
chmod +x /usr/bin/kubectl
kubectl config set-cluster test-doc --server=http://localhost:8080
kubectl config set-context test-doc --cluster=test-doc
kubectl config use-context test-doc
echo "Exiting... Wait until 'kubectl get pod' does not give error. Then copy and run the rest of this script."
exit

# Before going on, make sure the cluster is set up.
kubectl describe node

filelist=$(ls *-controller.yaml)
if [ "${filelist}" != "" ]; then
    for d in ${filelist}; do
        echo "***** ${d}"
        kubectl delete -f ${d}
    done
fi

filelist=$(ls *-service.yaml)
if [ "${filelist}" != "" ]; then
    for d in ${filelist}; do
        echo "***** ${d}"
        kubectl delete -f ${d}
    done
fi

filelist=$(ls *-service.yaml)
if [ "${filelist}" != "" ]; then
    for d in ${filelist}; do
        echo "***** ${d}"
        kubectl create -f ${d}
    done
fi

filelist=$(ls *-controller.yaml)
if [ "${filelist}" != "" ]; then
    for d in ${filelist}; do
        echo "***** ${d}"
        kubectl create -f ${d}
    done
fi

sudo netstat -tulpn | grep 27017 # kill existing mongo instance

kubectl get services

watch "kubectl get pod"






# Unrelated stuff.

# mkdir /root/src
# cd /root/src
# wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
# tar -zxvf Python-2.7.9.tgz
# cd Python-2.7.9
# mkdir /root/.localpython2_7_9
# ./configure --prefix=/root/.localpython2_7_9
# make
# make install
# cd $LUCIDAROOT/speechrecognition/kaldi_gstreamer_asr
# virtualenv python_2_7_9 -p /root/.localpython2_7_9/bin/python2.7
# source python_2_7_9/bin/activate
# pip install tornado==4.3
# mkdir -p /etc/letsencrypt/live/host



# mkdir /root/src
# cd /root/src
# wget http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tgz
# tar -zxvf Python-2.7.6.tgz
# cd Python-2.7.6
# mkdir /root/.localpython2_7_6
# ./configure --prefix=/root/.localpython2_7_6
# make
# make install
# cd $LUCIDAROOT/speechrecognition/kaldi_gstreamer_asr
# virtualenv python_2_7_6 -p /root/.localpython2_7_6/bin/python2.7
# source python_2_7_6/bin/activate
# pip install tornado==4.3
# mkdir -p /etc/letsencrypt/live/host


# kubectl create -f mongo-service.yaml
# kubectl create -f asrmaster-service.yaml
# kubectl create -f imm-service.yaml
# kubectl create -f qa-service.yaml
# kubectl create -f ca-service.yaml
# kubectl create -f web-service.yaml

# kubectl create -f mongo-controller.yaml
# kubectl create -f asrmaster-controller.yaml
# kubectl create -f asrworker-controller.yaml
# kubectl create -f imm-controller.yaml
# kubectl create -f qa-controller.yaml
# kubectl create -f ca-controller.yaml
# kubectl create -f web-controller.yaml
