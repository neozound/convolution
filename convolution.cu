#include <stdio.h>
#include <string.h>
#include <stdlib.h>


void cpu_conv1D(float *a, float *b, float *c, int size){
	int temp = 0;
        //If index less than 0 or more or equal than N, set 0 as the array element
	for (int i = 0; i < size; i++){
	    for (int j = -1; j < 2; j++){
                if ( ( i+j > 0 ) || ( i+j < size ) ){
                    temp += a[i+j]*b[i+j];
                }
            }
            c[i] = temp;
            temp = 0;  
	}
}

/*
void cpu_conv2D(float *
*/

void fillArray(float * m, int size, float v){
	for (int i = 0; i < size; i++){
		m[i] = v;
	}
}

void printArray(float *m, int size){
    for (int i = 0; i < size; i++){
        printf("%f ", m[i]);
    }
    printf("\n");
}

int main(int argc, char *argv[]){
	
	//set size as an integer number
	int size;
	//set a, b and c arrays
	float *a, *b, *c;
	if (argc == 2) {
		size = atoi(argv[1]);
        	printf("size: %d\n", size);		

		a = (float *) malloc(size*sizeof(float));
		b = (float *) malloc(size*sizeof(float));
		c = (float *) malloc(size*sizeof(float));
		
		
		/*
		Solo hacer multiplicaciones de elementos
		Que no se encuentren dentro de los límites 
		de los arreglos
		*/
		
		
		//llenar arreglo
		fillArray(a, size, 2);
		fillArray(b, size, 1);
		fillArray(c, size, 0);
	
        	printf("a: ");
        	printArray(a, size);
        	printf("b: ");
        	printArray(b, size);
        	printf("c: ");
        	printArray(c, size);
	
		cpu_conv1D(a,b,c,size);
        
        	printf("New c: ");
        	printArray(c, size);        
        
        	free(a);
        	free(b);
        	free(c);
	}
	
	
	return 0;
}

