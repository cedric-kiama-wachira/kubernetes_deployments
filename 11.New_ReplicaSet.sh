apiVersion: apps/v1
kind: ReplicaSet
metadata:
  creationTimestamp: "2023-12-01T09:31:02Z"
  generation: 2
  name: new-replica-set
  namespace: default
  resourceVersion: "1332"
  uid: 54406403-9bcb-4c1e-9dad-020a42f5a900
spec:
  replicas: 4
  selector:
    matchLabels:
      name: busybox-pod
  template:
    metadata:
      creationTimestamp: null
      labels:
        name: busybox-pod
    spec:
      containers:
      - command:
        - sh
        - -c
        - echo Hello Kubernetes! && sleep 7200
        image: busybox
        imagePullPolicy: Always
        name: busybox-container
        resources: {}
        terminationMessagePath: /dev/termination-log
        terminationMessagePolicy: File
      dnsPolicy: ClusterFirst
      restartPolicy: Always
      schedulerName: default-scheduler
      securityContext: {}
      terminationGracePeriodSeconds: 30
status:
  fullyLabeledReplicas: 4
  observedGeneration: 2
  replicas: 4