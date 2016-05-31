# Set Environmental Variables
1. `cd /opt/intel/compilers_and_libraries_2016.3.170/mac/mkl/bin`
1. `./mklvars.sh intel64 verbose`
1. `nano ~/.bash_profile` : copy and paste the following : (SET Environment variables)
	export CPRO_PATH=/opt/intel//compilers_and_libraries_2016.3.170/mac
	export DYLD_LIBRARY_PATH=/opt/intel//compilers_and_libraries_2016.3.170/mac/tbb/lib:/opt/intel//compilers_and_libraries_2016.3.170/mac/compiler/lib:/opt/intel//compilers_and_libraries_2016.3.170/mac/mkl/lib
	export LIBRARY_PATH=/opt/intel//compilers_and_libraries_2016.3.170/mac/tbb/lib:/opt/intel//compilers_and_libraries_2016.3.170/mac/compiler/lib:/opt/intel//compilers_and_libraries_2016.3.170/mac/mkl/lib
	export NLSPATH=/opt/intel//compilers_and_libraries_2016.3.170/mac/mkl/lib/locale/%l_%t/%N
	export CPATH=/opt/intel//compilers_and_libraries_2016.3.170/mac/mkl/include
	export MKLROOT=$CPRO_PATH/mkl
	export MKLPATH=$MKLROOT/lib
	export MKLINCLUDE=$MKLROOT/include
1. `icc mkl_blas_lv1.cpp -L$MKLPATH -I$MKLINCLUDE -mkl`