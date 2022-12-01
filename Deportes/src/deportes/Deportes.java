/* Programa que lea N registros (nombre del deportista, edad, sexo
   y el deporte que practica 
   - Imprimir la cantidad de personas que practican baloncesto
   - Promedio de edad de las mujeres que practican futbol
   - Cantidad de hombres que practican Natacion*/
package deportes;
import java.util.Scanner;

public class Deportes {

    public static void main(String[] args) {
        // Definicion de objetos y variables
        Scanner objleer=new Scanner(System.in);
        String nombre,sexo,deporte;
        float prom_edad,acum_edad_futbol=0;
        int n,edad,cant_baloncesto=0,cont_futbol=0,cont_hombres_Natacion=0;
        
        //Lectura de la cantidad de deportistas
        System.out.print("Digite la cantidad de deportistas ");
        n=objleer.nextInt();
        for (int i = 1; i <= n; i++) {
            System.out.print("¿Cual es el nombre del deportista? ");
            nombre=objleer.nextLine();
            objleer.nextLine();
            System.out.print("¿Cual es la edad del deportista? ");
            edad=objleer.nextInt();
            System.out.print("¿Cual es el sexo del deportista? H:Hombre M:Mujer ");
            sexo=objleer.next();
            System.out.print("¿Cual es el deporte que practica? ");
            deporte=objleer.next();
            switch (deporte) {
                case "Baloncesto":
                    cant_baloncesto++;
                    break;
                case "Futbol": if (sexo.equals("M")){
                                  acum_edad_futbol+=edad;
                                  cont_futbol++;
                                }
                                break;
                case "Natacion":if (sexo.equals("H"))
                                    cont_hombres_Natacion++;
                                break;
                default:System.out.println("\n Deporte no valido");
                    break;
            } // fin caso     
        }//Fin para
        if (cont_futbol== 0)
            prom_edad=0;
        else
            prom_edad=acum_edad_futbol/cont_futbol;
        System.out.println("\n La cantidad de personas que practican baloncesto es " + cant_baloncesto);
        System.out.println("El promedio de edad de las mujeres de futbol es " + prom_edad);
        System.out.println("La cantidad de hombres de natacion es " + cont_hombres_Natacion);
      }
    } 

