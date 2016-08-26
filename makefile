gcc:
	sh /opt/intel/compilers_and_libraries_2016.3.170/mac/mkl/bin/mklvars.sh intel64
	gcc -m64 mkl_lab_solution.c -lmkl_intel -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm

intel:
	icc -m64 mkl_lab_solution.c -mkl -liomp5