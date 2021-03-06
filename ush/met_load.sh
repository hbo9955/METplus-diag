case $machine in
Hera)
. /apps/lmod/lmod/init/sh
module purge
module unload anaconda
module load intel/18.0.5.274
module load nco
module load wgrib
module load wgrib2
module load R
module use -a /contrib/anaconda/modulefiles
module load anaconda/latest
module use -a /contrib/met/modulefiles
module load met/9.0_anacondal
export PATH=${PATH}:/contrib/METplus/METplus-3.0/ush
module list
export METPLUS_PATH=/contrib/METplus/METplus-3.0
export MET_PATH=/contrib/met/9.0_anacondal
;;
Cheyenne)
source /etc/profile.d/modules.sh
module purge
module use /glade/p/ral/jntp/MET/MET_releases/modulefiles
module load met/9.0
module load python/3.6.8
module load nco
module load grib-bins/1.3
module load R
ncar_pylib
export PATH=${PATH}:/glade/p/ral/jntp/MET/METplus/METplus-3.0/ush
module list
export METPLUS_PATH=/glade/p/ral/jntp/MET/METplus/METplus-3.0
export MET_PATH=/glade/p/ral/jntp/MET/MET_releases/9.0
;;
*)
 echo "Platform not supported"
 exit 1 
;;
esac

