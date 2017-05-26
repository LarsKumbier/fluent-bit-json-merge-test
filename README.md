# fluent-bit-json-merge-test
A test of the new Merge_JSON_Log functionality of fluent-bit 0.11.5+

This repository is tailored toward a minikube-created kubernetes-cluster. If you want to run it differently, make sure the appropriate volumes are loaded in pod.yml. Run [deploy.sh](./deploy.sh) for deploying or redeploying the test setup.

If I deploy this setup, I expect to see a merged json-message from the log-messages of json-containers, which you can check here:

`kubectl exec -it fluent-bit --tail -f /tmp/fluent-bit.log`

If you need a container that outputs json, you can deploy one here:

`kubectl apply -f talk-json-to-me.pod.yml`
