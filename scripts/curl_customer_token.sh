export INGRESS_GATEWAY=$(oc4 get route -n user1-smcp istio-ingressgateway -o 'jsonpath={.spec.host}')
TOKEN=$(curl https://raw.githubusercontent.com/istio/istio/release-1.1/security/tools/jwt/samples/demo.jwt -s)
while :; do curl --header "Authorization: Bearer $TOKEN" $INGRESS_GATEWAY -s ; done
