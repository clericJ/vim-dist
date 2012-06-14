" run :so %

python << EOF

import vim
import os, hashlib
from functools import partial

bundles_dir = os.path.join(vim.eval('$VIM'), 'bundle')

def echo(color, text):
    vim.command("echohl {0} | echo '{1}' | echohl None".format(color, text))

# In my colorcheme
echo.red = partial(echo, 'Tag')
echo.blue = partial(echo, 'Structure')
echo.green = partial(echo, 'Define')
echo.normal = partial(echo, 'Normal')

for root, dirs, files in os.walk(bundles_dir):
    for dir_ in dirs:
        if dir_ == 'doc':
            doc_dir = os.path.join(root, dir_)
            tagsfile = os.path.join(doc_dir, 'tags')
            tags_hash = None
            if os.path.isfile(tagsfile):
                tags_hash = hashlib.md5()
                tags_hash.update(open(tagsfile, 'rb').read())
            try:
                vim.command('helptags {0}'.format(doc_dir))
            except vim.error:
                pass
            if os.path.isfile(tagsfile):
                if tags_hash is not None:
                    new_hash = hashlib.md5()
                    new_hash.update(open(tagsfile, 'rb').read())
                    if tags_hash.hexdigest() != new_hash.hexdigest():
                        echo.blue('[updated] ' + tagsfile)
                    else:
                        echo.normal('[already up-to-date] ' + tagsfile)
                else:
                    echo.green('[created] ' + tagsfile)
            else:
                echo.red('[create failed] ' + tagsfile)
EOF
