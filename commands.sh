gcloud docker push gcr.io/kuberlucida/lucida:20160603_6

    filelist=$(ls examples/nodesjs-mongodb/*-controller.yaml)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            kubectl delete -f ${d}
        done
    fi

    filelist=$(ls examples/nodesjs-mongodb/*-service.yaml)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            kubectl delete -f ${d}
        done
    fi

    filelist=$(ls examples/nodesjs-mongodb/*-service.yaml)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            kubectl create -f ${d}
        done
    fi

    filelist=$(ls examples/nodesjs-mongodb/*-controller.yaml)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            kubectl create -f ${d}
        done
    fi

gcloud compute forwarding-rules list

kubectl get services

kubectl get pods

    filelist=$(ls)
    if [ "${filelist}" != "" ]; then
        for d in ${filelist}; do
            echo "***** ${d}"
            kubectl delete -f ${d}
        done
    fi