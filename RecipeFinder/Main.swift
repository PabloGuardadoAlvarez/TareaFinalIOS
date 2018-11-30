//
//  MainVC.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 28/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit


class MainVC: UIViewController {
    
    @IBOutlet weak var tableCategories: UITableView!
    
    internal var categories:[Categories] = []
    internal var recipesMeat:[Recipes] = []
    internal var recipesFish:[Recipes] = []
    internal var recipesVegetables:[Recipes] = []
    internal var recipesDesserts:[Recipes] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        loadData()
        title = "Categorias"
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    private func registerCell(){
        
        let identificador = "CategoryCell"
        
        let cellnib = UINib(nibName: "CategoryCell", bundle: nil)
        tableCategories.register(cellnib,forCellReuseIdentifier:identificador)
        
    }
    
    func loadData(){
        
        let meatBalls = Recipes(name: "albondigas", imgUrl:"https://www.rebanando.com/uploads/article/albondigas-bbq-f-jpg_crop.jpeg" , des: "Muy ricas y faciles de hacer", dificulty: "Easy", howTo: "Para hacer las albóndigas. Mezcla la leche con las migas de pan para que se ablanden. Ponlas en un bol junto con el huevo batido, la sal, la pimienta negra, el queso Parmesano y el perejil. Incorpora la carne, el diente de ajo y la cebolla picada. Utiliza las manos para amasar todos los ingredientes y formar una masa uniforme.",time:40,lat:32.08 ,lon:50)
        let iDontKnowHowToSayEntrecot = Recipes(name: "Entrecot", imgUrl:"https://imgix.bustle.com/rehost/2017/5/25/86dc3e78-9463-497c-be93-f0013516fe26.jpg?w=970&h=582&fit=crop&crop=faces&auto=format&q=70" , des: "Plato exquisito pero dificil de perfeccionar", dificulty: "Medium-High", howTo: "Hay 5 puntos de cocción de la carne. Os lo voy a explicar tomando como referencia un entrecot de unos 2,5 cm de grosor, lo normal que solemos consumir en nuestra casa. Los grados que os indico a continuación es por si disponéis de un termómetro de cocina.",time:120,lat:32.4 ,lon:9.27)
        let lasgna = Recipes(name: "Lasagna", imgUrl:"https://www.thewholesomedish.com/wp-content/uploads/2018/07/Best-Lasagna-550.jpg" , des: "Muy rica y Facil de hacer, pero te llevara un poco de timepo", dificulty: "Easy-Medium", howTo: "La lasaña de carne picada es una receta de esas de toda la vida que nunca falla. Gusta a mayores y a pequeños. Su elaboración, no es excepcionalmente difícil aunque, sí que hay que seguir una serie de pasos para realizarla.",time:135,lat:23 ,lon:12)
        let bacalaopilpil = Recipes(name: "Bacalao al PilPil", imgUrl:"https://www.miscosillasdecocina.com/wp-content/uploads/2014/02/bacalao-pilpil-e1491084486535.jpg" , des: "Plato muy bueno perfecto para una comida ligera", dificulty: "Easy", howTo: "Se trata de un plato muy fácil de hacer y que en esa sencillez radica el éxito que tiene, demostrando que no siempre hay que hacer complejas elaboraciones gastronómicas para conseguir un sabor excelente como sucede en este plato.",time:35,lat:4.17 ,lon:31)
        let salmonoven = Recipes(name: "Salmon al horno", imgUrl:"https://unareceta.com/wp-content/uploads/2017/02/salmon-al-horno-con-limon-640x427.jpg" , des: "Plato muy facil de hacer pero que requiere un poco de tiempo", dificulty: "Medium", howTo: "Comenzamos preparando una cama sobre la que vamos a asar el salmón. Para ello, picamos las patatas en rodajas de medio cm de grosor, el pimiento y la cebolleta en juliana y el tomate en rodajas finas. Distribuimos todas las hortalizas sobre la bandeja del horno, sazonamos y añadimos un poco de aceite de oliva, un poco de agua y un poco de vino blanco.",time:50,lat:3.4 ,lon:2.1)
        let pure = Recipes(name: "Pure de verduras", imgUrl:"https://www.lekue.com/wp/es/wp-content/uploads/sites/3/2017/02/iStock-535585200-600x400.jpg" , des: "Una receta que no solo es saludable sino que tambien sana", dificulty: "Easy", howTo: "Lava bien la verdura, pélala y córtala a trozos. Recuerda que cuanto más pequeña trocees la verdura, mejor, ya que necesitará menos tiempo de cocción y eso hará que conserve mejor todos los nutrientes.",time:120,lat:20.31 ,lon:7.53)
        let salted = Recipes(name: "Verduras Salteadas", imgUrl:"https://www.deliciosi.com/images/1000/1070/pollo-con-verduras.jpg" , des: "Recetas sencilla , ligera y muy buena", dificulty: "Easy", howTo: "Dependiendo del tipo de verdura va a necesitar unos cuidados previos, resumámoslo en lava, seca, pela y pica en trozos pequeños siempre que sea necesario. Hay salteados de verduras en los que se utiliza una verdura troceada más bien en pequeñito y otras, tipo wok, en las que son como bastones finos. ¡Escoge!",time:40,lat:7 ,lon:30.23)
        let IceCream = Recipes(name: "Helado de oreo", imgUrl:"https://placeralplato.com/files/2015/06/helado-de-vainilla-casero.jpg" , des: "Simplemente Helado, unos de los mejores postres", dificulty: "Medium-Hard", howTo: "Controlamos por completo todos los ingredientes y nos ahorramos estabilizantes, colorantes y aromas, solo necesarios porque los helados comerciales necesitan aguantar meses almacenados en supermercados y tiendas. Pero sobre todo nos ahorramos grasas poco saludables y baratas…",time:2,lat:8.3 ,lon:12.4)
        let cake = Recipes(name: "Tarta", imgUrl:"https://www.hogarmania.com/archivos/201402/5317-2-tarta-de-manzana-702-xl-668x400x80xX.jpg" , des: "Receta dificial pero que seguro que impresiona a tus amigos", dificulty: "High", howTo: "El café irlandés tiene su origen en Irlanda allá por el 1940 y debido al frío que hacía se le ocurrió a un tal Joe Sheridan, en el retraso de un vuelo y para calentar a los pasajeros no se le ocurrió nada mejor que añadirle whisky al café, si llega a saber el juego que ha dado su ocurrencia..., es más se dice que el Baileys está basado en esta combinación...",time:200,lat:15.23 ,lon:31.23)
        let flan = Recipes(name: "Flan", imgUrl:"https://www.malsalvaje.com/wp-content/uploads/2018/08/flan.jpg" , des: "Receta facil y rapida", dificulty: "Easy-Medium", howTo: "El flan de huevo es uno de esos postres socorridos a más no poder y al que nadie dice que no porque suele gustar a todo el mundo. Te enseño a preparar el clásico flan de huevo y todos los trucos para cocinarlo en olla a presión o convencional, al horno o al microondas. Si sigues todos mis consejos, te va a quedar perfecto. Ten en cuanta todos los detalles para prepararlo, la",time:30,lat:3.4 ,lon:2.1)
        let fruta = Recipes(name: "Fruta", imgUrl:"https://ep01.epimg.net/elpais/imagenes/2018/06/08/ciencia/1528469553_586735_1528470520_noticia_normal.jpg" , des: "La fruta nunca disgusta", dificulty: "Easy", howTo: "Simplemente acercate a tu fruteria de confianza y coge la que mas te guste, imposible hacerlo mal",time:10,lat:12 ,lon:7.23)
        
        recipesMeat.append(meatBalls)
        recipesMeat.append(iDontKnowHowToSayEntrecot)
        recipesMeat.append(lasgna)
        recipesFish.append(bacalaopilpil)
        recipesFish.append(salmonoven)
        recipesVegetables.append(pure)
        recipesVegetables.append(salted)
        recipesDesserts.append(IceCream)
        recipesDesserts.append(cake)
        recipesDesserts.append(flan)
        recipesDesserts.append(fruta)
        
        let key1 = Categories(name: "Meat", imgUrl: "Meat", recipes: recipesMeat)
        let key2 = Categories(name:"Pescados", imgUrl:"Fish" , recipes:recipesFish)
        let key3 = Categories(name:"verduras", imgUrl:"Vegetables" , recipes:recipesVegetables)
        let key4 = Categories(name:"Postres", imgUrl:"Desserts" , recipes:recipesDesserts)
        
        categories.append(key1)
        categories.append(key2)
        categories.append(key3)
        categories.append(key4)
       
    }
    
    

}
extension MainVC : UITableViewDelegate,UITableViewDataSource{
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return categories.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell : CategoryCell = (tableCategories.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell)
            let category = categories[indexPath.row]
            cell.lblCategoryCell.text = category.name
            cell.lblRecipesCount.text = "\(category.recipes.count)"
            cell.imgCategoryCell.image = UIImage(named: category.imgUrl)
            return cell
            
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recetasVC  = RecetasViewController(recipes: categories[indexPath.row].recipes, name: categories[indexPath.row].name)
        navigationController?.pushViewController(recetasVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
        
    }

