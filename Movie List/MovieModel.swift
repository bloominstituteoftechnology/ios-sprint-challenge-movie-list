import UIKit


class MovieModel: NSObject, UITableViewDataSource, MovieTableViewCellDelegate {
    
    var movies: [Movie] = []
    
    
    func tappedSeenButton(on cell: MovieTableViewCell) {
//        guard let indexPath = tableView?.indexPath(for: cell)
//            else { fatalError("non-existent cell!!??")}
//
//        movies[indexPath.row].isSeen.toggle()
//        cell.isSeen = movies[indexPath.row].isSeen ? "Seen" : "Not Seen"
    }
    
    
    weak var tableView: UITableView?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    
    let reuseIdentifierCell = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCell) as? MovieTableViewCell else {
            fatalError("Could not instantiate guranteed cell type")
        }
        // code for cells interation.
        return cell
    }
    
    
    
}
