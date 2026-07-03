#include <iostream>
#include <vector>

void backtracking(const int& n, const std::vector<int>& original, std::vector<bool>& disponible, std::vector<int>& actual, int threshold, int& maximo, int& superiores)
{
	for(int i = 0; i < n && n - actual.size() >= maximo - superiores; i++)
	{
		if(disponible[i])
		{
			actual.push_back(original[i]);
			if(original[i] > original[actual.size()-1]) superiores++;
			disponible[i] = false;
			backtracking(n, original, disponible, actual, i+1, maximo, superiores);
			disponible[i] = true;
			if(original[i] > original[actual.size()-1]) superiores--;
			actual.pop_back();
		}
	}
	maximo = superiores > maximo ? superiores : maximo;
}

int solucion(const int& n, const std::vector<int>& numeros)
{
	std::vector<bool> disponible(n, true);
	std::vector<int> actual;
	int maximo = 0;
	int superiores = 0;
	backtracking(n, numeros, disponible, actual, 0, maximo, superiores);

	return maximo;
}

int main()
{
	int n;
	std::vector<int> numeros;

	std::cin >> n;
	int input;
	for(int i = 0; i < n; i++)
	{
		std::cin >> input;
		numeros.push_back(input);
	}
	std::cout << solucion(n, numeros);

	return 0;
}
