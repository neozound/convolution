#include <stdio.h>
#include <string.h>
#include <stdlib.h>


void cpu_Conv1D(float *a, float *b, float *c, int size){
	//If index less than 0 or more or equal than N, set 0 as the array element
	if (index < 0){
	}
}


void llenarArray(float * m, int x, float v){
	for (int i = 0; i < x; i++){
		m[i] = v;
	}
}

int main(int argc, char *argv[]){
	
	//set size as an integer number
	int size;
	//set a, b and c arrays
	float *a, *b, *c;
	
	if (argc != 2) {
		size = atoi(argv[1]);
		
		a = (float *) malloc(size*sizeof(float));
		b = (float *) malloc(size*sizeof(float));
		c = (float *) malloc(size*sizeof(float));
		
		
		/*
		Solo hacer multiplicaciones de elementos
		Que no se encuentren dentro de los límites 
		de los arreglos
		*/
		
		
		//llenar arreglo
		llenarArray(a, size, 2);
		llenarArray(b, size, 1);
		llenarArray(c, size, 0);
		
	    cpu_Conv1D(a,b,c,size);
	}
	
	return 0;
}

