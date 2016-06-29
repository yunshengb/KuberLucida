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

mkdir /root/src
cd /root/src
wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar -zxvf Python-2.7.9.tgz
cd Python-2.7.9
mkdir /root/.localpython
./configure --prefix=/root/.localpython
make
make install
cd $LUCIDAROOT/speechrecognition/kaldi_gstreamer_asr
virtualenv python_ve -p /root/.localpython/bin/python2.7
source python_ve/bin/activate



kubectl delete -f imm-controller.yaml

kubectl create -f imm-controller.yaml


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