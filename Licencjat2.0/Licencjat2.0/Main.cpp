#include<iostream>
#include<algorithm>
#include<cmath>
#include<fstream>
#include<string>
#include <vector>
#include<random>

using namespace std;

class tANS {
private:
	int alphabet_size, R, L;
	double * prob;
	int * Ls, * symbol, * nbBits, * newX, *encodingTable;
	int const symbolsAmount;

	void spreadSymbol() {
		int x = 0;
		int step = 5 / 8 * L + 3;
		//int step = 5;

		for (int s = 0; s < alphabet_size; ++s) {
			for (int i = 1; i <= Ls[s]; ++i) {
				symbol[x] = s;
				x = (x + step) % L;
			}
		}
	}
	string negativeBinary(string number) {
		bool firts_one = false;
		string negative_number = "";

		for (int i = number.length() - 1; i > -1; --i) {

			if (number[i] == '1' && firts_one == false) {
				firts_one = true;
				negative_number += number[i];
			}
			else if (firts_one == true) {
				if (number[i] == '0') {
					negative_number += '1';
				}
				else {
					negative_number += '0';
				}
			}
			else {
				negative_number += number[i];
			}
		}

		reverse(negative_number.begin(), negative_number.end());

		return negative_number;

	}
	string toBinary(int n, int len, bool downto)
	{
		string r, result;
		int counter = 0;
		while (n != 0) {
			r = (n % 2 == 0 ? "0" : "1") + r;
			n /= 2;
			counter++;
		}

		for (int i = 0; i < len - counter; i++) {
			result += '0';
		}

		if (downto == true)
			result += r;
		else {
			std::reverse(r.begin(), r.end());
			result = r + result;

		}

		return result;
	}
	double * generateDistribution(int m) {

		random_device rd;
		mt19937 gen(rd());
		uniform_real_distribution<double> r{ 0, 1 };

		double * p = new double[m];
		double sum = 0, tmp;

		for (int i = 0; i < m; ++i) {
			tmp = r(gen);
			p[i] = tmp;
			sum += tmp;
		}

		for (int i = 0; i < m; ++i) {
			p[i] /= sum;
		}

		return p;
	}
	int whichSymbol(double point) {

		double whereWeAre = prob[0];
		int sym;

		for (int i = 1; i < alphabet_size; ++i) {
			if (point < whereWeAre) {
				return i - 1;
			}
			else {
				whereWeAre += prob[i];
			}
		}

		return alphabet_size - 1;
	}
	void generateData() {
		random_device rd;
		mt19937 gen(rd());
		uniform_real_distribution<double> r{ 0, 1 };

		ofstream out("C:/Users/tomas/Desktop/compression_tests/symbolsToEncode.txt");

		out << toBinary(R, 8, 1) << endl;
		out << toBinary(symbolsAmount, 18, 1) << endl;

		double tmp;

		for (int i = 0; i < symbolsAmount; ++i) {
			tmp = r(gen);
			out << toBinary(whichSymbol(tmp), 8, 1);

			if (i != symbolsAmount - 1)
				out << endl;
		}

		out.close();
	}
public:
	tANS(int alphabet_size_, double * prob_, int R_) : symbolsAmount(65536){
		
		alphabet_size = alphabet_size_;
		prob = prob_;
		R = R_;

		L = 1 << R;

		Ls = new int[alphabet_size];
		symbol = new int[L];
		newX = new int[L];
		nbBits = new int[L];
		encodingTable = new int[L];

		for (int i = 0; i < alphabet_size; ++i) {
			Ls[i] = prob[i] * L;
		}

		spreadSymbol();
		generateData();
	}

	tANS(int alphabet_size_, int R_) : tANS(alphabet_size_, generateDistribution(alphabet_size_), R_) {}

	void generateDecodingTables() {
		int temp;
		
		for (int x = 0; x < L; ++x) {
			temp = Ls[symbol[x]]++;
			nbBits[x] = R - floor(log2(temp));
			newX[x] = (temp << nbBits[x]) - L;
		}

		string * state = new string[L];
		string * nbBitsStr = new string[L];
		string * newXStr = new string[L];
		string * symbolStr = new string[L];


		for (int i = 0; i < alphabet_size; ++i)
			cout << Ls[i] << " ";
		cout << endl;

		for (int i = 0; i < L; ++i) {
			state[i] = toBinary(i + 16, 8, 1);
			nbBitsStr[i] = toBinary(nbBits[i], 8, 1);
			newXStr[i] = toBinary(newX[i], 8, 1);
			symbolStr[i] = toBinary(symbol[i], 8, 1);
		}

		saveToFile(state, "nbBitsRom", nbBitsStr, "nbBitsRomDecoder.vhd", L, 0);
		saveToFile(state, "newXRom", newXStr, "newXRomDecoder.vhd", L, 0);
		saveToFile(state, "symbolRom", symbolStr, "symbolRomDecoder.vhd", L, 0);
	}

