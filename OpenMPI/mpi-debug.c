#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
 
int main(argc,argv)
int argc;
char *argv[];

{
    int myid, numprocs;
    int tag, source, destination, count;
    int buffer;
    MPI_Status status;
 
    MPI_Init(&argc,&argv);
    MPI_Comm_size(MPI_COMM_WORLD,&numprocs);
    MPI_Comm_rank(MPI_COMM_WORLD,&myid);
    tag=1;
    source=0;
    destination=1;
    count=1;

/*  
    volatile int i = 0;
    char hostname[256];
    gethostname(hostname, sizeof(hostname));
    printf("PID %d on %s ready for attach\n", getpid(), hostname);
    fflush(stdout);
    while (0 == i)
        sleep(5);
*/

    if(myid == source){
      printf( "I am the root 0 process of the group (total %d).\n", numprocs );
      buffer=1729;
      MPI_Send(&buffer,count,MPI_INT,destination,tag,MPI_COMM_WORLD);
      printf("processor %d  sent %d\n",myid,buffer);
    }
    if(myid == destination){
	printf( "I am a subsidiary process %d of the group (total %d).\n", myid, numprocs );
        MPI_Recv(&buffer,count,MPI_INT,source,tag,MPI_COMM_WORLD,&status);
        printf("processor %d  received %d\n",myid,buffer);
    }
    MPI_Finalize();
}
