/*
 * igd.cpp
 *
 *  Created on: 26 Aug 2012
 *      Author: jduro
 */

#include <vector>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <cmath>

using namespace std;

vector <double> get_population(string filename);
int get_popsize(string filename);
double igd(vector <vector<double> > pof, vector <vector<double> > pop, int pof_popsize, int pop_popsize, int nobj);
double dist_vector(vector <vector<double> > pof, vector <vector<double> > pop, int pof_pop, int actual_pop, int nobj);

int main(int argc, char* argv[]) {

	int pof_popsize, pop_popsize;
	int k;
	int nobj;
	double d;
	vector <double> matrix;

    if(argc != 4) {
    	cerr << "Number of arguments incorrect!" << endl;
    	cerr << "Usage: " << argv[0] << " [number_objectives] [POF population] [Actual population]" << endl;
    	cerr << "Example: " << argv[0] << " 2 file1.out file2.out" << endl;
    	return -1;
    }

	nobj=atoi(argv[1]);
    string file1 = argv[2];
    string file2 = argv[3];

    pof_popsize=get_popsize(file1);
    pop_popsize=get_popsize(file2);
    /*cout << "Population size: " << popsize << endl;*/

    /*************************/
    /* 1) get POF population */
    /*************************/
    vector <vector<double> > pof;
    matrix=get_population(file1);
    k=0;
    for(int i=0; i<pof_popsize; i++) {
        vector <double> row(nobj,0.0);
        for(int j=0; j<nobj; j++) {
            row[j]=matrix[k];
            k++;
        }
        pof.push_back(row);
    }

    /****************************/
    /* 2) get actual population */
    /****************************/
    vector <vector<double> > pop;
    matrix=get_population(file2);
    k=0;
    for(int i=0; i<pop_popsize; i++) {
        vector <double> row(nobj,0.0);
        for(int j=0; j<nobj; j++) {
            row[j]=matrix[k];
            k++;
        }
        pop.push_back(row);
    }

    d=igd(pof,pop,pof_popsize,pop_popsize,nobj);
    printf("%e\n",d);

	return 0;
}

double igd(vector <vector<double> > pof, vector <vector<double> > pop, int pof_popsize, int pop_popsize, int nobj) {

	double distance;
	double d, min_d;

	distance=0.0;
	for(int i=0;i<pof_popsize;i++) {
		min_d=dist_vector(pof,pop,i,0,nobj);
		for(int j=1;j<pop_popsize;j++) {
			d=dist_vector(pof,pop,i,j,nobj);
			if(d<min_d) min_d=d;
		}
		distance+=min_d;
	}

	distance=distance/pof_popsize;

	return distance;
}

double dist_vector(vector <vector<double> > pof, vector <vector<double> > pop, int pof_pop, int actual_pop, int nobj) {

	double sum;

	sum = 0.0;
	for(int i=0;i<nobj;i++) {
		sum += pow((pof[pof_pop][i]-pop[actual_pop][i]),2.0);
	}
	sum=sqrt(sum);

	return sum;
}

vector <double> get_population(string filename) {

    vector<double> data;
    double temp = 0.0;

    ifstream my_file;
    my_file.open(filename.c_str(),ios::in);
    if(!my_file) {
        cout << "Unable to open file!"<< endl;
        exit(-1);
    }

    while(my_file >> temp) {
        data.push_back(temp);
    }
    my_file.close();

    return data;
}

int get_popsize(string filename) {

    fstream my_file;
    my_file.open(filename.c_str(),ios::in);
    if (!my_file) {
        cout << "Unable to open file!"<< endl;
        exit(-1);
    }

    string my_line;
    int rows;

    rows=0;
    while (getline(my_file,my_line)) {
        stringstream my_s(my_line);
        string my_token;
        while (getline(my_s,my_token,'\n'))
            ;
        rows++;
    }
    my_file.close();

    return rows;
}

