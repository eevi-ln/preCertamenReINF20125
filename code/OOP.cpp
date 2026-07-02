#include <bits/stdc++.h>

class SuperString{
	private:
		struct Nodo{
			Nodo* next;
			Nodo* prev;
			char curr;
		};

		Nodo* head;
		Nodo* curr;
		Nodo* tail;

		int size;
	public:
		// Constructor 
		SuperString();

		// Constructor sobrecard
		SuperString(std::string s);

		// Regla de tres:
		// Destructor
		~SuperString();

		// Constructor de Copia
		SuperString(SuperString otro);

		// Operador igual
		
		// Setter y Getter.
		// Solo se tienen los setter y getter indicados en esta linea
		int getSize();

		Nodo* getHead();

		void setHead(Nodo* head);

		// Cortar: Corta el superstring en la posición i (0-index). Todo contenido de i+1 en adelante es eliminado
		void cortar(int i);

		// Cortar: Sobrecarga 
		// Cortar: Corta el superstring en la posición i (0-index). Todo contenido de i+1 en adelante es guardado en otro
		void cortar(int i, SuperString ss);

		// Rotar
		// Da vuelta los contenidos del superString
		void Rotar();

		// Contiene
		// Recibe un SuperString y retorna true si este se encuentra dentro del SuperString actual
		bool Contiene(SuperString ss);
};
