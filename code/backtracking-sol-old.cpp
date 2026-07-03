#include <iostream>
#include <vector>

void backtracking(const int& n, const std::vector<int>& original, std::vector<bool>& disponible, std::vector<int>& actual, int threshold, int& maximo)
{
	if(actual.size() == n)
	{
		int superior = 0;
		for(int i = 0; i < n; i++)
		{
			if(actual[i] > original[i]) superior++;
		}
		maximo = (superior > maximo ? superior : maximo);
	}
	for(int i = 0; i < n; i++)
	{
		if(disponible[i] && n - actual.size() < maximo )
		{
			actual.push_back(original[i]);
			disponible[i] = false;
			backtracking(n, original, disponible, actual, i+1, maximo);
			disponible[i] = true;
			actual.pop_back();
		}
	}
}

int solucion(const int& n, const std::vector<int>& numeros)
{
	std::vector<bool> disponible(n, true);
	std::vector<int> actual;
	int maximo = 0;
	backtracking(n, numeros, disponible, actual, 0, maximo);

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
