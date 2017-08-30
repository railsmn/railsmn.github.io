
#!/bin/bash

sh build.sh

echo '**********************'
echo 'OPEN YOUR WEB BROWSER.'
echo 'GO TO THE FOLLOWING URL:'
echo 'http://localhost:4000'
echo '*********************'
echo '---------------------------------------'
echo 'bundle exec jekyll serve --host 0.0.0.0'
bundle exec jekyll serve --host 0.0.0.0