	void generateEncodingTables() { 
		int* k = new int[alphabet_size];
		int* nb = new int[alphabet_size];
		int* start = new int[alphabet_size];
		
		int r = R + 1;

		for (int s = 0; s < alphabet_size; ++s) {
			k[s] = R - floor(log2(Ls[s]));
			nb[s] = (k[s] << r) - (Ls[s] << k[s]);
			start[s] = -Ls[s];

			for (int i = 0; i < s; ++i) {
				start[s] += Ls[i];
			}
		}

		int s;

		for (int x = L; x < 2*L; ++x) {
			s = symbol[x - L];
			encodingTable[start[s] + (Ls[s]++)] = x;
		}
		
		string * symbolStr = new string[alphabet_size];
		string * nbStr = new string[alphabet_size];
		string * startStr = new string[alphabet_size];
		string * encodingTableStr = new string[L];
		string * state = new string[L];
		

		for (int i = 0; i < alphabet_size; ++i) {
			symbolStr[i] = toBinary(i, 8, 1);
			
			nbStr[i] = toBinary(nb[i], 8, 1);

			startStr[i] = toBinary(start[i], 8, 1);

			if (start[i] < 0)
				startStr[i] = negativeBinary(startStr[i]);
		}

		for (int i = 0; i < L; ++i) {
			encodingTableStr[i] = toBinary(encodingTable[i], 8, 1);
			state[i] = toBinary(i, 8, 1);
		}
		
		saveToFile(symbolStr, "nbRom", nbStr, "nbRom.vhd", alphabet_size, 0);
		saveToFile(symbolStr, "startRom", startStr, "startRom.vhd", alphabet_size, 0);
		saveToFile(state, "encodingTableRom", encodingTableStr, "encodingTableRom.vhd", L, 0);
	}

	void saveToFile(string* symbols, string entityName, string* results, string filename, int len, bool toOrDownTo) {

		string header = "library IEEE; \nuse IEEE.STD_LOGIC_1164.ALL;\n\n";
		string to = "(0 to 7)";
		string downto = "(7 downto 0)";


		string entity = "entity " + entityName + " is\n";
		entity += "\tPort ( symbol : in STD_LOGIC_VECTOR" + (toOrDownTo ? downto : to) + ";\n";
		entity += "\t\tclk : in STD_LOGIC;\n";
		entity += "\t\tresult: out STD_LOGIC_VECTOR" + (toOrDownTo ? downto : to) + ");\n";
		entity += "end " + entityName + ";\n\n";

		string archirecture = "architecture behavioral of " + entityName + " is\n\n";
		archirecture += "begin\n\n";
		archirecture += "\tprocess(symbol, clk)\n";
		archirecture += "\tbegin\n\n";
		archirecture += "\t\tif(rising_edge(clk)) then\n\n";
		archirecture += "\t\t\tcase symbol is\n";

		for (int i = 0; i < len; i++) {
			string row = "when \"" + symbols[i] + "\" => result <= \"" + results[i] + "\";\n";
			archirecture += "\t\t\t\t" + row;
		}

		archirecture += "\t\t\t\twhen others => NULL; \n";
		archirecture += "\t\t\tend case;\n";
		archirecture += "\t\tend if;\n\n";
		archirecture += "\tend process;\n\n";
		archirecture += "end behavioral;\n";


		ofstream out(filename);
		out << header << entity << archirecture;
		out.close();

	}

};

void reverse_file(string file_in, string file_out) {

	string line = "";
	vector<string> tab;
	ifstream in(file_in);
	ofstream out(file_out);

	while (in >> line) {
		tab.push_back(line);
	}

	for (int i = tab.size() - 1; i > -1; --i) {
		out << tab[i];

		if (i != 0) {
			out << endl;
		}
	}

	out.close();
	in.close();
	
}

int main() {
	//double prob[] = { 3. / 16, 8. / 16, 5. / 16 };
	//double prob[] = { 3. / 4, 1. / 4 };

	//tANS T(3, prob, 4);
	
	//T.generateDecodingTables();
	//T.generateEncodingTables();

	reverse_file("C:/Users/tomas/Desktop/compression_tests/encode_out_test.txt", 
			"C:/Users/tomas/Desktop/compression_tests/to_decode.txt");

	reverse_file("C:/Users/tomas/Desktop/compression_tests/decode_out.txt",
	"C:/Users/tomas/Desktop/compression_tests/decode_out_rev.txt");

	//tANS T(10, 5);
	return 0;
}