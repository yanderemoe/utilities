#!/bin/bash
#default ssl
if openssl x509 -checkend 432000 -noout -in /data/web/default/ssl/yandere.moe/cert.pem
then
	echo "Default certificate is good."
else
	/root/dehydrated -c -d yandere.moe -d www.yandere.moe -o /data/web/default/ssl/ -x
fi

#blog ssl
if openssl x509 -checkend 432000 -noout -in /data/web/blog/ssl/blog.yandere.moe/cert.pem
then
	echo "Blog certificate is good."
else
	/root/dehydrated -c -d blog.yandere.moe -o /data/web/blog/ssl/ -x
fi

#tools ssl
if openssl x509 -checkend 432000 -noout -in /data/web/tools/ssl/tools.yandere.moe/cert.pem
then
	echo "Tools certificate is good."
else
	/root/dehydrated -c -d tools.yandere.moe -o /data/web/tools/ssl/ -x
fi

systemctl reload httpd