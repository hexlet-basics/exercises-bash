FROM hexletbasics/base-image:latest

WORKDIR /exercises-bash

# https://github.com/pgrange/bash_unit
RUN cd /usr/local/bin && curl -s https://raw.githubusercontent.com/pgrange/bash_unit/master/install.sh | bash

COPY . .

ENV PATH=/exercises-bash/bin:$PATH

