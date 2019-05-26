//
//  FileViewController.swift
//  Student Check In
//
//  Created by Don Loi on 26/5/19.
//  Copyright © 2019 Don Loi. All rights reserved.
//

import UIKit


class FileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var fileTableView: UITableView!
    
    //Store the original set of files
    var files: [File] = []
    //Store the files to display on the tableview
    var filteredFiles: [File] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filteredFiles.append(File(fileName: "123", referenceToFile: "123"))
        filteredFiles.append(File(fileName: "123", referenceToFile: "123"))
        filteredFiles.append(File(fileName: "123", referenceToFile: "123"))
        filteredFiles.append(File(fileName: "123", referenceToFile: "123"))
        filteredFiles.append(File(fileName: "123", referenceToFile: "123"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredFiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let file = filteredFiles[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "fileCell", for: indexPath) as! FileTableViewCell
        //Store the row as a tag so we know what to download
        cell.fileDownloadButton.tag = indexPath.row
        cell.fileDownloadButton.addTarget(self, action: #selector(downloadFile(sender:)), for: .touchUpInside)
        cell.fileNameLabel.text = file.fileName
        
        return cell
    }
    
    /// Downloads a file based on the button pressed
    ///
    /// - Parameter sender: the UIButton that was pressed
    @objc func downloadFile(sender: UIButton) {
        let fileReference: String? = "https://www.coinstar.com/wp-content/uploads/2018/05/xamazon-cash-banner.jpg.pagespeed.ic.1zHHnBTAtf.jpg" //filteredFiles[sender.tag].referenceToFile
        if let url = fileReference {
            downloadFileFrom(url: url, name: "test", extensionType: "jpg")
        }
    }
    
    func downloadFileFrom(url: String, name: String, extensionType: String) {
        if let dataUrl = URL(string: url) {
            let sessionConfig = URLSessionConfiguration.default
            let session = URLSession(configuration: sessionConfig)
            let request = URLRequest(url: dataUrl)
            
            let downloadTask = session.downloadTask(with: request, completionHandler: { (writenToURL, response, error) in
                if let writenToURL = writenToURL, error == nil {
                    do {
                        if let imageData = try UIImage(data: Data(contentsOf: writenToURL)) {
                            UIImageWriteToSavedPhotosAlbum(imageData, nil, nil, nil)
                        }
                    } catch {
                        
                    }
                } else {
                    print("An error has occured... \(error?.localizedDescription)")
                }
            })
            downloadTask.resume()
        } else {
            //A file with the same name and extension alread yexists
        }
    
    }
}
