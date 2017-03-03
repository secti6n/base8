NB. jal definitions
NB.%jal.ijs - jal utilities
NB.-This script defines jal utilities and is included in the J standard library.
NB.-Definitions are loaded into the z locale.

cocurrent 'z'

NB. =========================================================
NB.*install v call pacman install
NB.-Call pacman install
NB.-
NB.-If x not given or empty, then y is:
NB.- 'qtide'          - install the Qt IDE
NB.- 'all'            - install all jal packages
NB.-  package names   - install those packages
NB.-If x is 'jengine' - install the engine given in y
install=: 3 : 0
'' install y
:
require 'pacman'
x do_install_jpacman_ y
)

NB. =========================================================
NB.*getqtbin v get Qt binaries
NB.-Get Qt binaries.
NB.-
NB.-Always downloads the jqt binary.
NB.-
NB.-For the qt library (required for mac and win):
NB.- y is 0 - download if not present
NB.-      1 - always download
NB.-
NB.-For linux:
NB.-y is 'slim' for the slim binaries
NB.-
NB.-For windows:
NB.-y is 'angle' for the ANGLE binaries
getqtbin=: 3 : 0
if. (<UNAME) -.@e. 'Linux';'Darwin';'Win' do. return. end.
if. IFQT do.
  smoutput 'must run from jconsole' return.
end.
require 'pacman'
do_getqtbin_jpacman_ y
)
