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