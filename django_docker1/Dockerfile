FROM centos
RUN yum update -y
RUN yum install -y python3 python3-pip httpd mod_wsgi
RUN ln /usr/bin/python3 /usr/bin/python
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade pip
WORKDIR /var/www/html
COPY ./requirements.txt /var/www/html
COPY ./djangotest /var/www/html
ADD script.sh /

RUN pip install -r requirements.txt

ADD ./django.conf  /etc/httpd/conf.d/django.conf
EXPOSE 80
CMD ["/script.sh"]
