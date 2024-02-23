import 'dart:io';

void main(){
  exo();
}

void exo(){
  List<String> nomComplet = [];

  while(true){
    print('******** CHOSIR UNE OPTION ******');
    print('1 => Ajouter un nom ');
    print('2 => Voir les noms enregistrer: ');
    print('3 => Supprimer un nom enregistrer ');
    print('4 => Modifier un nom enregistrer ');
    print('a => Quitter ');
  

   String? choix = stdin.readLineSync();

  switch (choix) {
    case '1' :
    print('****** ENTRER LE NOM *****');
    String? nom = stdin.readLineSync();
    print('****** ENTRER LE PRENOM ****');
    String? prenom = stdin.readLineSync();
    if (nom != null && prenom != null){
      var nc = nom + ' ' + prenom ;
      nomComplet.add(nc);
    }
    else{
      print('***REESAYER***');
    }
    break;
    case '2':
      print('Noms enregistrés :');
       for (int i = 0; i < nomComplet.length; i++) {
       print('${i + 1}. ${nomComplet[i]}');
      }
    break;

    case '3' :
      print('Noms enregistrés :');
       for (int i = 0; i < nomComplet.length; i++) {
       print('${i + 1}. ${nomComplet[i]}');
      }
    print('Choisir l\'ID du nom à supprimer: ');
    int? id = int.tryParse(stdin.readLineSync()!);
    if (id != null && id > 0 && id <= nomComplet.length) {
      nomComplet.removeAt(id - 1);
      print('Nom supprimé avec succès !!!');
    }
    else{
      print('L\'ID n\'existe pas !!!');
    }
    break;
    case '4':
      print('Noms enregistrés :');
       for (int i = 0; i < nomComplet.length; i++) {
       print('${i + 1}. ${nomComplet[i]}');
      }
    print('Choisir l\'ID du nom à supprimer: ');
    int? id = int.tryParse(stdin.readLineSync()!);
    if (id != null && id > 0 && id <=nomComplet.length){
      print('Entrer le nouveau Nom:');
      String? nNom = stdin.readLineSync();
       print('Entrer le nouveau Prénom:');
      String? nprenom = stdin.readLineSync(); 
      if ( nNom != null   && nprenom != null){
      var nNomComplet = nNom + ' ' + nprenom ;
        nomComplet[id - 1 ] =  nNomComplet;
        print('Nom modifier avec succès !!!');
      }    
      else{
        print('Vérifier le texte entrer !!!');
      }
    }
    else{
      print('L\'ID n\'existe pas !!!');
    }

      
    case 'a' :
    print('***QUITTER***');
    return;
    default:
    print('REESAYER');
  }
}
}