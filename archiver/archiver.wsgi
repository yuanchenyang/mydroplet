import sys
PATH = '/usr/local/apache2/htdocs/archiver/facebook-group-archiver'
sys.path.insert(0, PATH)
import viewer
application = viewer.app
viewer.DIR_ROOT = PATH
viewer.GROUP_ID = 'Hackers-at-Berkeley'
viewer.PROD = True
