gcloud docker push gcr.io/kuberlucida/lucida:20160603_6

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

sudo openssl x509 -in /etc/letsencrypt/live/host/cert1.pem -noout -subject


vim /etc/apache2/sites-available/000-default.conf


kubectl delete -f web-service.yaml

kubectl create -f web-service.yaml

kubectl delete -f web-controller.yaml

kubectl create -f web-controller.yaml

watch "kubectl get pod"


kubectl delete -f asrmaster-service.yaml

kubectl create -f asrmaster-service.yaml

kubectl delete -f asrmaster-controller.yaml

kubectl create -f asrmaster-controller.yaml

watch "kubectl get pod"


mkdir /root/src
cd /root/src
wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar -zxvf Python-2.7.9.tgz
cd Python-2.7.9
mkdir /root/.localpython2_7_9
./configure --prefix=/root/.localpython2_7_9
make
make install
cd $LUCIDAROOT/speechrecognition/kaldi_gstreamer_asr
virtualenv python_2_7_9 -p /root/.localpython2_7_9/bin/python2.7
source python_2_7_9/bin/activate
pip install tornado==4.3
mkdir -p /etc/letsencrypt/live/host



mkdir /root/src
cd /root/src
wget http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tgz
tar -zxvf Python-2.7.6.tgz
cd Python-2.7.6
mkdir /root/.localpython2_7_6
./configure --prefix=/root/.localpython2_7_6
make
make install
cd $LUCIDAROOT/speechrecognition/kaldi_gstreamer_asr
virtualenv python_2_7_6 -p /root/.localpython2_7_6/bin/python2.7
source python_2_7_6/bin/activate
pip install tornado==4.3
mkdir -p /etc/letsencrypt/live/host




kubectl create -f mongo-service.yaml
kubectl create -f asrmaster-service.yaml
kubectl create -f imm-service.yaml
kubectl create -f qa-service.yaml
kubectl create -f ca-service.yaml
kubectl create -f web-service.yaml

kubectl create -f mongo-controller.yaml
kubectl create -f asrmaster-controller.yaml
kubectl create -f asrworker-controller.yaml
kubectl create -f imm-controller.yaml
kubectl create -f qa-controller.yaml
kubectl create -f ca-controller.yaml
kubectl create -f web-controller.yaml


vim /etc/apache2/sites-available/000-default.conf

gcloud compute forwarding-rules list

kubectl get services

kubectl get pods

    filelist=$(ls)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            docker cp ${d} 334ccbd30589:/usr/local/lucida/lucida/questionanswering/OpenEphyra/info/ephyra/answerselection/filters/
        done
    fi