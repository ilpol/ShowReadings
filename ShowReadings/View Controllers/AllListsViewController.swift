import UIKit

class AllListsViewController: UITableViewController, UINavigationControllerDelegate {
  let cellIdentifier = "ReadingCell"
  var dataModel: DataModel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Загружаем пример данных
    dataModel.setDefaultReadings()
  }
  

  override func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {
    return dataModel.readings.count
  }

  
  override func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath
  ) -> UITableViewCell {
    let cell = UITableViewCell(
      style: .default,
      reuseIdentifier: cellIdentifier)
    let reading = dataModel.readings[indexPath.row]

    cell.textLabel!.text =  dataModel.dateToString(time: reading.time!) + ":   " + reading.reading!
    
    return cell
  }

}

