//
//  RecetasViewController.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 29/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit
import SDWebImage

class RecetasViewController: UIViewController {
    
    internal var recipes:[Recipes] = []
    internal var recipesFiltered:[Recipes] = []
    let searchController = UISearchController(searchResultsController: nil)
    
    var name:String?
    
    @IBOutlet weak var recipeTable: UITableView!
    
    convenience init(recipes:[Recipes], name:String) {
        self.init()
        self.recipes = recipes
        self.name = name
        
    }
    
    private func registerCell(){
        
        let identificador = "recipeCell"
        
        let cellnib = UINib(nibName: "RecipeCell", bundle: nil)
        recipeTable.register(cellnib,forCellReuseIdentifier:identificador)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar ..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        title = "Recetas"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    internal func searchBarIsEmpty()->Bool{
        
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering()-> Bool{
        return searchController.isActive && !searchBarIsEmpty()
        
    }
    
    internal func filterContentForSearchText(_ searchText:String){
        
        recipesFiltered = recipes.filter({ (aRecipes: Recipes ) -> Bool in
            return (aRecipes.name.lowercased().contains(searchText.lowercased()))
        })
        recipeTable.reloadData()
    }
    
    



}
extension RecetasViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){
            return recipesFiltered.count
            
        }else{
        return recipes.count
        }
    }
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipeCell: RecipeCell = (recipeTable.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! RecipeCell)
        
        if isFiltering(){
            
                recipeCell.lblrecipe.text = recipesFiltered[indexPath.row].name
                recipeCell.lbldes.text = recipesFiltered[indexPath.row].des
            recipeCell.imgRecipe.sd_setImage(with:URL(string:recipesFiltered[indexPath.row].imgUrl), completed: nil)
            return recipeCell
            
            
        }else{
        let recipe = recipes[indexPath.row]
        
            recipeCell.lblrecipe.text = recipe.name
        recipeCell.imgRecipe.sd_setImage(with:URL(string:recipes[indexPath.row].imgUrl), completed: nil)
            
            recipeCell.lbldes.text = recipes[indexPath.row].des
            
            return recipeCell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if isFiltering(){
            let DataVC  = DataViewController(name: recipesFiltered[indexPath.row].name, img: recipesFiltered[indexPath.row].imgUrl, howTo: recipesFiltered[indexPath.row].howTo, dificulty: recipesFiltered[indexPath.row].dificulty, time:recipesFiltered[indexPath.row].time, des:recipesFiltered[indexPath.row].des,lat:recipesFiltered[indexPath.row].lat, lon:recipesFiltered[indexPath.row].lon)
            navigationController?.pushViewController(DataVC, animated: true)
        }else{
            
            let DataVC  = DataViewController(name: recipes[indexPath.row].name, img: recipes[indexPath.row].imgUrl, howTo: recipes[indexPath.row].howTo, dificulty: recipes[indexPath.row].dificulty, time:recipes[indexPath.row].time, des:recipes[indexPath.row].des ,lat:recipes[indexPath.row].lat, lon:recipes[indexPath.row].lon)
        navigationController?.pushViewController(DataVC, animated: true)
        }
    }
    
    
}
extension RecetasViewController:UISearchResultsUpdating{
    
    func updateSearchResults(for searchController: UISearchController) {
        
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
