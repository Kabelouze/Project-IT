$CSVFile = "C:\repertoire\fichier.csv" #Importe le fichier CSV
$CSVData = Import-CSV -Path $CSVFile -Delimiter "," -Encoding UTF8 #Permet la lecture des données du fichier CSV

#Boucle Foreach avec les variable permettant de filtrer les noms de poste
#Si les noms de poste dans le fichiers CSV existe dans l'AD le script ecrit sinon erreur
Foreach ($poste in $CSVData){

$postename = $poste.'WINS name'

if (Get-ADComputer -identity $postename)

{
Write-Warning "Le Poste $postename existe dans l'AD"
}

}